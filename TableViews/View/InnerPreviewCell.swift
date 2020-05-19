//
//  InnerPreviewCell.swift
//  TableViews
//
//  Created by Mezut on 19/05/2020.
//  Copyright © 2020 Mezut. All rights reserved.
//

import UIKit

class InnerPreviewCell: UICollectionViewCell {
    
    var previewData: VideoData? {
        didSet{
            guard let previewImageURL = previewData?.videoURL else {return}
            previewImage.loadImage(urlString: previewImageURL)
        }
    }
    
    var previewImage: CustomImageView =  {
        let image = CustomImageView()
        image.contentMode = .scaleAspectFit
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupLayout()
    }
    
    func setupLayout(){
        addSubview(previewImage)
        
        NSLayoutConstraint.activate([
            previewImage.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 50),
            previewImage.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 8),
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
