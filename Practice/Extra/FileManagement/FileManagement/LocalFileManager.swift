//
//  LocalFileManager.swift
//  FileManagement
//
//  Created by admin on 9/7/23.
//

import Foundation
class LocalFileManager {
    static let instance = LocalFileManager()
    let folderName = "MyApp_Images"
    init() {
        createFolderIfNeeded()
    }
    
    func createFolderIfNeeded() -> String {
        guard let path = FileManager
                .default
                .urls(for: .cachesDirectory, in: .userDomainMask)
                .first?
                .appendingPathComponent(folderName)
                .path else {
                    return ""
                }
        if !FileManager.default.fileExists(atPath: path){
            do{
                try FileManager.default.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
                print("Successfully created Folder")
                return "Successfully created Folder"
            } catch let error {
                print("Error Creating folder \(error)")
                return "Error Creating folder"
            }
        }
        return ""
    }
    
    func createPathForImage(name: String) -> URL? {
        guard let path = FileManager
                .default
                .urls(for: .cachesDirectory, in: .userDomainMask)
                .first?
                .appendingPathComponent("\(name).jpg") else {
                    print("Error getting Path")
                    return nil
                }
        return path
                
    }
    
//    func getImageFromAssets
    
    func saveImage(){
        
    }
    
    func deleteFolder() -> String {
        guard let path = FileManager
                .default
                .urls(for: .cachesDirectory, in: .userDomainMask)
                .first?
                .appendingPathComponent(folderName)
                .path
        else {
            return ""
        }
        do{
            try FileManager.default.removeItem(atPath: path)
            return "Successfully deleted folder"
        } catch let error {
            print("Error Deleting Folder \(error)")
            return "Error in Deleting Folder"
        }
    }
}
