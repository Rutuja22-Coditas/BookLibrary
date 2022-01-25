
import UIKit
protocol PassCheckMarkAction {
    func CheckmarkAction(flag : Bool, indexPath : Int)
}

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var checkBox: UIButton!
    @IBOutlet weak var checkmarkImg: UIImageView!
    
    var flag = false
    var index : Int?
    var buttonTap : (()->())?
    var delegate : PassCheckMarkAction?
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
  
    @IBAction func checkBoxButtnClk(_ sender: UIButton) {
        if flag == false{
            flag = true
            checkBox.setImage(UIImage(systemName: "checkmark"), for: .normal)
            delegate?.CheckmarkAction(flag : flag, indexPath: (index!))
            return
               }
               else{
                if flag == true{
                    flag = false
                    checkBox.setImage(UIImage(systemName: "", withConfiguration: largeContentImage?.configuration), for: .normal)
                    delegate?.CheckmarkAction(flag : flag, indexPath: (index!))
                }
               }
        }

    override func awakeFromNib() {
        super.awakeFromNib()
        checkBox.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        checkBox.layer.borderWidth = 1.5
    }

}
