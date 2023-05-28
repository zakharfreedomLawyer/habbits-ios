//
//  HabitsViewController .swift
//  MyHabbits
//
//  Created by Захар Кисляк on 22.04.2023.
//

import UIKit
import SnapKit


final class HabitsViewController: UIViewController {
        
    
    //MARK: Data
    //берем данные для ячеек
    
    fileprivate lazy var profiles: [Profile] = Profile.make()
    
    //MARK: SubViews
    
    private let collectionView: UICollectionView = {
        let viewLayout = UICollectionViewFlowLayout()
            
        let collectionView = UICollectionView(
            frame:.zero,
            collectionViewLayout: viewLayout
        )
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .systemBackground
        
        collectionView.register(ProgressCollectionViewCell.self, forCellWithReuseIdentifier:ProgressCollectionViewCell.identifire)
        
        return collectionView
    }()
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        setupView()
        setupSubViews()
        setupLayouts()
    }
    
   //MARK: PrivatebFunc
    
    private func setupView() {
        view.backgroundColor = .systemBackground
        title = "Сегодня"
    }
    
    private func setupSubViews() {
        setupCollectionView()
    }
    private func setupCollectionView() {
        view.addSubview(collectionView)
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    private func setupLayouts() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor),
            collectionView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            collectionView.rightAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor)
        ])
    }
}


extension HabitsViewController: UICollectionViewDataSource{
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    profiles.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ProgressCollectionViewCell.identifire, for: indexPath) as! ProgressCollectionViewCell
    
    let profile = profiles[indexPath.row]
    cell.setup(with:profile)
    
    return cell
   }
}

extension HabitsViewController: UICollectionViewDelegateFlowLayout {
    
    private func itemWidth(
        for width: CGFloat,
        spacing: CGFloat
    ) -> CGFloat {
        let itemsInRow: CGFloat = 2
        
        let totalSpacing: CGFloat = 2 * spacing + (itemsInRow - 1) * spacing
        let finalWidth = (width - totalSpacing) / itemsInRow
        
        return floor(finalWidth)
        
    }
}
