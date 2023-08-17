//
//  Won.swift
//  Snake and Ladder
//
//  Created by admin on 7/31/23.
//

import SwiftUI

struct Won: View {
    @State var name:String
    var body: some View {
        Text("Player \(name) Won !! \n     🎉🥳✊👏🥳🎉")
            .font(.title)
            .bold()
            .frame(width: 400, height: 450, alignment: .center)
//            .background(Color.green)
            .background(Badge())
            .frame(width: 450, height: 950, alignment: .center)
            .background(Color.pink)
    }
}

struct Won_Previews: PreviewProvider {
    static var previews: some View {
        Won(name: "abcd")
    }
}
