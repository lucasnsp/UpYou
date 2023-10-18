//
//  BooksViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import UIKit

protocol BooksViewModelDelegate: AnyObject {
    func success()
    func error()
}

class BooksViewModel {
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
        return 600
    }
    
    public func loadCurrentBooks(indexPath: IndexPath) -> Book {
        books[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getBookService { [weak self ] booksData, error in
            guard let self else { return }
            if error == nil {
                self.books = booksData?.books ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
