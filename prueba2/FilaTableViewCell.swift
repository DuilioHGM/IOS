//
//  FilaTableViewCell.swift
//  prueba2
//
//  Created by ADMINISTRADORUTM on 05/12/16.
//  Copyright © 2016 ADMINISTRADORUTM. All rights reserved.
//

import UIKit

class FilaTableViewCell: UITableViewCell {

    @IBOutlet weak var lblIzquierda: UILabel!
    @IBOutlet weak var lblderecha: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
