// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// ThrowingEmptyExampleClient.swift
// EmptyExampleClient
//

import Foundation
import EmptyExampleModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO
import SmokeAWSHttp

/**
 Mock Client for the EmptyExample service that by default always throws from its methods.
 */
public struct ThrowingEmptyExampleClient: EmptyExampleClientProtocol, MockThrowingClientProtocol {
    let error: EmptyExampleError
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> EmptyExampleError = { $0.asTypedError() }
    let addCustomerEmailAddressEventLoopFutureAsyncOverride: AddCustomerEmailAddressEventLoopFutureAsyncType?
    let addCustomerEmailAddressFunctionOverride: AddCustomerEmailAddressFunctionType?
    let createCustomerPutEventLoopFutureAsyncOverride: CreateCustomerPutEventLoopFutureAsyncType?
    let createCustomerPutFunctionOverride: CreateCustomerPutFunctionType?
    let getCustomerDetailsEventLoopFutureAsyncOverride: GetCustomerDetailsEventLoopFutureAsyncType?
    let getCustomerDetailsFunctionOverride: GetCustomerDetailsFunctionType?
    let listCustomersGetEventLoopFutureAsyncOverride: ListCustomersGetEventLoopFutureAsyncType?
    let listCustomersGetFunctionOverride: ListCustomersGetFunctionType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            error: EmptyExampleError,
            eventLoop: EventLoop,
            addCustomerEmailAddressEventLoopFutureAsync: AddCustomerEmailAddressEventLoopFutureAsyncType? = nil,
            addCustomerEmailAddress: AddCustomerEmailAddressFunctionType? = nil,
            createCustomerPutEventLoopFutureAsync: CreateCustomerPutEventLoopFutureAsyncType? = nil,
            createCustomerPut: CreateCustomerPutFunctionType? = nil,
            getCustomerDetailsEventLoopFutureAsync: GetCustomerDetailsEventLoopFutureAsyncType? = nil,
            getCustomerDetails: GetCustomerDetailsFunctionType? = nil,
            listCustomersGetEventLoopFutureAsync: ListCustomersGetEventLoopFutureAsyncType? = nil,
            listCustomersGet: ListCustomersGetFunctionType? = nil) {
        self.error = error
        self.eventLoop = eventLoop
        
        self.addCustomerEmailAddressEventLoopFutureAsyncOverride = addCustomerEmailAddressEventLoopFutureAsync
        self.addCustomerEmailAddressFunctionOverride = addCustomerEmailAddress
        self.createCustomerPutEventLoopFutureAsyncOverride = createCustomerPutEventLoopFutureAsync
        self.createCustomerPutFunctionOverride = createCustomerPut
        self.getCustomerDetailsEventLoopFutureAsyncOverride = getCustomerDetailsEventLoopFutureAsync
        self.getCustomerDetailsFunctionOverride = getCustomerDetails
        self.listCustomersGetEventLoopFutureAsyncOverride = listCustomersGetEventLoopFutureAsync
        self.listCustomersGetFunctionOverride = listCustomersGet
    }

    /**
     Invokes the AddCustomerEmailAddress operation returning immediately with an `EventLoopFuture` that will be completed at a later time.

     - Parameters:
         - input: The validated AddCustomerEmailAddressRequest object being passed to this operation.
     - Returns: A future to the CustomerEmailAddressIdentity object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrency, customerEmailAddressAlreadyExists, customerEmailAddressLimitExceeded, unknownResource.
     */
    public func addCustomerEmailAddress(
            input: EmptyExampleModel.AddCustomerEmailAddressRequest) -> EventLoopFuture<EmptyExampleModel.CustomerEmailAddressIdentity> {
        return mockThrowingEventLoopFutureExecuteWithInputWithOutput(
            input: input,
            defaultError: self.error,
            eventLoop: self.eventLoop,
            functionOverride: self.addCustomerEmailAddressFunctionOverride,
            eventLoopFutureFunctionOverride: self.addCustomerEmailAddressEventLoopFutureAsyncOverride)
    }

    /**
     Invokes the CreateCustomerPut operation returning immediately with an `EventLoopFuture` that will be completed at a later time.

     - Parameters:
         - input: The validated CreateCustomerRequest object being passed to this operation.
     - Returns: A future to the CreateCustomerPut200Response object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    public func createCustomerPut(
            input: EmptyExampleModel.CreateCustomerRequest) -> EventLoopFuture<EmptyExampleModel.CreateCustomerPut200Response> {
        return mockThrowingEventLoopFutureExecuteWithInputWithOutput(
            input: input,
            defaultError: self.error,
            eventLoop: self.eventLoop,
            functionOverride: self.createCustomerPutFunctionOverride,
            eventLoopFutureFunctionOverride: self.createCustomerPutEventLoopFutureAsyncOverride)
    }

    /**
     Invokes the GetCustomerDetails operation returning immediately with an `EventLoopFuture` that will be completed at a later time.

     - Parameters:
         - input: The validated GetCustomerDetailsRequest object being passed to this operation.
     - Returns: A future to the CustomerAttributes object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    public func getCustomerDetails(
            input: EmptyExampleModel.GetCustomerDetailsRequest) -> EventLoopFuture<EmptyExampleModel.CustomerAttributes> {
        return mockThrowingEventLoopFutureExecuteWithInputWithOutput(
            input: input,
            defaultError: self.error,
            eventLoop: self.eventLoop,
            functionOverride: self.getCustomerDetailsFunctionOverride,
            eventLoopFutureFunctionOverride: self.getCustomerDetailsEventLoopFutureAsyncOverride)
    }

    /**
     Invokes the ListCustomersGet operation returning immediately with an `EventLoopFuture` that will be completed at a later time.

     - Parameters:
         - input: The validated ListCustomersGetRequest object being passed to this operation.
     - Returns: A future to the ListCustomersResponse object to be passed back from the caller of this operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    public func listCustomersGet(
            input: EmptyExampleModel.ListCustomersGetRequest) -> EventLoopFuture<EmptyExampleModel.ListCustomersResponse> {
        return mockThrowingEventLoopFutureExecuteWithInputWithOutput(
            input: input,
            defaultError: self.error,
            eventLoop: self.eventLoop,
            functionOverride: self.listCustomersGetFunctionOverride,
            eventLoopFutureFunctionOverride: self.listCustomersGetEventLoopFutureAsyncOverride)
    }
}
