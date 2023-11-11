//
//  MOOImageButton.swift
//  MOOImageButton
//
//  Created by 994355869@qq.com on 2023/11/11.
//  Copyright (c) 2023 994355869@qq.com. All rights reserved.
//

import UIKit

public class MOOImageButton: UIButton {
    public enum MOOButtonImagePosition {
        case top, left, bottom, right
    }
    
    var imagePosition: MOOButtonImagePosition = .left
    var imgTitleMargin: CGFloat = 0.0
    
    public init(imagePosition: MOOButtonImagePosition, imgTitleMargin: CGFloat) {
        self.imagePosition = imagePosition
        self.imgTitleMargin = imgTitleMargin
        super.init(frame: .zero)
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        let imgWidth: CGFloat = self.imageView?.bounds.size.width ?? 0.0
        let imgHeight: CGFloat = self.imageView?.bounds.size.height ?? 0.0
        let labWidth: CGFloat = self.titleLabel?.bounds.size.width ?? 0.0
        let labHeight: CGFloat = self.titleLabel?.bounds.size.height ?? 0.0
        
        switch imagePosition {
        case .top:
            self.titleEdgeInsets = UIEdgeInsets(top: imgHeight + self.imgTitleMargin,
                                                left: -imgWidth,
                                                bottom: 0.0,
                                                right: 0.0)
            self.imageEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: 0.0,
                                                bottom: labHeight + self.imgTitleMargin,
                                                right: -labWidth)
            break
        case .left:
            self.titleEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: self.imgTitleMargin,
                                                bottom: 0.0,
                                                right: 0.0)
            self.imageEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: -self.imgTitleMargin,
                                                bottom: 0.0,
                                                right: 0.0)
            break
        case .bottom:
            self.titleEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: -imgWidth,
                                                bottom: imgHeight + self.imgTitleMargin,
                                                right: 0.0)
            self.imageEdgeInsets = UIEdgeInsets(top: labHeight + self.imgTitleMargin,
                                                left: 0.0,
                                                bottom: 0.0,
                                                right: -labWidth)
            break
        case .right:
            self.titleEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: -(imgWidth + self.imgTitleMargin),
                                                bottom: 0.0,
                                                right: imgWidth + self.imgTitleMargin)
            self.imageEdgeInsets = UIEdgeInsets(top: 0.0,
                                                left: labWidth + self.imgTitleMargin,
                                                bottom: 0.0,
                                                right: -(labWidth + self.imgTitleMargin))
            break
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
