import EsaKit
import ReactiveSwift
import Foundation

let client = EsaClient(token: "your_token", teamName: "your_team_name")

client.members()
    .startWithResult { result in
        switch result {
        case let .success(response, members):
            print("\(response)") // => Response(xRateLimitLimit: 75, XRateLimitRemaining: 71)
            print("\(members)")  // => Memberss(members: [EsaKit.MemberUser(name:...
        case let .failure(error):
            print("An error occured: \(error)")
        }
}

client.posts()
    .startWithResult { result in
        switch result {
        case let .success(response, posts):
            print("\(response)") // => Response(xRateLimitLimit: 75, XRateLimitRemaining: 70)
            print("\(posts)")    // => Posts(posts: [EsaKit.Post(number: 11, name:...
        case let .failure(error):
            print("An error occured: \(error)")
        }
}

RunLoop.main.run(until: Date(timeIntervalSinceNow: 15)) // Workaround
