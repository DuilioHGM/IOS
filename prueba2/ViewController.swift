//
//  ViewController.swift
//  prueba2
//
//  Created by ADMINISTRADORUTM on 05/12/16.
//  Copyright © 2016 ADMINISTRADORUTM. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   let arreglo = [("Luisa", "1"),("Eduardo", "2")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arreglo.count
    }
    
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
     {
        
        let proto = (indexPath.row % 2 == 0) ? "proto1" : "proto2"
        
        let vista = tableView.dequeueReusableCell(withIdentifier: proto, for: indexPath) as! FilaTableViewCell
        
        if indexPath.row % 2 == 0 {
            vista.lblIzquierda.text = arreglo[indexPath.row].0
            vista.lblderecha.text = arreglo[indexPath.row].1
        }
        else {
            vista.lblderecha.text = arreglo[indexPath.row].1
            vista.lblIzquierda.text = arreglo[indexPath.row].0
        }

        
        //let vista = tableView.dequeueReusableCell(withIdentifier: "proto1", for: indexPath) as! FilaTableViewCell
       // vista.lblIzquierda.text = arreglo[indexPath.row].0
        //vista.lblderecha.text = arreglo[indexPath.row].1
        return vista
    }

}

