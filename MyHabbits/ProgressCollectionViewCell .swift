//
//  ProgressCollectionViewCell .swift
//  MyHabbits
//
//  Created by Захар Кисляк on 27.05.2023.
//

import UIKit
import SnapKit


final class ProgressCollectionViewCell: UICollectionViewCell {
    
    private enum Constants {
        
           static let verticalSpacing: CGFloat = 8.0
           static let horizontalPadding: CGFloat = 16.0
           static let profileDescriptionVerticalPadding: CGFloat = 8.0
           static let contentViewCornerRadius: CGFloat = 4.0
    }
    
    //MARK: - SubViews
    
        private lazy var habbitsLabel: UILabel = {
            let label = UILabel(frame: .zero)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.numberOfLines = 0
            return label
        }()

        private lazy var periodicityLabel: UILabel = {
            let label = UILabel(frame: .zero)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            label.numberOfLines = 0
            return label
        }()

        private lazy var counter: UILabel = {
            let label = UILabel(frame: .zero)
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textAlignment = .center
            return label
        }()
    
    //MARK: -Lifecycle
    
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

        override init(frame: CGRect) {
            super.init(frame: .zero)
            setupView()
            addLayout()
            addsubView()
        } 
    
    //MARK: -PrivateFunc
    
    private func setupView() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = Constants.contentViewCornerRadius
        contentView.backgroundColor = .white
    }
    
    private func addsubView() {
        contentView.addSubview(habbitsLabel)
        contentView.addSubview(periodicityLabel)
        contentView.addSubview(counter)
    }
   
    private func addLayout() {
        
    NSLayoutConstraint.activate([
        habbitsLabel.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: Constants.horizontalPadding
        ),
       habbitsLabel.trailingAnchor.constraint(
            equalTo: contentView.trailingAnchor,
            constant: -Constants.horizontalPadding
        ) 
    ])

    NSLayoutConstraint.activate([
        periodicityLabel.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: Constants.horizontalPadding
        ),
        periodicityLabel.trailingAnchor.constraint(
            equalTo: contentView.trailingAnchor,
            constant: -Constants.horizontalPadding
        ),
        periodicityLabel.topAnchor.constraint(
            equalTo: periodicityLabel.bottomAnchor,
            constant: 4.0
        ),
    ])

    NSLayoutConstraint.activate([
        counter.leadingAnchor.constraint(
            equalTo: contentView.leadingAnchor,
            constant: Constants.horizontalPadding
        ),
        counter.trailingAnchor.constraint(
            equalTo: contentView.trailingAnchor,
            constant: -Constants.horizontalPadding
        ),
        counter.topAnchor.constraint(
            equalTo: counter.bottomAnchor,
            constant: Constants.verticalSpacing
        ),
        counter.bottomAnchor.constraint(
            equalTo: contentView.bottomAnchor,
            constant: -Constants.profileDescriptionVerticalPadding
        ),
    ])
       }
    }


