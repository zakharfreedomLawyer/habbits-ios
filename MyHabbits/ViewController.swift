//
//  ViewController.swift
//  MyHabbits
//
//  Created by Захар Кисляк on 22.04.2023.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

final class MainViewController: UITabBarController {
    
    var firstTabBarController: UINavigationController!
    var secondTabBarController: UINavigationController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addController()
        addHabits()
}
    
    private func addController() {
        firstTabBarController = UINavigationController.init(rootViewController:HabitsViewController())
        
        secondTabBarController = UINavigationController.init(rootViewController: InfoViewController())
         
//MARK:Создаем массив для контроллеров
    
        self.viewControllers = [firstTabBarController, secondTabBarController]
        
        let button1 = UITabBarItem(title: "Info", image: UIImage(systemName: "folder"), tag: 0)
        let button2 = UITabBarItem(title: "User", image: UIImage(systemName: "folder"), tag: 1)
        firstTabBarController.tabBarItem = button1
        secondTabBarController.tabBarItem = button2
    }
    
    //MARK: Кнопка добавления привычки

    func addHabits() {
        let addHabits = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(newHabits))
        navigationItem.rightBarButtonItem = addHabits
}
    
    @objc func newHabits() {
    let pickerViewController = PickerViewConroller()
    navigationController?.inputViewController?.modalPresentationStyle = .fullScreen
    self.present(pickerViewController, animated: true)
  }
}
 
