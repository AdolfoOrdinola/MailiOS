//
//  TableViewCell.swift
//  Mail
//
//  Created by macbookUser on 18/10/17.
//  Copyright © 2017 Grupo Fortín. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet weak var remitente: UILabel!
    @IBOutlet weak var asunto: UILabel!
    @IBOutlet weak var contenido: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
