//
//  NewsViewCell.swift
//  NewsReader
//
//  Created by Sulthon on 02/05/23.
//

import UIKit

protocol NewsViewCellDelegate: AnyObject {
    func newsViewCellBookmarkButtonTapped(_ cell: NewsViewCell)
}

class NewsViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var bookmarkLabel: UIButton!
    
    weak var delegate: NewsViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setup() {
        thumbImageView.layer.cornerRadius = 9
        thumbImageView.layer.masksToBounds = true
    }

    @IBAction func bookmarkButtonTapped(_ sender: Any) {
        delegate?.newsViewCellBookmarkButtonTapped(self)
    }
    
}
