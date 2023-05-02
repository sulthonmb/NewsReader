//
//  TopNewsViewCell.swift
//  NewsReader
//
//  Created by Sulthon on 02/05/23.
//

import UIKit

class TopNewsViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup() {
        thumbImageView.layer.cornerRadius = 8
        thumbImageView.layer.masksToBounds = true
    }
}
