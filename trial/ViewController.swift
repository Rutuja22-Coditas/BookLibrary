

import UIKit

var imageArray = [UIImage]()
class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate, deleteButton {
    
    @IBOutlet weak var tableView: UITableView!
    var arrayOfImgFrmGallery = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CustomHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CustomHeaderView")
        tableView.register(UINib(nibName: "CustomFooterView", bundle: nil), forHeaderFooterViewReuseIdentifier: "CustomFooterView")
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayOfData.count
    }
//MARK:- Tableview datasource properties
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.collectionView.tag = indexPath.section
        cell.collectionView.reloadData()
        cell.collectionView.setNeedsLayout()
        cell.collectionView.layoutIfNeeded()
        return cell
    }
 
//MARK:- Setup for headerView, footerView and their button actions.
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomHeaderView") as! CustomHeaderView
        headerView.deleteButton.isHidden = false
        headerView.headerLabel.text = arrayOfData[section].sectionTitle
        headerView.layer.borderColor = UIColor.black.cgColor
        headerView.layer.borderWidth = 2.0
        headerView.delegateOfDelete = self
        headerView.section = section
        headerView.addButton.addTarget(self, action: #selector(addImage), for: .touchUpInside)
        if headerView.deleteButton.isHidden == true{
            headerView.deleteButtnWidthConst.constant = 0
        }
        else{
            headerView.deleteButtnWidthConst.constant = 106
        }
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60
    }
    
    func deleteButtonTapped(indexPath: Int) {
        let alert = UIAlertController(title: "Delete", message: "Do you want to delete the content?", preferredStyle: .alert)
        var deleteCount = 0
        for i in arrayOfData[indexPath].imageGallery{
            if i.checkMark==true{
                deleteCount += 1
            }
        }
        if deleteCount == 0{
            showAlert()
        }
        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { action in
            var count = 0
            for i in arrayOfData[indexPath].imageGallery{
                if i.checkMark == true{
                    arrayOfData[indexPath].imageGallery.remove(at: count)
                    count -= 1
                }
                count += 1
            }
            self.tableView.reloadData()
        }))

        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        present(alert, animated: true)
    }

    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = (info[UIImagePickerController.InfoKey.originalImage] as? UIImage){
            imageArray.append(pickedImage) 
        }
        dismiss(animated: true, completion: nil)
        
        arrayOfImgFrmGallery.append(["image1":info[UIImagePickerController.InfoKey.originalImage]!])
        print("arrayOfImgFrmGallery",arrayOfImgFrmGallery)
    }
//
    @objc func addImage(){
        let openGallery = UIImagePickerController()
        openGallery.delegate = self
        openGallery.sourceType = .photoLibrary
        self.present(openGallery, animated: true, completion: nil)
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerV = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CustomFooterView") as! CustomFooterView
        footerV.footerLabel.text = arrayOfData[section].sectionTitle + " collection End"
        return footerV
    }
  
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat { 
        return 60
    }
//MARK:- Row size
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        350
    }
    func showAlert(){
        let alert = UIAlertController(title: "No data!", message: "Please select valid data", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
