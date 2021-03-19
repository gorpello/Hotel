//
//  TableViewController.swift
//  Hotel
//
//  Created by Gianluca Orpello on 19/03/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    var isDateCheckInPickerOpen: Bool = false
    var isDateCheckOutPickerOpen: Bool = false
    
    let checkInDatePickerIndexPath: IndexPath = IndexPath(row: 1, section: 1)
    let checkOutDatePickerIndexPath: IndexPath = IndexPath(row: 3, section: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        switch (indexPath.row, indexPath.section) {
            
            case (checkInDatePickerIndexPath.row, checkInDatePickerIndexPath.section):
                if isDateCheckInPickerOpen {
                    return 216.0
                }else{
                    return 0
                }
                
            case (checkOutDatePickerIndexPath.row, checkOutDatePickerIndexPath.section):
                if isDateCheckOutPickerOpen {
                    return 216.0
                }else{
                    return 0
                }
                
            default:
                return 44.0
        }
        
    }


}
