//
//  PaymentDelegate.swift
//  sdk
//
//  Created by Sergey Iskhakov on 08.10.2020.
//  Copyright © 2020 Cloudpayments. All rights reserved.
//

public protocol PaymentDelegate: AnyObject {
    func onPaymentFinished(_ transactionId: Int64?, _ orderId: Int)
    func onPaymentFailed(_ errorMessage: String?, _ orderId: Int)
    func onPaymentCanceled(_ orderId: Int)
}

public protocol PaymentUIDelegate: AnyObject {
    func paymentFormWillDisplay()
    func paymentFormDidDisplay()
    func paymentFormWillHide()
    func paymentFormDidHide()
}

internal class PaymentDelegateImpl {
    weak var delegate: PaymentDelegate?
    
    init(delegate: PaymentDelegate?) {
        self.delegate = delegate
    }
    
    func paymentFinished(_ transaction: Transaction?, _ orderId: Int){
        self.delegate?.onPaymentFinished(transaction?.transactionId, orderId)
    }
    
    func paymentFailed(_ errorMessage: String?, _ orderId: Int) {
        self.delegate?.onPaymentFailed(errorMessage, orderId)
    }

    func paymentCanceled(_ orderId: Int) {
        self.delegate?.onPaymentCanceled(orderId)
    }
}

internal class PaymentUIDelegateImpl {
    weak var delegate: PaymentUIDelegate?
    
    init(delegate: PaymentUIDelegate?) {
        self.delegate = delegate
    }
    
    func paymentFormWillDisplay() {
        self.delegate?.paymentFormWillDisplay()
    }
    
    func paymentFormDidDisplay() {
        self.delegate?.paymentFormDidDisplay()
    }
    
    func paymentFormWillHide() {
        self.delegate?.paymentFormWillHide()
    }
    
    func paymentFormDidHide() {
        self.delegate?.paymentFormDidHide()
    }
}
