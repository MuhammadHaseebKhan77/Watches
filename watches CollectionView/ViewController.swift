
import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    var arrimg=[UIImage(imageLiteralResourceName: "watch1"),
                UIImage(imageLiteralResourceName: "watch2"),
                UIImage(imageLiteralResourceName: "watch3"),
                UIImage(imageLiteralResourceName: "watch4"),
                UIImage(imageLiteralResourceName: "watch5"),
                UIImage(imageLiteralResourceName: "watch6"),
                UIImage(imageLiteralResourceName: "watch7"),
                UIImage(imageLiteralResourceName: "watch8"),
                UIImage(imageLiteralResourceName: "watch9"),
                UIImage(imageLiteralResourceName: "watch10"),
                UIImage(imageLiteralResourceName: "watch11"),
                UIImage(imageLiteralResourceName: "watch12")]
    
    var arrlabel=["watch1","watch2","watch3","watch4","watch5","watch6","watch7","watch8","watch9","watch10","watch11","watch12"]

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //ui collection view cell
        let cell:CollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image=arrimg[indexPath.row]
        cell.label.text=arrlabel[indexPath.row]
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height/3)
    }
}

