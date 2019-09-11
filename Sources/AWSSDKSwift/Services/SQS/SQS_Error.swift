// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for SQS
public enum SQSErrorType: AWSErrorType {
    case batchEntryIdsNotDistinct(message: String?)
    case batchRequestTooLong(message: String?)
    case emptyBatchRequest(message: String?)
    case invalidAttributeName(message: String?)
    case invalidBatchEntryId(message: String?)
    case invalidIdFormat(message: String?)
    case invalidMessageContents(message: String?)
    case messageNotInflight(message: String?)
    case overLimit(message: String?)
    case purgeQueueInProgress(message: String?)
    case queueDeletedRecently(message: String?)
    case queueDoesNotExist(message: String?)
    case queueNameExists(message: String?)
    case receiptHandleIsInvalid(message: String?)
    case tooManyEntriesInBatchRequest(message: String?)
    case unsupportedOperation(message: String?)
}

extension SQSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "BatchEntryIdsNotDistinct":
            self = .batchEntryIdsNotDistinct(message: message)
        case "BatchRequestTooLong":
            self = .batchRequestTooLong(message: message)
        case "EmptyBatchRequest":
            self = .emptyBatchRequest(message: message)
        case "InvalidAttributeName":
            self = .invalidAttributeName(message: message)
        case "InvalidBatchEntryId":
            self = .invalidBatchEntryId(message: message)
        case "InvalidIdFormat":
            self = .invalidIdFormat(message: message)
        case "InvalidMessageContents":
            self = .invalidMessageContents(message: message)
        case "MessageNotInflight":
            self = .messageNotInflight(message: message)
        case "OverLimit":
            self = .overLimit(message: message)
        case "PurgeQueueInProgress":
            self = .purgeQueueInProgress(message: message)
        case "QueueDeletedRecently":
            self = .queueDeletedRecently(message: message)
        case "QueueDoesNotExist":
            self = .queueDoesNotExist(message: message)
        case "QueueNameExists":
            self = .queueNameExists(message: message)
        case "ReceiptHandleIsInvalid":
            self = .receiptHandleIsInvalid(message: message)
        case "TooManyEntriesInBatchRequest":
            self = .tooManyEntriesInBatchRequest(message: message)
        case "UnsupportedOperation":
            self = .unsupportedOperation(message: message)
        default:
            return nil
        }
    }
}

extension SQSErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .batchEntryIdsNotDistinct(let message):
            return "BatchEntryIdsNotDistinct: \(message ?? "")"
        case .batchRequestTooLong(let message):
            return "BatchRequestTooLong: \(message ?? "")"
        case .emptyBatchRequest(let message):
            return "EmptyBatchRequest: \(message ?? "")"
        case .invalidAttributeName(let message):
            return "InvalidAttributeName: \(message ?? "")"
        case .invalidBatchEntryId(let message):
            return "InvalidBatchEntryId: \(message ?? "")"
        case .invalidIdFormat(let message):
            return "InvalidIdFormat: \(message ?? "")"
        case .invalidMessageContents(let message):
            return "InvalidMessageContents: \(message ?? "")"
        case .messageNotInflight(let message):
            return "MessageNotInflight: \(message ?? "")"
        case .overLimit(let message):
            return "OverLimit: \(message ?? "")"
        case .purgeQueueInProgress(let message):
            return "PurgeQueueInProgress: \(message ?? "")"
        case .queueDeletedRecently(let message):
            return "QueueDeletedRecently: \(message ?? "")"
        case .queueDoesNotExist(let message):
            return "QueueDoesNotExist: \(message ?? "")"
        case .queueNameExists(let message):
            return "QueueNameExists: \(message ?? "")"
        case .receiptHandleIsInvalid(let message):
            return "ReceiptHandleIsInvalid: \(message ?? "")"
        case .tooManyEntriesInBatchRequest(let message):
            return "TooManyEntriesInBatchRequest: \(message ?? "")"
        case .unsupportedOperation(let message):
            return "UnsupportedOperation: \(message ?? "")"
        }
    }
}
