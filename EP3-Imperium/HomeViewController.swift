//
//  HomeViewController.swift
//  EP3-Imperium
//
//  Created by Carlos Alexander on 6/18/22.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {
    
    @IBOutlet weak var closeSessionButton: UIButton!
    
    private let provider: ProviderType
    
    
    init(provider: ProviderType) {
        self.provider = provider
        super.init(nibName: "HomeViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bienvenido"
    }
    
    
    @IBAction func closeSessionButtonAction(_ sender: Any) {
        switch provider {
        
        case .basic:
            do {
                try Auth.auth().signOut()
                navigationController?.popViewController(animated: true)
            } catch {
            
            }
        }
    }
}
