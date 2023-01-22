import UIKit
import RxSwift
import RxCocoa

// 1
//let one = 1
//let two = 2
//let three = 3

// 2
//let observable1 = Observable.just(one)
//
//let observable2 = Observable.of([one, two, three], [one, two, three])
//
//let observable3 = Observable.from([one, two, three])
//
//let observable4 = Observable<Void>.empty()
//
//
//// 1
//let observable = Observable.of("A", "B", "C")
//// 2
//let subscription = observable.subscribe { event in
//    // 3
//    print(event)
//}

// MARK:- Subjects

//let subject1 = PublishSubject<String>()
//subject1.onNext("Is anyone listening?")
//
//let subscription1 = subject1
//    .subscribe(onNext: tempFunc)
//func tempFunc(_ string: String) {
//    print("Print")
//    print("\(string)")
//}
//
//subject1.onNext("1")
//subject1.onNext("2")


// 1
//enum MyError: Error {
//  case anError
//}
//// 2
//func print<T: CustomStringConvertible>(label: String, event: Event<T>) {
//  print(label, (event.element ?? event.error) ?? event)
//}
//// 3
//let subject = BehaviorSubject(value: "Initial value")
//let disposeBag = DisposeBag()
//
//subject.subscribe {
//    print($0)
//}.disposed(by: disposeBag)
//
//subject.onNext("One")

//let disposeBag = DisposeBag()
//
// // 1
// var flip = false
//
// // 2
// let factory: Observable<Int> = Observable.deferred {
//
// // 3
// flip.toggle()
//
// // 4
// if flip {
// return Observable.of(1, 2, 3)
// } else {
// return Observable.of(4, 5, 6)
// }
// }


//Create a BehaviorSubject
//let subject = BehaviorSubject(value: "111")
//subject.onNext("2221")
//subject.onNext("2222")
//subject.onNext("2223")
//Subscribe for the first time subject
//subject.subscribe {event in
//     print("The first subscription:", event)
//} onError: { err in
//    print(err.localizedDescription)
//}
//.disposed(by: disposeBag)
//subject.onNext("333")
//subject.onNext("3331")
//subject.onNext("3332")
//subject.onNext("3333")
//subject.onNext("3334")
//subject.onNext("3335")
//subject.on
