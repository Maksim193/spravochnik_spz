//
//  NoInternetView.swift
//  spravochnik_spz
//
//  Created by Natalia Shevaldina on 21.02.2023.
//

import UIKit

class NoInternetView {
    lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Constants.Images.noInternet
        return imageView
    }()
    
    lazy var noInternetTitleLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.TextLabels.noInternetTitle
//        label.font =
        label.tintColor = Constants.Colors.black
        return label
    }()
    
    lazy var noInternetTextLabel: UILabel = {
        let label = UILabel()
        label.text = Constants.TextLabels.noInternetTitle
//        label.font =
        label.tintColor = Constants.Colors.lightGrey
        return label
    }()
    
    private lazy var linesStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = Constants.Sizes.spasingBetweenLine
        return stackView
    }()
    
//    stackView
}
