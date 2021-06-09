//
//  ViewController.swift
//  Scroll
//
//  Created by Юлия Вилкова on 09.06.2021.
//
import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var scroll: UIScrollView!
    
    var names = ["Anton", "Vasya", "Olya", "Petya","Anton", "Vasya", "Olya", "Petya","Anton", "Vasya", "Olya", "Petya","Anton", "Vasya", "Olya", "Petya","Anton", "Vasya", "Olya", "Petya","Anton", "Vasya", "Olya", "Petya"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       generateTable(data: names)
    }

    
    func generateTable(data: [String]){
        
        for (index, name) in data.enumerated(){
        let y = CGFloat(index) * 80
            let cell = UIView(frame: CGRect(x:0,  y: y, width: view.frame.size.width, height: 80))
            if index % 2 == 0 {cell.backgroundColor = UIColor.red}
            let label = UILabel(frame: cell.bounds)
            label.text = name
            cell.addSubview(label)
            view.addSubview(cell)
            scroll.addSubview(cell)
            
        }
        scroll.contentSize = CGSize(width:view.frame.size.width , height: CGFloat(data.count * 80))
        
        
    }

}

