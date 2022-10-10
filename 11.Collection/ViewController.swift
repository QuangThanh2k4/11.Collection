//
//  ViewController.swift
//  11.Collection
//
//  Created by Quang Thanh on 02/10/2022.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout  {
  
  
  
  
  @IBOutlet weak var collectionView: UICollectionView!
  let foodName:[String] = ["Asia", "Dessert", "FastFood", "Vietname", "Shushi", "Sandwhich", "Sandwhich", "Sandwhich", "Sandwhich"]
  let foodImage:[String] = ["food1", "food2", "food3", "food4", "food5", "food6", "food6", "food6", "food6"]
  let foodLocation:[String] = ["128 places", "136 places", "135 places", "163 places", "128 places", "231 places", "136 places", "136 places", "136 places"]
  let insetsSession = UIEdgeInsets(top: 97, left: 23, bottom: 97, right:
                                    23)
  let itemsPerRow: CGFloat = 2.0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    collectionView.dataSource = self
    collectionView.delegate = self
  }
 
  func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
    foodName.count
  }
 
  func collectionView(_ collectionView: UICollectionView, cellForItemAt
                      indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier:
                                                    "cell", for: indexPath) as! CollectionViewCell
    cell.labelAsia.text = foodName[indexPath.row]
    cell.imageView.image = UIImage(named: foodImage[indexPath.row])
    cell.labelPlace.text = foodLocation[indexPath.row]
    return cell
  }
  
  func collectionView(_ collectionView: UICollectionView, layout
                      collectionViewLayout: UICollectionViewLayout, sizeForItemAt
                      indexPath: IndexPath) -> CGSize {
    let screenWidth = UIScreen.main.bounds.width - 10
    return CGSize(width: screenWidth/3, height: (screenWidth/3)*5/4)

  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 5
  }
}







