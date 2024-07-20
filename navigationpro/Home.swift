//
//  Home.swift
//  navigationpro
//
//  Created by Vijay Lal on 17/07/24.
//

import UIKit

class Home: UIViewController {

    @IBOutlet weak var profileButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        profileButton.addTarget(self, action: #selector(nextpage), for: .touchUpInside)
    }
    @objc func nextpage() {
        let pb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Profile") as! Profile
//        self.navigationController?.pushViewController(pb, animated: true)
        present(pb, animated: true)
    }
    @IBAction func buttonpop(_ sender: UIButton) {
       dismiss(animated: true)
//        self.navigationController?.popViewController(animated: true)
    }
}
