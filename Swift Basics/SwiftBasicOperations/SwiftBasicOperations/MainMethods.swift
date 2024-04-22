//
//  MainMethods.swift
//  SwiftBasicOperations
//
//  Created by admin on 3/14/24.
//

import Foundation
import Combine
import UIKit

class MainMethods {
	static let shared: MainMethods = MainMethods()
	
	func divideTwoNumbers(num1: Int, num2: Int) -> Double {
		var result: Double = 0.000000
		let out = Double(num1) / Double(num2)
		print("Output = \(out)")
		result = out
		return result
	}
	
	func gettingTwoCompletions(num: Int, Completion: (String) -> String) {
		if num > 0 {
			print("gettingTwoCompletions = ",Completion("Positive Number"))
		}
		if num % 2 == 0 {
			print("gettingTwoCompletions = ",Completion("Even Number"))
		}
	}
	
	func gettingTwoCompletions(num: Int, Completion: (String) -> Void) {
		if num > 0 {
			Completion("Positive Number")
		}
		if num % 2 == 0 {
			Completion("Even Number")
		}
	}
	
	func gettingTwoCompletionsWithEscaping(num: Int, Completion: @escaping (String) -> Void) {
		if num > 0 {
			Completion("Positive Number")
		}
		if num % 2 == 0 {
			Completion("Even Number")
		}
	}
	
	var closure: () -> Void = {
		print("closure run!")
	}
	
	func callPassClosure() {
		passClosure(passedClosure: closure)
	}
	
	func passClosure(passedClosure:() -> Void) {
		passedClosure()
	}
	
	func getMinimumCounts(word:String) -> Int {
		let arr = Array(word)
		var map: [String: Int]  = ["" : -1]
		for i in 0..<arr.count {
			if map.keys.contains("\(arr[i])") {
				map["\(arr[i])"]? += 1
			} else {
				map["\(arr[i])"] = 1
			}
		}
		map.removeValue(forKey: "")
		var minOccurance = 0
		for key in map.keys {
			while map[key] != 1 {
				if map[key] == 2 {
					map[key]? -= 1
				} else {
					map[key]? -= 2
				}
				minOccurance += 1
			}
		}
		return minOccurance
	}
	
	let url: URL = URL(string: "https://picsum.photos/200")!
	func downLoadWithCombine() -> AnyPublisher<UIImage?, Error> {
		URLSession.shared.dataTaskPublisher(for: url)
			.map({ (data, response) in
				if let image = UIImage(data: data) {
					print("got Image")
					return image
				} else {
					print("got no Image")
					return nil
				}
			})
			.mapError({ error in
				print("Error = \(error)")
				return error
			})
			.eraseToAnyPublisher()
	}
	
	func downloadWithAsync() async throws -> UIImage? {
		do {
			let (data, _) = try await URLSession.shared.data(from: url)
			guard let image = UIImage(data: data) else {
				throw NSError(domain: "InvalidImageData", code: 0, userInfo: nil)
			}
			return image
		} catch {
			throw error
		}
	}
	
	func doubleReturn(val:Int) -> Bool {
		if val >= 0 {
			return true
		}
		return false
	}	
}
