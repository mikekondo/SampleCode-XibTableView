//
//  ViewController.swift
//  SampleCode-XibTableView
//
//  Created by 近藤米功 on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let gafaList = ["Google","Amazon","FaceBook","Apple"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "GafaTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }


}
extension ViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gafaList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GafaTableViewCell
        cell.gafaLabel.text = gafaList[indexPath.row]
        return cell
    }
}

