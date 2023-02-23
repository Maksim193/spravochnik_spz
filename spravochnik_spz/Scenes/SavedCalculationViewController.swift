//
//  NoInternetView.swift
//  spravochnik_spz
//
//  Created by Natalia Shevaldina on 21.02.2023.
//

import UIKit

class SavedCalculationViewController: UIViewController {
    lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Images.file
        return imageView
    }()
    
    lazy var noInternetTitleLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.TextLabels.noInternetTitle
//        label.font =
        label.textAlignment = .center
        label.tintColor = Constants.Colors.black
        return label
    }()
    
    lazy var noInternetTextLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.TextLabels.noInternetText
//        label.font =
        label.numberOfLines = 0
        label.textAlignment = .center
        label.tintColor = Constants.Colors.lightGrey
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.spacing = Constants.Sizes.spasingBetweenLine
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewController()
    }
}

extension SavedCalculationViewController {
    func setupViewController() {
        addSubViews()
        setupConstraints()
        view.backgroundColor = .systemBackground
        
    }
    
    func addSubViews() {
        view.addSubviews(stackView)
        view.addSubviews(image)
        stackView.addArrangedSubviews(noInternetTitleLabel,
                                      noInternetTextLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            image.heightAnchor.constraint(equalToConstant: 100),
            image.widthAnchor.constraint(equalToConstant: 100),
            image.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            image.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
