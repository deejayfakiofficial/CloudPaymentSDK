//
//  PublicKeyRequest.swift
//  Cloudpayments
//
//  Created by CloudPayments on 31.05.2023.
//

import Foundation
import networking

final class Network: BaseRequest, CloudpaymentsRequestType {
    var data: networking.CloudpaymentsRequest
    typealias ResponseType = PublicKeyData
    
    private init() {data = .init(path: PublicKeyData.apiURL + "payments/publickey")}
    
    public static func updatePublicCryptoKey() {
        Network().execute { value in
            value.save()
        } onError: { string in
            print(string.localizedDescription)
        }
    }
}

