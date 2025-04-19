import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Hello Abbas"
    var titleSuffix = " – My Awesome Site"
    var url = URL(static: "https://github.com/indieappscreator/tracker")
    var builtInIconsEnabled = true

    var author = "John Appleseed"

    var homePage = Home()
    var layout = MainLayout()
}
