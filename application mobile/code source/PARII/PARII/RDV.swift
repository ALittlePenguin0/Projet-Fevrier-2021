//
//  RDV.swift
//  PARII
//
//  Created by Michel
//

import Foundation
import UIKit

//déclaration des horaires
var Horaires = ["10 Mai de 9h à 11h", "15 Mai de 13h à 15h", "20 Mai de 9h à 11h", "25 Mai de 13h à 15h"]

class RDV: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    //personnalisation du bouton
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.layer.cornerRadius = 25
    }
    
    //activation du bouton
    @IBAction func printButton() {
        print("choix validé")
        selectionHoraire() //appel de la fonction
    }
    
    //PROTOCOLE de PickerView
    //nombre de colonnes
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // 1 colonne
    }
    
    //nombre d'éléments dans chaque colonne
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        Horaires.count //ici, le nombre d'éléménts dans le tableau (quatre éléments)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return Horaires[row] //afficher chaque élément en tant que ligne
    } //FIN DU PROTOCOLE
    
    
    //déclaration du PickerView
    @IBOutlet var horairePickerView: UIPickerView!
    
    //afficher le choix de l'horaire
     func selectionHoraire(){
        let horaireindex = horairePickerView.selectedRow(inComponent: 0)
        let horaire = Horaires[horaireindex]
        print(horaire)
    }
}
