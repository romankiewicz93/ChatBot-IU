//
//  QuestionCell.swift
//  ChatBot
//
//  Created by Jonas Romankiewicz on 04.12.22.
//
import Foundation
import UIKit

class QuestionCell: UITableViewCell {
    let messageBubbleView: UIView = {
        let bubbleView = UIView()
        bubbleView.backgroundColor = .systemBlue
        bubbleView.layer.masksToBounds = true
        bubbleView.layer.cornerRadius = 20
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        return bubbleView
    }()

    private let messageLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .white
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .right
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupViews() {
        contentView.addSubview(messageBubbleView)
        messageBubbleView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
        messageBubbleView.leadingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor).isActive = true
        messageBubbleView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        messageBubbleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true

        messageBubbleView.addSubview(messageLabel)
        messageLabel.trailingAnchor.constraint(lessThanOrEqualTo: messageBubbleView.trailingAnchor, constant: -10).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: messageBubbleView.leadingAnchor, constant: 10).isActive = true
        messageLabel.topAnchor.constraint(equalTo: messageBubbleView.topAnchor, constant: 10).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: messageBubbleView.bottomAnchor, constant: -10).isActive = true
    }

    func configureWithMessage(_ message: Message) {
        messageLabel.text = message.text
    }
}
