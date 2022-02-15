//
//  GafaTableViewCell.swift
//  SampleCode-XibTableView
//
//  Created by 近藤米功 on 2022/02/15.
//

import UIKit

class GafaTableViewCell: UITableViewCell {

    @IBOutlet weak var gafaLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
