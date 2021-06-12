// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length line_length identifier_name type_name vertical_parameter_alignment
// swiftlint:disable type_body_length function_body_length generic_type_name cyclomatic_complexity
// -- Generated Code; do not edit --
//
// MockPersistenceExampleClient.swift
// PersistenceExampleClient
//

import Foundation
import PersistenceExampleModel
import SmokeAWSCore
import SmokeHTTPClient
import NIO

#if compiler(>=5.5) && $AsyncAwait
import _NIOConcurrency
#endif

/**
 Mock Client for the PersistenceExample service by default returns the `__default` property of its return type.
 */
public struct MockPersistenceExampleClient: PersistenceExampleClientProtocol {
    let eventLoop: EventLoop
    let typedErrorProvider: (Swift.Error) -> PersistenceExampleError = { $0.asTypedError() }
    let addCustomerEmailAddressEventLoopFutureAsyncOverride: AddCustomerEmailAddressEventLoopFutureAsyncType?
    let createCustomerPutEventLoopFutureAsyncOverride: CreateCustomerPutEventLoopFutureAsyncType?
    let getCustomerDetailsEventLoopFutureAsyncOverride: GetCustomerDetailsEventLoopFutureAsyncType?
    let listCustomersGetEventLoopFutureAsyncOverride: ListCustomersGetEventLoopFutureAsyncType?

    /**
     Initializer that creates an instance of this clients. The behavior of individual
     functions can be overridden by passing them to this initializer.
     */
    public init(
            eventLoop: EventLoop,
            addCustomerEmailAddressEventLoopFutureAsync: AddCustomerEmailAddressEventLoopFutureAsyncType? = nil,
            createCustomerPutEventLoopFutureAsync: CreateCustomerPutEventLoopFutureAsyncType? = nil,
            getCustomerDetailsEventLoopFutureAsync: GetCustomerDetailsEventLoopFutureAsyncType? = nil,
            listCustomersGetEventLoopFutureAsync: ListCustomersGetEventLoopFutureAsyncType? = nil) {
        self.eventLoop = eventLoop
        
        self.addCustomerEmailAddressEventLoopFutureAsyncOverride = addCustomerEmailAddressEventLoopFutureAsync
        self.createCustomerPutEventLoopFutureAsyncOverride = createCustomerPutEventLoopFutureAsync
        self.getCustomerDetailsEventLoopFutureAsyncOverride = getCustomerDetailsEventLoopFutureAsync
        self.listCustomersGetEventLoopFutureAsyncOverride = listCustomersGetEventLoopFutureAsync
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
            input: PersistenceExampleModel.AddCustomerEmailAddressRequest) -> EventLoopFuture<PersistenceExampleModel.CustomerEmailAddressIdentity> {
        if let addCustomerEmailAddressEventLoopFutureAsyncOverride = addCustomerEmailAddressEventLoopFutureAsyncOverride {
            return addCustomerEmailAddressEventLoopFutureAsyncOverride(input)
        }

        let result = CustomerEmailAddressIdentity.__default
        
        let promise = self.eventLoop.makePromise(of: CustomerEmailAddressIdentity.self)
        promise.succeed(result)
        
        return promise.futureResult
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
            input: PersistenceExampleModel.CreateCustomerRequest) -> EventLoopFuture<PersistenceExampleModel.CreateCustomerPut200Response> {
        if let createCustomerPutEventLoopFutureAsyncOverride = createCustomerPutEventLoopFutureAsyncOverride {
            return createCustomerPutEventLoopFutureAsyncOverride(input)
        }

        let result = CreateCustomerPut200Response.__default
        
        let promise = self.eventLoop.makePromise(of: CreateCustomerPut200Response.self)
        promise.succeed(result)
        
        return promise.futureResult
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
            input: PersistenceExampleModel.GetCustomerDetailsRequest) -> EventLoopFuture<PersistenceExampleModel.CustomerAttributes> {
        if let getCustomerDetailsEventLoopFutureAsyncOverride = getCustomerDetailsEventLoopFutureAsyncOverride {
            return getCustomerDetailsEventLoopFutureAsyncOverride(input)
        }

        let result = CustomerAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: CustomerAttributes.self)
        promise.succeed(result)
        
