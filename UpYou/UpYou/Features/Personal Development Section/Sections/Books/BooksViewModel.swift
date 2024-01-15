//
//  BooksViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import Foundation

protocol BooksViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class BooksViewModel {
    
    struct Constants {
        static let height: CGFloat = 600
    }
    
    private var service: BooksService = BooksService()
    private var books = [Book]()
    
    private weak var delegate: BooksViewModelDelegate?
    
    public func delegate(delegate: BooksViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getBooks: [Book] {
        books
    }
    
    public var numberOfRowsInSection: Int {
        return books.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentBooks(indexPath: IndexPath) -> Book {
        books[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getBookService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                books = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
