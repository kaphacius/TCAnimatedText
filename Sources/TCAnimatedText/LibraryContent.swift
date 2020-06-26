
import SwiftUI

@available (iOS 14.0, macOS 10.16, *)
struct LibraryContent: LibraryContentProvider {
    
    @State var tmp: String = ""
    
    @LibraryContentBuilder
    var views: [LibraryItem] {
        LibraryItem(
            AnimatedText($tmp, charDuration: 0.2) { text in
                text
            },
            visible: true,
            title: "TC Animated Text",
            category: LibraryItem.Category.layout
        )
    }
}
