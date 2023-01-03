//
//  ThinkingPath.swift
//  ChatBot
//
//  Created by Jonas Romankiewicz on 04.12.22.
//
import Foundation
import UIKit

class ThinkingCell: UITableViewCell {
    private let thinkingImage: UILabel = {
        let lbl = UILabel()
        lbl.text = "🤔"
        return lbl
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(thinkingImage)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        thinkingImage.frame = CGRect(x: 5, y: 5, width: contentView.frame.size.width - 10, height: contentView.frame.size.height - 10)
    }
}
