//
//  MyTableViewController.swift
//  Siyu_Liu_FE_8859412
//
//  Created by user on 2023-04-04.
//

import UIKit

class MyTableViewController: UITableViewController {
    // labs info dictionary
    let labs = [
        [
            "labNumber": "Lab 2",
            "labDescription": "UI controls",
            "labIcon": "2",
        ],
        [
            "labNumber": "Lab 3",
            "labDescription": "UI Text",
            "labIcon": "3",
        ],
        [
            "labNumber": "Lab 4",
            "labDescription": "Auto Layout",
            "labIcon": "4",
        ],
        [
            "labNumber": "Lab 6",
            "labDescription": "Table View",
            "labIcon": "6",
        ],
        [
            "labNumber": "Lab 7",
            "labDescription": "Maps & GPS",
            "labIcon": "7",
        ],
        [
            "labNumber": "Lab 8",
            "labDescription": "Networking",
            "labIcon": "8",
        ],
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return labs.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.LabNumberLabel.text = labs[indexPath.row]["labNumber"]
        cell.LabDescriptionLabel.text = labs[indexPath.row]["labDescription"]
        // lab logo name string
        cell.LabIcon.image = UIImage(named: "lab\(labs[indexPath.row]["labIcon"]!)_logo")
        return cell
    }

    // get the tapped cell's index, then load reflected lab's viewController
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let lab_identifier = labs[indexPath.row]["labNumber"]!
        let lab_viewController = storyboard?.instantiateViewController(withIdentifier: lab_identifier)
        navigationController?.pushViewController(lab_viewController!, animated: true)
    }

    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the specified item to be editable.
         return true
     }
     */

    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
         if editingStyle == .delete {
             // Delete the row from the data source
             tableView.deleteRows(at: [indexPath], with: .fade)
         } else if editingStyle == .insert {
             // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
         }
     }
     */

    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

     }
     */

    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
         // Return false if you do not want the item to be re-orderable.
         return true
     }
     */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}
