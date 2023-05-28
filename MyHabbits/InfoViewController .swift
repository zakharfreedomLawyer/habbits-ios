//
//  InfoViewController .swift
//  MyHabbits
//
//  Created by Захар Кисляк on 22.04.2023.
//

import UIKit
import SnapKit

final class InfoViewController: UIViewController {
    
    //MARK: Создаем скролл
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        return scrollView
    }()
    
    //MARK: Создаем стэк, куда поместим все элементы
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10 //поверить
        return stackView
    }()

    //MARK: Первый заголовок
    private lazy var titleLabel: UILabel = {
        let title = UILabel()
        title.text = "Привычка за 14 дней"
        title.font = .boldSystemFont(ofSize: 18)
        return title
    }()
     
    //MARK: Второй заголовок
    private lazy var titleLabel1: UILabel = {
        let title = UILabel()
        title.text = "Прохождение этапов, за которые за 14 день вырабатывается привычка подчиняется следующему алгоритму"
        title.font = .preferredFont(forTextStyle: .body)
        title.font = .systemFont(ofSize: 17)
        title.numberOfLines = 0
        return title
    }()
    
    //MARK: Третий заголовок
    private lazy var titleLabel2: UILabel = {
       let title2 = UILabel()
        title2.text = "1. Провести один день без обращения к старым привычкам, стараться вести себя так, будто цель, загаданная в перспективу находится на расстоянии шага."
        title2.font = .preferredFont(forTextStyle: .body)
        title2.font = .systemFont(ofSize: 17)
        title2.numberOfLines = 0
        return title2
    }()
    
    //MARK: Четвертый заголовок
    private lazy var titleLabel3: UILabel = {
        let title3 = UILabel()
        title3.text = "2.Выдержать 2 дня в прежнем состоянии самоконтроля."
        title3.font = .preferredFont(forTextStyle: .body)
        title3.numberOfLines = 0
        return title3
    }()
    
    //MARK: Пятый заголовок
    private lazy var titleLabel4: UILabel = {
        let titleLabell4 = UILabel()
        titleLabell4.text = "3.Отметить в дневнике первую неделю изменений и подвести первые итоги - что оказалось тяжело, что - легче, с чем предстоит еще серьезно бороться."
        titleLabell4.font = .preferredFont(forTextStyle: .body)
        titleLabell4.numberOfLines = 0
        return titleLabell4
    }()
    
    //MARK: Шестой заголовок
    private lazy var titleLabel5: UILabel = {
        let titleLabel5 = UILabel()
        titleLabel5.text = "4.Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятие положительных качеств."
        titleLabel5.font = .preferredFont(forTextStyle: .body)
        titleLabel5.numberOfLines = 0
        return titleLabel5
    }()
   
    
    //MARK: Седьмой заголовок
    private lazy var titleLabel6: UILabel = {
        let titleLabel6 = UILabel()
        titleLabel6.text = "5.Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого."
        titleLabel6.font = .preferredFont(forTextStyle: .body)
        titleLabel6.numberOfLines = 0
        return titleLabel6
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setUpNavigation()
        addScrollView()
        addStackView()
        addLabeles()
    }
    
    //MARK: Заголовок экрана
    
    private func setUpNavigation() {
        title = "Информация"
    }
    
    //MARK: Сonstraints for Scroll
    private func addScrollView() {
        view.addSubview(scrollView)
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height)
        scrollView.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(16)
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
        }

    }
    
    private func addStackView() {
        scrollView.addSubview(stackView)
        stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(scrollView)
        }
    }
    
    private func addLabeles() {
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(titleLabel1)
        stackView.addArrangedSubview(titleLabel2)
        stackView.addArrangedSubview(titleLabel3)
        stackView.addArrangedSubview(titleLabel4)
        stackView.addArrangedSubview(titleLabel5)
        stackView.addArrangedSubview(titleLabel6) 
    }

}
