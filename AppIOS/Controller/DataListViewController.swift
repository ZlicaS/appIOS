//
//  DataListViewController.swift
//  AppIOS
//
//  Created by Liza Sapsaj on 11/5/21.
//

import UIKit

class DataListViewController: UITableViewController {
    
    var persons = [Person]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        persons.append(Person(name: "John", lastName: "Doe", age: 42))
        persons.append(Person(name: "John", lastName: "Doe", age: 31))
        persons.append(Person(name: "John", lastName: "Doe", age: 15))
        persons.append(Person(name: "John", lastName: "Doe", age: 16))
        persons.append(Person(name: "John", lastName: "Doe", age: 55))
        persons.append(Person(name: "John", lastName: "Doe", age: 33))
        persons.append(Person(name: "John", lastName: "Doe", age: 76))
        persons.append(Person(name: "John", lastName: "Doe", age: 55))
        persons.append(Person(name: "John", lastName: "Doe", age: 23))
        persons.append(Person(name: "John", lastName: "Doe", age: 25))
        persons.append(Person(name: "John", lastName: "Doe", age: 28))
        persons.append(Person(name: "John", lastName: "Doe", age: 75))
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.lblName.text = persons[indexPath.row].name
        cell.lblLastName.text = persons[indexPath.row].lastName
        cell.lblAge.text = String(persons[indexPath.row].age)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToPerson", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PersonViewController
        destinationVC.delegate = self
    
        if let indexPath = tableView.indexPathForSelectedRow{
            destinationVC.selectedPerson = persons[indexPath.row]
            destinationVC.selectedRow = indexPath.row
            
        }
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

extension DataListViewController: PersonViewControllerDelegate {
    func titleDidChange(row: Int, to title: String) {
        let indexPath = IndexPath(item: row, section: 0)
        tableView.reloadRows(at: [indexPath], with: .top)
        let cell = tableView.cellForRow(at: indexPath) as! TableViewCell
        cell.lblAge.text = title
    }
    
}
