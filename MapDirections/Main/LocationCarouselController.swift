//
//  LocationCarouselController.swift
//  MapDirections
//
//  Created by Ramill Ibragimov on 02.11.2020.
//

import UIKit
import LBTATools
import MapKit

class LocationCell: LBTAListCell<MKMapItem> {
    
    override var item: MKMapItem! {
        didSet {
            label.text = item.name
        }
    }
    
    let label = UILabel(text: "Location", font: .boldSystemFont(ofSize: 16))
    let addressLabel = UILabel(text: "Address", numberOfLines: 0)
    
    override func setupViews() {
        backgroundColor = .white
        
        setupShadow(opacity: 0.2, radius: 5, offset: .zero, color: .black)
        layer.cornerRadius = 5
        clipsToBounds = false
        
        hstack(stack(label, addressLabel, spacing: 12).withMargins(.allSides(16)),
               alignment: .center)
    }
}

class LocationsCarouselController: LBTAListController<LocationCell, MKMapItem> {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 64, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.clipsToBounds = false
        collectionView.backgroundColor = .clear
    }
}

extension LocationsCarouselController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 64, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
}
