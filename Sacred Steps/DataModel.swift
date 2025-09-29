//
//  DataModel.swift
//  Sacred Steps
//
//  Created by Justin Hold on 9/29/25.
//


import Foundation
import SwiftData

/// A SwiftData model representing a single verse from a religious text.
///
/// This model stores the complete information needed to identify and retrieve
/// a specific verse, including its location (book, chapter, verse number),
/// content (text), and ordering information (bookIndex).
///
/// - Note: Each instance is guaranteed to have a unique ID through the `@Attribute(.unique)` constraint.
@Model
final class DataModel {
    
    // MARK: - Properties
    
    /// A unique identifier for this verse.
    ///
    /// The `@Attribute(.unique)` constraint ensures no duplicate IDs exist in the database,
    /// preventing data corruption and enabling reliable verse lookups.
    @Attribute(.unique) var id: UUID = UUID()
    
    /// The name of the book containing this verse.
    ///
    /// Examples: "Genesis", "Matthew", "Psalms"
    var book: String
    
    /// The chapter number where this verse appears.
    ///
    /// Chapter numbering typically starts at 1.
    var chapter: Int
    
    /// The verse number within the chapter.
    ///
    /// Verse numbering typically starts at 1 within each chapter.
    var verseNumber: Int
    
    /// The complete text content of the verse.
    ///
    /// This contains the actual words of the verse as they appear in the source text.
    var text: String
    
    /// An index value representing the book's position in the canonical order.
    ///
    /// This enables sorting books in their traditional order (e.g., Genesis = 1, Exodus = 2).
    /// Useful for displaying verses in the correct sequence across different books.
    var bookIndex: Int
    
    // MARK: - Initialization
    
    /// Creates a new verse model with the specified properties.
    ///
    /// - Parameters:
    ///   - book: The name of the book (e.g., "Genesis", "Matthew")
    ///   - chapter: The chapter number (typically starting from 1)
    ///   - verseNumber: The verse number within the chapter (typically starting from 1)
    ///   - text: The complete text content of the verse
    ///   - bookIndex: The canonical ordering index of the book
    ///
    /// - Note: The `id` property is automatically generated with a new UUID
    ///   and does not need to be provided during initialization.
    init(
        book: String,
        chapter: Int,
        verseNumber: Int,
        text: String,
        bookIndex: Int
    ) {
        self.book = book
        self.chapter = chapter
        self.verseNumber = verseNumber
        self.text = text
        self.bookIndex = bookIndex
    }
}
