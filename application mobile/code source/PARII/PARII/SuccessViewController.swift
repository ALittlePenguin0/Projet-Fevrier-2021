//
//  SuccessViewController.swift
//  PARII
//
//  Created by Michel on 22/02/2021.
//

import Foundation
import UIKit

class SuccessViewController: UIViewController {
    var fiche: Fiche! //pour recevoir la donnée
    
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTextLabel() //appel de la fonction
    }
    
    //personnalisation du label en utilisant le nom de l'entreprise
    private func setTextLabel() {
        let name = fiche.nom
        label.text = "Merci pour votre confiance \(name!) !\n\nNous avons bien reçu votre alerte, nous allons immédiatement vous contacter. Veillez patienter."
    }
    
}
