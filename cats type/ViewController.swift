
import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate {

    var listofcats = [catss]()
    
    @IBOutlet weak var cvlistofcats: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
               loadcatsfromplist()
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listofcats.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cellcat:catsvcell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! catsvcell
        cellcat.setcat(cat: listofcats [indexPath.row])
        return cellcat
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "showdetails", sender: listofcats[indexPath.row])
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "showdetails" {
        
        if let dis3 = segue.destination as? VCcatsdetails {
            
            
            if let pcat = sender as? catss {
                
                dis3.pcat = pcat

            }
        }
    }
    
    }
    
    
    func loadcatsfromplist() {
    
    let path = Bundle.main.path(forResource: "plcats", ofType: "plist")! as String
        let url = URL(fileURLWithPath: path)
        
        do{
            
            let data = try Data(contentsOf:url)
            let plist2 = try  PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
            let dicarray = plist2 as! [[String:String]]
            for cat in dicarray {
                
                listofcats.append(catss(name: cat["Name"]!, des: cat["Des"]! , image: cat ["Image"]!))
                
            }
            
            
        }catch {
    
            print("can't read file")
        
        }

}

}
