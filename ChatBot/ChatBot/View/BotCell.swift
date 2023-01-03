//
//  ConversationCell.swift
//  ChatBot
//
//  Created by Jonas Romankiewicz on 04.12.22.
//

import UIKit

class ConversationCell: UITableViewCell {
    
    let messageBubbleView: UIView = {
        let bubbleView = UIView()
        bubbleView.backgroundColor = .systemGray5
        bubbleView.layer.masksToBounds = true
        bubbleView.layer.cornerRadius = 20
        bubbleView.translatesAutoresizingMaskIntoConstraints = false
        return bubbleView
    }()
    
    private let messageLabel: UILabel = {
        let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont.boldSystemFont(ofSize: 16)
        lbl.textAlignment = .left
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 2
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
        messageBubbleView.trailingAnchor.constraint(lessThanOrEqualTo: contentView.trailingAnchor).isActive = true
        messageBubbleView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        messageBubbleView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5).isActive = true
        messageBubbleView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5).isActive = true
        
        messageBubbleView.addSubview(messageLabel)
        messageLabel.trailingAnchor.constraint(lessThanOrEqualTo: messageBubbleView.trailingAnchor, constant: -10).isActive = true
        messageLabel.leadingAnchor.constraint(equalTo: messageBubbleView.leadingAnchor, constant: 10).isActive = true
        messageLabel.topAnchor.constraint(equalTo: messageBubbleView.topAnchor, constant: 10).isActive = true
        messageLabel.bottomAnchor.constraint(equalTo: messageBubbleView.bottomAnchor, constant: -10).isActive = true
    }
    
    func configureWithMessage(_ message: Message) {
        messageLabel.text = "🤖" + " " + message.text
    }
}
