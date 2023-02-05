//
//  TopTableViewCell.swift
//  MVC
//
//  Created by Ян Жигурс on 01.02.2023.
//

import UIKit

class TopTableViewCell: UITableViewCell {
    
    static let identifier = String(describing: TopTableViewCell.self)
    
    private let iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 35
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = .systemFont(ofSize: 23)
        titleLabel.numberOfLines = 2
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private let subtitleLabel: UILabel = {
        let subtitleLabel = UILabel()
        subtitleLabel.numberOfLines = 2
        subtitleLabel.font = .systemFont(ofSize: 14)
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        return subtitleLabel
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(subtitleLabel)
        contentView.addSubview(iconImageView)
        contentView.addSubview(titleLabel)
        
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        iconImageView.frame = CGRect(x: 15, y: 15, width: 70, height: 70)
        
        titleLabel.frame = CGRect(x: 100, y: 15, width: 200, height: 25)
        
        subtitleLabel.frame = CGRect(x: 100, y: 50, width: 180, height: 35)
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageView.image = nil
        titleLabel.text = nil
        subtitleLabel.text = nil
    }
        
    public func configure(with model: TopCellOption) {
        titleLabel.text = model.title
        subtitleLabel.text = model.subtitleText
        iconImageView.image = model.icon
    }
}
