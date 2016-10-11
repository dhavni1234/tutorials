//
//  TableViewCell.swift
//  TableViewApplication
//
//  Created by Aaron on 03/08/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var CellImage: UIImageView!
    @IBOutlet weak var CellTitle: UILabel!
    @IBOutlet weak var CellDescription: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
