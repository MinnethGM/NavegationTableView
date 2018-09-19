//
//  ViewController.swift
//  NavegacionTableView
//
//  Created by Alumno on 19/09/18.
//  Copyright © 2018 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let materias : [Materia] = [Materia(nombre: "Programacion de dispositivos moviles"),
                                Materia(nombre: "Tratamiento de imagen"),
                                Materia(nombre: "Animacion por computadota I"),
                                Materia(nombre: "Pensamiento social cristiano"),
                                Materia(nombre: "Mexico en el contexto global"),
                                Materia(nombre: "Redes computacionales"),
                                Materia(nombre: "Mercadotecnia"),]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "cellMateria") as? CeldaMateria
        celda?.lblNombre.text = materias[indexPath.row].nombre
        
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 93
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        materias[0].calificacionPrimerParcial = 10
        materias[2].calificacionPrimerParcial = 9
        materias[3].calificacionPrimerParcial = 7
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

