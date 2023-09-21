//
//  GalleryCollectionViewCell.swift
//  MyProfile
//
//  Created by t2023-m0059 on 2023/09/20.
//

import Foundation
import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    static let identifier = "GalleryCollectionViewCell"
    
    private let imageViewSize: CGFloat = 100
    
    private let galleryImageView: UIImageView = {
//        let imageView = UIImageView(image: UIImage(systemName: "person.circle.fill"))
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        
        imageView.backgroundColor = .white
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUI()
        setConstraint()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUI()
        setConstraint()
    }
    
    private func setUI() {
        addSubview(galleryImageView)
    }
    
    private func setConstraint() {
        NSLayoutConstraint.activate([
            galleryImageView.topAnchor.constraint(equalTo: topAnchor),
            galleryImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            galleryImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            galleryImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
    
    func configure(with image: String) {
        galleryImageView.image = UIImage(named: image)
    }
}
