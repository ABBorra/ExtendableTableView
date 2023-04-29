//
//  ExpTableCell.swift
//  faq
//
//  Created by AB_Borra on 3/23/23.
//

import Foundation
import UIKit
class ExpTableCellTVC: UITableViewCell {
    @IBOutlet weak var containerStackVIew: UIStackView!
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var descrpView: UILabel!
    @IBOutlet weak var arrowImgView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var buttonView: UIView! {
        didSet {
            buttonView.isHidden = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
