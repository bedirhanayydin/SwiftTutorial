//
//  OpacityTrain.swift
//  first
//
//  Created by bedirhan on 8.08.2023.
//

import SwiftUI

struct OpacityTrain: View {    var longerTrain: Bool

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            Divider()
        }    }
}

struct OpacityTrain_Previews: PreviewProvider {
    static var previews: some View {

        OpacityTrain(longerTrain: true)
        OpacityTrain(longerTrain: false)    }
}
