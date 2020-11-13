//
//  UIImageViewExtension.swift
//  YDExtensions
//
//  Created by Douglas Hennrich on 13/11/20.
//

import UIKit
import Kingfisher
import KingfisherWebP

extension UIImageView {
  func setImage(_ imageStringOpt: String?) {
    guard let imageString = imageStringOpt else {
      return
    }

    kf.setImage(
      with: URL(string: imageString),
      options: [
//        .progressiveJPEG(ImageProgressive(isBlur: false, isFastestScan: false, scanInterval: 0.1)),
        .processor(WebPProcessor.default)
      ],
      completionHandler: { [weak self] result in
        guard let self = self else { return }

        if case .success(let imageSuccess) = result {
          let ratio = imageSuccess.image.size.width / imageSuccess.image.size.height

          if self.frame.width > self.frame.height {
            let newHeight = self.frame.width / ratio
            self.frame.size = CGSize(width: self.frame.width, height: newHeight)

          } else {
            let newWidth = self.frame.height * ratio
            self.frame.size = CGSize(width: newWidth, height: self.frame.height)
          }
        }
      }
    )

  }
}
