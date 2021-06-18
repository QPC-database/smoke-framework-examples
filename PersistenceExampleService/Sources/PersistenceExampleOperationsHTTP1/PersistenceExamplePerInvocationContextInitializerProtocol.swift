//
// PersistenceExamplePerInvocationContextInitializerProtocol.swift
// PersistenceExampleOperationsHTTP1
//

import PersistenceExampleModel
import PersistenceExampleOperations
import SmokeHTTP1
import SmokeOperationsHTTP1Server
import NIO
            
/**
 Convenience protocol for the initialization of PersistenceExampleService.
 */
public protocol PersistenceExamplePerInvocationContextInitializerProtocol: StandardJSONSmokeServerPerInvocationContextInitializer
where ContextType == PersistenceExampleOperationsContext, OperationIdentifer == PersistenceExampleModelOperations {
        init(eventLoopGroup: EventLoopGroup) throws
}

public extension PersistenceExamplePerInvocationContextInitializerProtocol {
    // specify how to initalize the server with operations
    var operationsInitializer: OperationsInitializerType {
        return PersistenceExampleModelOperations.addToSmokeServer
    }

    var serverName: String {
        return "PersistenceExampleService"
    }
}

extension PersistenceExamplePerInvocationContextInitializerProtocol {
    public static func main() {
        SmokeHTTP1Server.runAsOperationServer(Self.init)
    }
}
