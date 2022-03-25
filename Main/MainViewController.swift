//
//  MainViewController.swift
//  CalorieControl
//
//  Created by 이민지 on 2022/03/09.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var viewBG: UIView!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    let viewModel = UserInfoViewModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.getData() { info in
            let name = info.nickName
            self.name.text = name + "님 환영합니다."
        }
        UIViewStyle.viewStyle(view: viewBG)
    }
}

extension UIColor {
    class var primaryColor: UIColor? { return UIColor(named: "PrimaryColor") }
}
