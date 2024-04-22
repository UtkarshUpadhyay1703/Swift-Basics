//
//  ContentView.swift
//  SwiftBasicOperations
//
//  Created by admin on 3/14/24.
//

import SwiftUI
import Combine

struct ContentView: View {
	let mainMethod = MainMethods.shared
	@State private var result: Double = 0.0
	@State private var resultString: String = ""
	@State private var resultInt: Int = -1
	@State private var image: UIImage?
	var body: some View {
		VStack {
			Image(systemName: "globe")
				.imageScale(.large)
				.foregroundColor(.accentColor)
			Text("Hello, world!")
			Text("Hello = \(result)")
			Text("Result for String bacaabaccb = \(resultInt)")
			if let image = image {
				Image(uiImage: image)
			} else {
				Text("No Image")
			}
		}
		.padding()
		.onAppear {
			
			result = mainMethod.divideTwoNumbers(num1: 1, num2: 3)
			
			mainMethod.gettingTwoCompletions(num: 4, Completion: { completionResponse in
				debugPrint("completionResponse = \(completionResponse)")
				resultString = completionResponse
				return "Sahi hai bhai"
			})
			
			mainMethod.callPassClosure()
			
			resultInt = mainMethod.getMinimumCounts(word: "bacaabaccb")
			
			//			var cancel = Set<AnyCancellable>()
			//			mainMethod.downLoadWithCombine()
			//				.receive(on: DispatchQueue.main)
			//				.sink { _ in
			//
			//			} receiveValue: { imageVal in
			//				image = imageVal
			//			}
			//			.store(in: &cancel)
			
			Task {
				image = try? await mainMethod.downloadWithAsync()
			}
			
			print("doubleReturn = ",mainMethod.doubleReturn(val: 11))
			
			Task {
				let myActor:MyActor = MyActor(title: "First")
				await print("MyActor title = \(myActor.title)")
			}
			let account1 = Account()
			let account2 = Account()
			Task {
				await account2.withdraw(amount: 5)
				await account1.withdraw(amount: 5)
			}
			
			Task {
				await account1.withdraw(amount: 20)
				await account2.withdraw(amount: 10)
			}
			print("Date = \(account1.date) \n Time = \(account1.getTime())")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		ContentView()
	}
}