        return promise.futureResult
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
            input: PersistenceExampleModel.ListCustomersGetRequest) -> EventLoopFuture<PersistenceExampleModel.ListCustomersResponse> {
        if let listCustomersGetEventLoopFutureAsyncOverride = listCustomersGetEventLoopFutureAsyncOverride {
            return listCustomersGetEventLoopFutureAsyncOverride(input)
        }

        let result = ListCustomersResponse.__default
        
        let promise = self.eventLoop.makePromise(of: ListCustomersResponse.self)
        promise.succeed(result)
        
        return promise.futureResult
    }

    #if compiler(>=5.5) && $AsyncAwait
    /**
     Invokes the AddCustomerEmailAddress operation returning aynchronously at a later time once the operation is complete.

     - Parameters:
         - input: The validated AddCustomerEmailAddressRequest object being passed to this operation.
     - Returns: The CustomerEmailAddressIdentity object to be passed back from the caller of this async operation.
         Will be validated before being returned to caller.
           The possible errors are: concurrency, customerEmailAddressAlreadyExists, customerEmailAddressLimitExceeded, unknownResource.
     */
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    public func addCustomerEmailAddress(
            input: PersistenceExampleModel.AddCustomerEmailAddressRequest) async throws -> PersistenceExampleModel.CustomerEmailAddressIdentity {
        if let addCustomerEmailAddressEventLoopFutureAsyncOverride = addCustomerEmailAddressEventLoopFutureAsyncOverride {
            return try await addCustomerEmailAddressEventLoopFutureAsyncOverride(input).get()
        }

        let result = CustomerEmailAddressIdentity.__default
        
        let promise = self.eventLoop.makePromise(of: CustomerEmailAddressIdentity.self)
        promise.succeed(result)
        
        return try await promise.futureResult.get()
    }

    /**
     Invokes the CreateCustomerPut operation returning aynchronously at a later time once the operation is complete.

     - Parameters:
         - input: The validated CreateCustomerRequest object being passed to this operation.
     - Returns: The CreateCustomerPut200Response object to be passed back from the caller of this async operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    public func createCustomerPut(
            input: PersistenceExampleModel.CreateCustomerRequest) async throws -> PersistenceExampleModel.CreateCustomerPut200Response {
        if let createCustomerPutEventLoopFutureAsyncOverride = createCustomerPutEventLoopFutureAsyncOverride {
            return try await createCustomerPutEventLoopFutureAsyncOverride(input).get()
        }

        let result = CreateCustomerPut200Response.__default
        
        let promise = self.eventLoop.makePromise(of: CreateCustomerPut200Response.self)
        promise.succeed(result)
        
        return try await promise.futureResult.get()
    }

    /**
     Invokes the GetCustomerDetails operation returning aynchronously at a later time once the operation is complete.

     - Parameters:
         - input: The validated GetCustomerDetailsRequest object being passed to this operation.
     - Returns: The CustomerAttributes object to be passed back from the caller of this async operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    public func getCustomerDetails(
            input: PersistenceExampleModel.GetCustomerDetailsRequest) async throws -> PersistenceExampleModel.CustomerAttributes {
        if let getCustomerDetailsEventLoopFutureAsyncOverride = getCustomerDetailsEventLoopFutureAsyncOverride {
            return try await getCustomerDetailsEventLoopFutureAsyncOverride(input).get()
        }

        let result = CustomerAttributes.__default
        
        let promise = self.eventLoop.makePromise(of: CustomerAttributes.self)
        promise.succeed(result)
        
        return try await promise.futureResult.get()
    }

    /**
     Invokes the ListCustomersGet operation returning aynchronously at a later time once the operation is complete.

     - Parameters:
         - input: The validated ListCustomersGetRequest object being passed to this operation.
     - Returns: The ListCustomersResponse object to be passed back from the caller of this async operation.
         Will be validated before being returned to caller.
           The possible errors are: unknownResource.
     */
    @available(macOS 9999, iOS 9999, watchOS 9999, tvOS 9999, *)
    public func listCustomersGet(
            input: PersistenceExampleModel.ListCustomersGetRequest) async throws -> PersistenceExampleModel.ListCustomersResponse {
        if let listCustomersGetEventLoopFutureAsyncOverride = listCustomersGetEventLoopFutureAsyncOverride {
            return try await listCustomersGetEventLoopFutureAsyncOverride(input).get()
        }

        let result = ListCustomersResponse.__default
        
        let promise = self.eventLoop.makePromise(of: ListCustomersResponse.self)
        promise.succeed(result)
        
        return try await promise.futureResult.get()
    }
    #endif
}
