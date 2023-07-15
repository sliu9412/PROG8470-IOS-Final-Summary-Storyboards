//
//  MyTableViewCell.swift
//  Siyu_Liu_FE_8859412
//
//  Created by user on 2023-04-04.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet var LabNumberLabel: UILabel!
    @IBOutlet var LabDescriptionLabel: UILabel!
    @IBOutlet var LabIcon: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
