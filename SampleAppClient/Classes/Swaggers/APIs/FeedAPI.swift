//
// FeedAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire
import RxSwift



open class FeedAPI {
    /**
     Return all users.
     
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getApiV1Feed(completion: @escaping ((_ data: [Micropost]?,_ error: Error?) -> Void)) {
        getApiV1FeedWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error);
        }
    }

    /**
     Return all users.
     
     - returns: Observable<[Micropost]>
     */
    open class func getApiV1Feed() -> Observable<[Micropost]> {
        return Observable.create { observer -> Disposable in
            getApiV1Feed() { data, error in
                if let error = error {
                    observer.on(.error(error))
                } else {
                    observer.on(.next(data!))
                }
                observer.on(.completed)
            }
            return Disposables.create()
        }
    }

    /**
     Return all users.
     - GET /api/v1/feed
     - Return all users.
     - examples: [{contentType=application/json, example=[ {
  "user_id" : 6,
  "id" : 0,
  "content" : "content",
  "picture" : {
    "url" : "url"
  }
}, {
  "user_id" : 6,
  "id" : 0,
  "content" : "content",
  "picture" : {
    "url" : "url"
  }
} ]}]

     - returns: RequestBuilder<[Micropost]> 
     */
    open class func getApiV1FeedWithRequestBuilder() -> RequestBuilder<[Micropost]> {
        let path = "/api/v1/feed"
        let URLString = SampleAppClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)


        let requestBuilder: RequestBuilder<[Micropost]>.Type = SampleAppClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}