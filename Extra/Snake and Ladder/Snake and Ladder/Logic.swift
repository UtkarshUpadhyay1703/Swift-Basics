//
//  Logic.swift
//  Snake and Ladder
//
//  Created by admin on 7/27/23.
//

import Foundation

struct Logic{
private static let finalSquare = 100
    private var board: [Int] = Array(repeating: 0, count: Self.finalSquare + 1)
init() {
    board[14] = -12; board[10] = +09; board[15] = +01; board[21] = -08
}
var square1 = 0, square2 = 0
//var diceRoll = 0
    
    func roll(position: Int) -> (post: Int,diceRoll: Int) {
        var post: Int
        let diceRoll = Int.random(in: 1...6)
        print("Dice ")
        post = position + diceRoll
        if post < board.count {
            post += board[position]
        }
        return (post, diceRoll)
    }
    
    
    
    
//while square1 < finalSquare && square2 < finalSquare {
//    print(" Player - 1 type any key for dice roll ")
//    var temp1 = readLine()
//    if(temp1 != nil){
//        diceRoll = Int.random(in: 1...6)
//        print("Number occured for Player - 1 => \(diceRoll)")
//        // move by the rolled amount
//        square1 += diceRoll
//        if square1 < board.count {
//            // if we're still on the board, move up or down for a snake or a ladder
//            square1 += board[square1]
//        }
//    }
//    // this is for second player
//    print(" Player - 2 type any key for dice roll ")
//    var temp2 = readLine()
//    if(temp2 != nil){
//        diceRoll = Int.random(in: 1...6)
//        print("Number occured for Player - 2 => \(diceRoll)")
//        // move by the rolled amount
//        square2 += diceRoll
//        if square2 < board.count {
//            // if we're still on the board, move up or down for a snake or a ladder
//            square2 += board[square2]
//        }
//    }
//}
//if (square1 < finalSquare){
//print("Player - 2 Won the game")
//}else{
//    print("Player - 1 Won the game")
//}
    
}
