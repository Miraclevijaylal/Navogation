//
//  ViewController.swift
//  navigationpro
//
//  Created by Vijay Lal on 17/07/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clickaction: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        clickaction.addTarget(self, action: #selector(profilepage), for: .touchUpInside)
        view.backgroundColor = .red
    }
    @objc func profilepage() {
        let np = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Home") as! Home
//       self.navigationController?.pushViewController(np, animated: true)
        present(np, animated: true)
    }
}


