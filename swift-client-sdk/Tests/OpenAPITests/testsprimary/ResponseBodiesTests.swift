// Code generated by Speakeasy (https://speakeasyapi.dev). DO NOT EDIT.

import Foundation

import XCTest
@testable import OpenAPI

class ResponseBodiesTests: XCTestCase {
    var client: Client!

    override func setUp() {
        client = Client(security: .apiKeyAuth("api_key_here"))
    }

    func testResponseBodyJSONGet() async throws {
        try recordTest(named: "response-bodies-json-get")

        let response = try await client.responseBodyJsonGet()
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.author, "Yours Truly")
        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.date, "date of publication")
        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.title, "Sample Slide Show")

        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.slides[safelyIndexed: 0]?.title, "Wake up to WonderWidgets!")
        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.slides[safelyIndexed: 0]?.type, "all")

        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.slides[safelyIndexed: 1]?.title, "Overview")
        XCTAssertEqual(try response.data.httpBinSimpleJsonObject().slideshow.slides[safelyIndexed: 1]?.type, "all")
        XCTAssertEqual(
            try response.data.httpBinSimpleJsonObject().slideshow.slides[safelyIndexed: 1]?.items,
            ["Why <em>WonderWidgets</em> are great", "Who <em>buys</em> WonderWidgets"]
        )
    }

    func testResponseBodyStringGet() async throws {
        try recordTest(named: "response-bodies-string-get")

        let response = try await client.responseBodies.responseBodyStringGet()
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.html(), "<!DOCTYPE html>\n<html>\n  <head>\n  </head>\n  <body>\n      <h1>Herman Melville - Moby-Dick</h1>\n\n      <div>\n        <p>\n          Availing himself of the mild, summer-cool weather that now reigned in these latitudes, and in preparation for the peculiarly active pursuits shortly to be anticipated, Perth, the begrimed, blistered old blacksmith, had not removed his portable forge to the hold again, after concluding his contributory work for Ahab's leg, but still retained it on deck, fast lashed to ringbolts by the foremast; being now almost incessantly invoked by the headsmen, and harpooneers, and bowsmen to do some little job for them; altering, or repairing, or new shaping their various weapons and boat furniture. Often he would be surrounded by an eager circle, all waiting to be served; holding boat-spades, pike-heads, harpoons, and lances, and jealously watching his every sooty movement, as he toiled. Nevertheless, this old man's was a patient hammer wielded by a patient arm. No murmur, no impatience, no petulance did come from him. Silent, slow, and solemn; bowing over still further his chronically broken back, he toiled away, as if toil were life itself, and the heavy beating of his hammer the heavy beating of his heart. And so it was.—Most miserable! A peculiar walk in this old man, a certain slight but painful appearing yawing in his gait, had at an early period of the voyage excited the curiosity of the mariners. And to the importunity of their persisted questionings he had finally given in; and so it came to pass that every one now knew the shameful story of his wretched fate. Belated, and not innocently, one bitter winter's midnight, on the road running between two country towns, the blacksmith half-stupidly felt the deadly numbness stealing over him, and sought refuge in a leaning, dilapidated barn. The issue was, the loss of the extremities of both feet. Out of this revelation, part by part, at last came out the four acts of the gladness, and the one long, and as yet uncatastrophied fifth act of the grief of his life's drama. He was an old man, who, at the age of nearly sixty, had postponedly encountered that thing in sorrow's technicals called ruin. He had been an artisan of famed excellence, and with plenty to do; owned a house and garden; embraced a youthful, daughter-like, loving wife, and three blithe, ruddy children; every Sunday went to a cheerful-looking church, planted in a grove. But one night, under cover of darkness, and further concealed in a most cunning disguisement, a desperate burglar slid into his happy home, and robbed them all of everything. And darker yet to tell, the blacksmith himself did ignorantly conduct this burglar into his family's heart. It was the Bottle Conjuror! Upon the opening of that fatal cork, forth flew the fiend, and shrivelled up his home. Now, for prudent, most wise, and economic reasons, the blacksmith's shop was in the basement of his dwelling, but with a separate entrance to it; so that always had the young and loving healthy wife listened with no unhappy nervousness, but with vigorous pleasure, to the stout ringing of her young-armed old husband's hammer; whose reverberations, muffled by passing through the floors and walls, came up to her, not unsweetly, in her nursery; and so, to stout Labor's iron lullaby, the blacksmith's infants were rocked to slumber. Oh, woe on woe! Oh, Death, why canst thou not sometimes be timely? Hadst thou taken this old blacksmith to thyself ere his full ruin came upon him, then had the young widow had a delicious grief, and her orphans a truly venerable, legendary sire to dream of in their after years; and all of them a care-killing competency.\n        </p>\n      </div>\n  </body>\n</html>")
    }

    func testResponseBodyXMLGet() async throws {
        try recordTest(named: "response-bodies-xml-get")

        let response = try await client.responseBodies.responseBodyXmlGet()
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.xml(), "<?xml version='1.0' encoding='us-ascii'?>\n\n<!--  A SAMPLE set of slides  -->\n\n<slideshow \n    title=\"Sample Slide Show\"\n    date=\"Date of publication\"\n    author=\"Yours Truly\"\n    >\n\n    <!-- TITLE SLIDE -->\n    <slide type=\"all\">\n      <title>Wake up to WonderWidgets!</title>\n    </slide>\n\n    <!-- OVERVIEW -->\n    <slide type=\"all\">\n        <title>Overview</title>\n        <item>Why <em>WonderWidgets</em> are great</item>\n        <item/>\n        <item>Who <em>buys</em> WonderWidgets</item>\n    </slide>\n\n</slideshow>")
    }

    func testResponseBodyBytesGet() async throws {
        try recordTest(named: "response-bodies-bytes-get")

        let response = try await client.responseBodies.responseBodyBytesGet()
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.bytes().count, 100)
    }

    func testResponseBodyReadOnly() async throws {
        try recordTest(named: "response-bodies-read-only")

        let response = try await client.responseBodies.responseBodyReadOnly(
            server: nil
        )
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(try response.data.readOnlyObject().bool, true)
        XCTAssertEqual(try response.data.readOnlyObject().num, 1.0)
        XCTAssertEqual(try response.data.readOnlyObject().string, "hello")
    }

    func testResponseBodyEmptyWithHeaders() async throws {
        try recordTest(named: "response-bodies-empty-with-headers")

        let response = try await client.responseBodies.responseBodyEmptyWithHeaders(request: .init(
            xNumberHeader: 1.1,
            xStringHeader: "hello"
        ))
        XCTAssertEqual(response.statusCode, 200, "Request should succeed")
        XCTAssertEqual(response.headers?["X-String-Header"], "hello")
        XCTAssertEqual(response.headers?["X-Number-Header"], "1.1")
    }
}