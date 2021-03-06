//
// CompactPlayerView.swift
// iOSPrototype
//
// Created on 5/23/22
//


import SwiftUI

struct CompactPlayerView: View {
  @EnvironmentObject var playerManager: PlayerManager
  let title: String

  var body: some View {
    HStack(alignment: .bottom) {
      Text(title)
      Spacer()
      if playerManager.isPlaying {
        Button {
          playerManager.pause()
        } label: {
          Image(systemName: "pause.fill")
        }
      } else {
        Button {
          playerManager.resume()
        } label: {
          Image(systemName: "play.fill")
        }
      }
    }
    .padding(.horizontal, 20)
  }
}

struct CompactPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    CompactPlayerView(title: "Episode Title")
  }
}
