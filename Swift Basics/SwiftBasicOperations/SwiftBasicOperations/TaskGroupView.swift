//
//  TaskGroupView.swift
//  SwiftBasicOperations
//
//  Created by admin on 4/8/24.
//

import SwiftUI

class TaskGroupDataManager {
	func fetchImagesWithTaskGroup() async throws -> [UIImage] {
		try await withThrowingTaskGroup(of: UIImage.self) { group in
			var images: [UIImage] = []
			group.addTask {
				try await self.fetchImage(imageUrlString: "https://picsum.photos/200")
			}
			group.addTask {
				try await self.fetchImage(imageUrlString: "https://picsum.photos/200")
			}
			group.addTask {
				try await self.fetchImage(imageUrlString: "https://picsum.photos/200")
			}
			group.addTask {
				try await self.fetchImage(imageUrlString: "https://picsum.photos/200")
			}
			for try await image in group {
				images.append(image)
			}
			return images
		}
	}
	
	func fetchImage(imageUrlString: String) async throws -> UIImage {
		guard let url = URL(string: imageUrlString) else { throw URLError(.badURL) }
		
		do {
			let (data, _) = try await URLSession.shared.data(from: url)
			if let image = UIImage(data: data) {
				print("Got image")
				return image
			} else {
				throw URLError(.badURL)
			}
		} catch {
			throw error
		}
	}
	
	@MyGlobalActor func setTitleValue() {
		Task {
			await MyGlobalActor.shared.update(title: "FINAL UPDATE")
			await print("Title = \(MyGlobalActor.shared.title)")
		}
	}
}

class TaskGroupViewModel: ObservableObject {
	@Published var images: [UIImage] = []
	let manager = TaskGroupDataManager()
	
	func getImages() async {
		if let images = try? await manager.fetchImagesWithTaskGroup() {
			await MainActor.run {
				self.images.append(contentsOf: images)
			}
		}
	}
}

struct TaskGroupView: View {
	@StateObject private var viewModel = TaskGroupViewModel()
	
	var body: some View {
		let columns = [GridItem(.flexible()), GridItem(.flexible())]
		NavigationView {
			ScrollView {
				LazyVGrid(columns: columns) {
					ForEach(viewModel.images, id: \.self) { image in
						Image(uiImage: image)
					}
				}
			}
			.navigationTitle("Task Group")
		}
		.task {
			await viewModel.getImages()
			
			await TaskGroupDataManager().setTitleValue()
		}
	}
}

actor MyActor {
	var title: String
	
	init(title: String) {
		self.title = title
	}
	
	func update(title:String) {
		self.title = title
	}
}

actor Account {
	var balance:Int = 20
	nonisolated let date:Date = .now
	func withdraw(amount: Int) {
		debugPrint("Got into withdraw function")
		guard balance - amount >= 0 else {
			print("not sufficient amount balance = \(balance) and asking to withdraw amount = \(amount)")
			return
		}
		Thread.sleep(forTimeInterval: 2)
		balance -= amount
		debugPrint("Amount deducted now Balance = \(balance)")
	}
	
	nonisolated func getTime() -> String {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "HH:mm:ss"
		return dateFormatter.string(for: date)!
	}
}

@globalActor struct MyGlobalActor {
	static var shared = MyActor(title: "Empathy")
}

struct TaskGroupView_Previews: PreviewProvider {
	static var previews: some View {
		TaskGroupView()
	}
}
