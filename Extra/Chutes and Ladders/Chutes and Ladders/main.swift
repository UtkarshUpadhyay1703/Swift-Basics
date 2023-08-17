//
//  main.swift
//  Chutes and Ladders
//
//  Created by admin on 7/4/23.
//

import Foundation

print("Hello, World!")

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08


var square1 = 0, square2 = 0
var diceRoll = 0
while square1 < finalSquare && square2 < finalSquare {
    print(" Player - 1 type any key for dice roll ")
    var temp1 = readLine()
    if(temp1 != nil){
        diceRoll = Int.random(in: 1...6)
        print("Number occured for Player - 1 => \(diceRoll)")
        // move by the rolled amount
        square1 += diceRoll
        if square1 < board.count {
            // if we're still on the board, move up or down for a snake or a ladder
            square1 += board[square1]
        }
    }
    // this is for second player
    print(" Player - 2 type any key for dice roll ")
    var temp2 = readLine()
    if(temp2 != nil){
        diceRoll = Int.random(in: 1...6)
        print("Number occured for Player - 2 => \(diceRoll)")
        // move by the rolled amount
        square2 += diceRoll
        if square2 < board.count {
            // if we're still on the board, move up or down for a snake or a ladder
            square2 += board[square2]
        }
    }
}
if (square1 < finalSquare){
print("Player - 2 Won the game")
}else{
    print("Player - 1 Won the game")
}
