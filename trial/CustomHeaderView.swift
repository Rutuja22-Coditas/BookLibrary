

import UIKit

protocol deleteButton {
    func deleteButtonTapped(indexPath: Int)
}
class CustomHeaderView: UITableViewHeaderFooterView {
    
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var deleteButtnWidthConst: NSLayoutConstraint!
    
    var section : Int?
    var delegateOfDelete : deleteButton?
    @IBAction func deleteButtnPressed(_ sender: UIButton) {
        delegateOfDelete?.deleteButtonTapped(indexPath: section!)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    
   
}
