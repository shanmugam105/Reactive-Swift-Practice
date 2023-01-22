//
//  ViewController.swift
//  Reactive-Swift-Practice
//
//  Created by Mac on 15/10/21.
//

import UIKit
import RxSwift

struct User: Codable {
    let name: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let userObserver = NetworkService<[User]>.UserList
        userObserver.getUserList(type: [User].self).subscribe { users in
            print("We got users")
        } onError: { error in
            print("Oops! Error Happening!")
        } onCompleted: {
            print("Completed!")
        } onDisposed: {
            print("Done")
        }
    }
}

enum NetworkService<T: Codable> {
    case UserList
    func getUserList(type: T.Type) -> Observable<T> {
        switch self {
        case .UserList:
            return Observable.create { observer in
                let userListURL: URL = URL(string: "https://jsonplaceholder.typicode.com/users")!
                let request          = URLRequest(url: userListURL)
                let task = URLSession.shared.dataTask(with: request) { result, response, error in
                    if let data = result {
                        let responseString = String(data: data, encoding: .utf8) ?? "Unable to convert as string."
                        print("Response is:-------> \(responseString)")
                        
                        do {
                            let result = try JSONDecoder().decode(type.self, from: data)
                            observer.onNext(result)
                            observer.onCompleted()
                        } catch let error {
                            observer.onError(error)
                        }
                    } else if let error = error {
                        observer.onError(error)
                    }
                }
                task.resume()
                return Disposables.create()
            }
        }
    }
}
