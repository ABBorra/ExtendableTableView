//
//  ViewController.swift
//  faq
//
//  Created by AB_Borra on 3/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    var hideCel = true
    @IBOutlet weak var IbTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
//        self.IbTableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.IbTableView.register(UINib(nibName: "ExpTableCellTVC", bundle: nil), forCellReuseIdentifier: "ExpTableCellTVC")
        self.IbTableView.estimatedRowHeight = 100
        self.IbTableView.rowHeight = UITableView.automaticDimension
        self.IbTableView.dataSource = self
        self.IbTableView.delegate = self
        
        self.IbTableView.reloadData()
    }
    
    
    var locations = [
        Location(title: "something", rating: "", descriptions: "he methods in the UIConstraintBasedLayoutDebugging.he methods in the UIConstraintBasedLayoutDebugging.he methods in the UIConstraintBasedLayoutDebugging.he  methods in the UIConstraintBasedLayoutDebugging.", latitude: 10.11111, longitude: 1.11111, isHiden: true),
        Location(title: "something", rating: "", descriptions: "he methods in the UIConstraintBasedLayoutDebugging0000.", latitude: 10.11111, longitude: 1.11111, isHiden: true),
        Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                ),Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                          ),Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                                    ),Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                                              ),Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                                                        ),Location(title: "something", rating: "", descriptions: "Old.", latitude: 10.11111, longitude: 1.11111, isHiden: true
                                                                  )
    ]

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    private func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "ExpTableCellTVC"
         tableView.register(UINib(nibName: "ExpTableCellTVC", bundle: nil), forCellReuseIdentifier: identifier)
         let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ExpTableCellTVC
        
      
        cell.selectionStyle = .none
        
        
        let expdableItem = self.locations[indexPath.row]
        
        cell.titleLbl?.text = expdableItem.title
        cell.descrpView?.text = expdableItem.descriptions
        cell.buttonView?.isHidden = expdableItem.isHiden
        //print("boolVall: \(expdableItem.isHiden)")
        if expdableItem.isHiden {
            cell.arrowImgView?.image = UIImage(named: "iconback")
        } else {
            cell.arrowImgView?.image = UIImage(named: "dd")
        }
        cell.arrowImgView?.image = UIImage(named: "iconback")
        return cell
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var expItem = self.locations[indexPath.row]
        expItem.isHiden = !(expItem.isHiden)
       // print("boolVall11: \(expItem.isHiden)")
//        hideCel = expItem.isHiden ?? true
        self.locations[indexPath.row].isHiden = expItem.isHiden
        
        tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
    }
}

struct Location {
        let title: String
        let rating: String
        let descriptions: String
        let latitude: Double
        let longitude: Double
    var isHiden: Bool
    }
