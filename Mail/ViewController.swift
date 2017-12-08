//
//  ViewController.swift
//  Mail
//
//  Created by macbookUser on 18/10/17.
//  Copyright © 2017 Grupo Fortín. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var correos = [["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Soy la verga"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Estamos creando una App de correos para iPhone"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"¿Qué es la vida?"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Has cambiado tus calificaciones"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Accediste a los servidores"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Accediste con datos root"],
    ["remitente":"ado_po@live.com.mx","asunto":"curso de Swift","contenido":"Soy la verga"]]
    //Esto es un diccionario, el cual se va a mostrar en las celdas
    //En pocas palabras es una "bandeja de entrada"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return correos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        //Esto es un casteo forzado (por el signo de exclamación)
        
        cell.remitente.text = correos[indexPath.row]["remitente"]
        cell.asunto.text = correos[indexPath.row]["asunto"]
        cell.contenido.text = correos[indexPath.row]["contenido"]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
        //Devuelve la altura de la celda (Hay que poner el mismo que se eligió)
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let deleteAction = UITableViewRowAction(style: .default, title: "borrar") {(action, indexPath) in
            self.correos.remove(at: indexPath.row) //Remueve el correo, pero aún hay que borrarla de la interfaz
            tableView.deleteRows(at: [indexPath], with: .fade) //Elimina de la tabla con la animación .fade
            
        }
        
        let shareAction = UITableViewRowAction(style: .default, title: "compartir") {(action, indexPath) in
            let defaultText = "Estamos en el iOS lab"
            let shareActivity = UIActivityViewController(activityItems: [defaultText], applicationActivities: [])
            self.present(shareActivity, animated: true, completion: nil)
        }
        shareAction.backgroundColor = #colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)
        return [deleteAction,shareAction]
        
        
    }
    
    
    
    
    
    
    
    
}

