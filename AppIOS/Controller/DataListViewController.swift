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
        print("uslo")
        
        
        
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
       // tableView.deselectRow(at: indexPath, animated: true)

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! PersonViewController
       
        
        
       if let indexPath = tableView.indexPathForSelectedRow{
            destinationVC.selectedPerson = persons[indexPath.row]
       
       }
    }
  
    
    
}
