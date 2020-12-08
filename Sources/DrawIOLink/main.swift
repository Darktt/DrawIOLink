import Foundation
import ArgumentParser

private let kUrl: String = "data:action/json,{\"actions\":[{\"scroll\": {\"cells\":[\"**ITEM-ID**\"]}}, {\"highlight\":{\"cells\":[\"**ITEM-ID**\"],\"opacity\":100, \"color\": \"red\"}}]}"
private let kPlaceHolder: String = "**ITEM-ID**"

struct LinkMaker: ParsableCommand
{
	@Argument(help: "The Draw IO item ID, you can find in [Arrange] tab [Edit data] button.")
	private var itemID: String

	func run()
	{
		let urlString: String = kUrl.replacingOccurrences(of: kPlaceHolder, with: self.itemID)

        print("\(urlString)")
	}
}

LinkMaker.main()