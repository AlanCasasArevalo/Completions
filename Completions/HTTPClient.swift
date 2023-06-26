import Foundation

public protocol HTTPClientTask {
    func cancel()
}

public protocol HTTPClient {
    typealias Result = Swift.Result<Data?, Error>

    func fetch(from request: URLRequest, completion: @escaping (HTTPClient.Result) -> Void) -> HTTPClientTask
}
