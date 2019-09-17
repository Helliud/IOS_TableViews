//
//  ViewController.swift
//  TableViews
//
//  Created by Alumno on 9/13/19.
//  Copyright © 2019 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var alumnos : [Alumno] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        alumnos.append(Alumno(nombre: "AMLO", apellido: "ZOOFILICO", matricula: "ABC123"))
        alumnos.append(Alumno(nombre: "ROSA", apellido: "MELANO", matricula: "BCD123"))
        alumnos.append(Alumno(nombre: "CESAR", apellido: "REA", matricula: "DFG123"))
        alumnos.append(Alumno(nombre: "BAILA", apellido: "BAILAESTACUMBIA", matricula: "XYZ123", correo: "XD@gmail.com"))



    }
    
    //Numero de secciones (siempre 1)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }

    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alumnos.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let celda = tableView.dequeueReusableCell(withIdentifier: "celdaAlumno") as? CeldaAlumnoController
        
        celda?.lblNombre.text = alumnos[indexPath.row].nombre
        celda?.lblApellido.text = alumnos[indexPath.row].apellido
        celda?.lblCorreo.text = alumnos[indexPath.row].correo
        celda?.lblMatricula.text = alumnos[indexPath.row].matricula


        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if(alumnos[indexPath.row].correo != nil){
            return 120
        }
        return 80
    }
    
}

