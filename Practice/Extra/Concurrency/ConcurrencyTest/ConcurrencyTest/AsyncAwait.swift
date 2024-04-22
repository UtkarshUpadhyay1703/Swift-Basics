//
//  AsyncAwait.swift
//  ConcurrencyTest
//
//  Created by admin on 2/2/24.
//

import SwiftUI

class AsyncAwaitViewModel: ObservableObject{
	@Published var textChange: String = "0"
	
	func assignTask1() async {
		try? await Task.sleep(nanoseconds: 3_000_000_000)
		
		await MainActor.run {
			textChange = "1"
		}
	}
	
	func assignTask2() async{
		try? await Task.sleep(nanoseconds: 2_000_000_000)
		await MainActor.run {
			textChange = "2"
			print("Set 2")
		}
	}
	
	func assignTask3(){
		textChange = "100"
		print("Set 100")
	}
}


struct AsyncAwait: View {
	@StateObject private var vm = AsyncAwaitViewModel()
	
    var body: some View {
		VStack{
			Text(vm.textChange)
			
		}
		.onAppear {
			Task{
				await vm.assignTask1()
				await vm.assignTask2()
				vm.assignTask3()
			}
			Task{
				await vm.assignTask2()
				vm.assignTask3()
			}
		}
    }
}

struct AsyncAwait_Previews: PreviewProvider {
    static var previews: some View {
        AsyncAwait()
    }
}
