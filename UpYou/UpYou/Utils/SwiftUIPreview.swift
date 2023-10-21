//
//  SwiftUIPreview.swift
//  UpYou
//
//  Created by Pedro Gabriel on 21/10/23.
//

import Foundation

#if DEBUG
  import SwiftUI

  struct SwiftUIPreview<V>: UIViewRepresentable where V: UIView {
    let viewFactory: (Context) -> V

    func makeUIView(context: Context) -> V {
      return self.viewFactory(context)
    }

    func updateUIView(_: V, context _: Context) {}
  }
#endif
