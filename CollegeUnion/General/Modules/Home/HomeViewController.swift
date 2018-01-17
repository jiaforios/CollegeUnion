//
//  HomeViewController.swift
//  CollegeUnion
//
//  Created by admin on 2018/1/16.
//  Copyright © 2018年 com. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    lazy var tableView :UITableView = {
        ()->UITableView in
        let tab = UITableView()
        tab.delegate = self
        tab.dataSource = self
        return tab
    }()
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
}
