//
//  ContentView.swift
//  Snake and Ladder
//
//  Created by admin on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    //    @State private var present1: Bool
    @State private var position1: Int = 1
    @State private var position2: Int = 1
    @State private var player1: Bool = true
    @State private var diceRoll: Int = 0
    
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    ForEach(1...5, id: \.self){ row in
                        HStack{
                            ForEach(1...5, id: \.self){ column in
                                Button(action: {
                                    print("Button tapped = \(row) x \(column)")
                                }) {
                                    if(((5 - (position1 / 5)) == row && (position1 % 5) == column)  &&  ((5 - (position2 / 5)) == row && (position2 % 5) == column)){
                                        Image("row-\(row)-column-\(column)")
                                            .resizable()
                                            .foregroundColor(.black)
                                            .shadow(color: Color.red, radius: 5.0, x: 5, y: 5)
                                            .shadow(color: Color.green, radius: 5, x: -5, y: -5)
                                    }
                                    else{
                                        if((5 - (position1 / 5)) == row && (position1 % 5) == column){
                                            Image("row-\(row)-column-\(column)")
                                                .resizable()
                                                .foregroundColor(.black)
                                                .shadow(color: Color.red, radius: 5.0, x: 5, y: 5)
                                        }
                                        else if((5 - (position2 / 5)) == row && (position2 % 5) == column){
                                            Image("row-\(row)-column-\(column)")
                                                .resizable()
                                                .foregroundColor(.black)
                                                .shadow(color: Color.green, radius: 5.0, x: -5, y: -5)
                                        }
                                        else{
                                            Image("row-\(row)-column-\(column)")
                                                .resizable()
                                                .foregroundColor(.black)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                .frame(width: 400, height: 620)
                .padding()
                
                HStack{
                    var logic = Logic.init()
                    if (player1){
                        HStack{
                            Text("Player1 Tab Dice:")
                                .font(.title)
                                .padding(15)
                            Button(action: {
                                let dice = logic.roll(position: position1)
                                diceRoll = dice.diceRoll
                                print("Dice Number = \(diceRoll)")
                                if(dice.post <= 25){
                                    position1 = dice.post
                                }
                                player1 = false
                            }) {
                                //                                Text("Roll Dice")
                                Image("dice")
                                    .frame(width: 10, height: 10)
                            }
                            Text("Dice Number = \(diceRoll)")
//                                .font(.title)
                            if position1 == 25{
                                Won(name: "Player1")
                            }
                        }
                    }else{
                        HStack{
                            Text("Player2 Tab Dice:")
                                .font(.title)
                            
                            Button(action: {
                                let dice = logic.roll(position: position2)
                                diceRoll = dice.diceRoll
                                print("Dice Number = \(diceRoll)")
                                if(dice.post <= 25){
                                    position2 = dice.post
                                }
                                player1 = true
                            }) {
                                //                            Text("Roll Dice")
                                Image("dice")
                                    .frame(width: 10, height: 10)
                            }
                            Text("Dice Number = \(diceRoll)")
//                                .font(.title)
                            if position2 == 25{
                                Won(name: "Player2")
                            }
                        }
                    }
                }
                //                .frame(width: 400, height: 200)
            }
            .navigationTitle("Snakes & Ladders")
            .navigationBarTitleDisplayMode(.automatic)
            //                        .edgesIgnoringSafeArea(.true)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
