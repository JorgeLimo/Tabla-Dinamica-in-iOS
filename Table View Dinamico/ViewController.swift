//
//  ViewController.swift
//  Table View Dinamico
//
//  Created by alumno on 2/23/17.
//  Copyright © 2017 Jorge Limo. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    var elementosArray = Array<Elemento>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for i in 1...10 {
            let elemento = Elemento()
            elemento.numero = "\(i)"
            elemento.descripcion = "Descripcion larga del elemento " + "\(i)"
            if  i % 2 == 0 {
                elemento.color = UIColor.black
            }else{
                elemento.color = UIColor.red
            }
            elementosArray.append(elemento)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        let cell = tableView.cellForRow(at: indexPath) // Obtenemos la celda seleccionada
        

        
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elementosArray.count
    }
    
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath) as! DataTableViewCell
        
        
        let indice = indexPath.row
        
        let elemento = elementosArray[indice]
        
        cell.lblnumero.text = elemento.numero
        cell.imgColor.backgroundColor = elemento.color
        cell.lbldescripcion.text = elemento.descripcion
        
        return cell
    }
    

}

