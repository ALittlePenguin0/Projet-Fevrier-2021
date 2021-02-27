//
//  Alerte.swift
//  PARII
//
//  Created by Michel
//

import Foundation
import UIKit

class Alerte: UIViewController {
    
    //declaration du bouton
    @IBOutlet var button2: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //ajouter un rayon
        button2.layer.cornerRadius = 25
    }
    
    var fiche: Fiche!
    //declaration des champs de texte
    @IBOutlet var field1: UITextField!
    @IBOutlet var field2: UITextField!
    @IBOutlet var field3: UITextField!
    @IBOutlet var field4: UITextView!
    
    //affiche les champs de texte dans la console
    @IBAction func printfields() {
        print(field1.text as Any)
        print(field2.text as Any)
        print(field3.text as Any)
        print(field4.text as Any)
    }
    
    //fonction valider
    @IBAction func validate() {
        createFiche() //appel de la fonction pour créer la fiche
        performSegue(withIdentifier: "segueToSuccess", sender: self) //lancer la transition
    }
    
    //créer une fiche à partir des données
    private func createFiche() {
        let nom = field1.text
        let adresse = field2.text
        let telephone = field3.text
        let description = field4.text
        
        fiche = Fiche(nom: nom, adresse: adresse, telephone: telephone, description : description)
    }
    
    //transiter des données entre controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueToSuccess" {
            let successVC = segue.destination as! SuccessViewController
            successVC.fiche = fiche //on récupère les informations
        }
    }
}
