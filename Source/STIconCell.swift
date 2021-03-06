//
//  STIconCell.swift
//  MyColleague
//
//  Created by x4snowman on 2018/9/26.
//  Copyright © 2018 Beijing ShuTu Tech. Co.,Ltd. All rights reserved.
//

import UIKit

open class STIconCell: STBaseCell {
    
    private let iconSize: CGFloat = 24.0
    public var stIconImageView: UIImageView!
    public var stTextLabel: UILabel!
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialize()
    }
    
    private func initialize() {
        stIconImageView = UIImageView()
        stIconImageView.clipsToBounds = true
        stIconImageView.contentMode = .scaleToFill
        stIconImageView.makeOnlyAutoLayout()
        contentView.addSubview(stIconImageView)
        NSLayoutConstraint.activate(
            stIconImageView.widthAs(iconSize),
            stIconImageView.heightAs(iconSize),
            stIconImageView.leadingTo(contentView, offset: STSize.Margin.m16),
            stIconImageView.topTo(contentView, offset: STSize.Margin.m10),
            stIconImageView.bottomTo(contentView, offset: STSize.Margin.m10)
        )
        stTextLabel = UILabel()
        stTextLabel.font = UIFont.systemFont(ofSize: 15.0)
        stTextLabel.makeOnlyAutoLayout()
        contentView.addSubview(stTextLabel)
        NSLayoutConstraint.activate(
            stTextLabel.centerYTo(contentView),
            stTextLabel.hNextTo(stIconImageView, offset: STSize.Margin.m16),
            stTextLabel.trailingTo(contentView, offset: STSize.Margin.m16)
        )
    }
}
