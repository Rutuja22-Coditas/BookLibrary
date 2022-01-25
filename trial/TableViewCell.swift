
import UIKit

class TableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, PassCheckMarkAction{
    
    @IBOutlet weak var collectionView: UICollectionView!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "collVCell")
        self.collectionView.layoutIfNeeded()
        self.collectionView.setNeedsLayout()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override func prepareForReuse() {
    }

//MARK:- collectionView datasource properties
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayOfData[collectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "collVCell", for: indexPath) as! CollectionViewCell
        
        let common = arrayOfData[collectionView.tag].imageGallery[indexPath.item]
        if common.checkMark == false{
            cell.imageView.image = UIImage(named: common.image)
            cell.label1.text = common.title1
            cell.label2.text = common.title2
            cell.index = indexPath.item
            cell.delegate = self
            cell.checkBox.setImage(UIImage(systemName: ""), for: .normal)
        }
        return cell
    }
//MARK:- Checkmark button action.
    func CheckmarkAction(flag: Bool, indexPath: Int) {
        arrayOfData[collectionView.tag].imageGallery[indexPath].checkMark = flag
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //collectionView.reloadData()
        return CGSize(width: collectionView.frame.width/2, height: collectionView.frame.height/2)
    }
    
//MARK:- collectionView delegate properties.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 5, bottom: 5, right: 5)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
  

}
