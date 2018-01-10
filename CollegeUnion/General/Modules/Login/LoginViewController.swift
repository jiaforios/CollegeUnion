//
//  LoginViewController.swift
//  CollegeUnion
//
//  Created by admin on 2018/1/6.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit
import SnapKit

class LoginViewController: BaseViewController {
    let scrollView = UIScrollView()
    let account_tf = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.automaticallyAdjustsScrollViewInsets = false
      self.NavgationAlphaZero()
        setupViews()
        

    }
    
    func setupViews() {
        
        scrollView.frame = CGRect.init(x:0,y:0,width:kScreenW,height:kScreenH)
        scrollView.backgroundColor = UIColor.white
        scrollView.contentSize = CGSize(width:kScreenW,height:kScreenH)
        self.view.addSubview(scrollView)
        
        
        self.view.addSubview(account_tf)
        account_tf.snp.makeConstraints { (make) in
            make.height.equalTo(44)
            make.left.equalTo(20)
            make.right.equalTo(-20)
            make.top.equalTo(150*(kScreenH/667.0))
        }
        account_tf.borderStyle = .roundedRect
        account_tf.textAlignment = .center
        account_tf.placeholder = "请输入手机号"
        
        let login_bt = UIButton()
        self.view.addSubview(login_bt)
        login_bt.snp.makeConstraints { (make) in
            make.centerX.equalTo(self.view)
            make.height.equalTo(80)
            make.width.equalTo(80)
            make.top.equalTo(account_tf.snp.bottom).offset(50*(kScreenH/667.0))
        }
        login_bt.layer.cornerRadius = 40
        login_bt.backgroundColor = UIColor.gray.withAlphaComponent(0.2)
        login_bt.setImage(UIImage.init(named: "right_arrow"), for: .normal)
        login_bt.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
                
        
    }
    
     @objc  func loginAction() {
        print("loginAction")
        let pwdvc = PwdInputViewController.newWithAccount(account: account_tf.text)
        self.navigationController?.pushViewController(pwdvc, animated: true)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
