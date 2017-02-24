//
//  DataTableViewCell.swift
//  Table View Dinamico
//
//  Created by alumno on 2/23/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit

class DataTableViewCell: UITableViewCell {

    @IBOutlet weak var imgColor: UIView!
    
    
    @IBOutlet weak var lbldescripcion: UILabel!
    
    
    @IBOutlet weak var lblnumero: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
