//
//  BaseTabController.swift
//  CollegeUnion
//
//  Created by admin on 2018/1/16.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class BaseTabController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let mine = MineViewController()
        let home = HomeViewController()
        let mineNav = BaseNavgationViewController.init(rootViewController: mine)
        let homeNav = BaseNavgationViewController.init(rootViewController: home)
        
        let minItem = UITabBarItem.init(title: "喜欢", image: nil, tag: 1)
        let homeItem = UITabBarItem.init(title: "首页", image: nil, tag: 0)
        mineNav.tabBarItem = minItem
        homeNav.tabBarItem = homeItem
        self.viewControllers = [homeNav,mineNav]
        
        let titleLbl = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: 50, height: 30))
        titleLbl.text = "首页"
        titleLbl.font = UIFont.boldSystemFont(ofSize: 25)
        let leftBar = UIBarButtonItem.init(customView: titleLbl)
        home.navigationItem.leftBarButtonItem = leftBar
        
        
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
