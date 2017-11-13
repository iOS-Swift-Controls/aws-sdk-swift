// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for Email
public enum EmailError: AWSErrorType {
    case messageRejected(message: String?)
    case ruleSetDoesNotExistException(message: String?)
    case ruleDoesNotExistException(message: String?)
    case mailFromDomainNotVerifiedException(message: String?)
    case configurationSetDoesNotExistException(message: String?)
    case invalidSnsTopicException(message: String?)
    case invalidS3ConfigurationException(message: String?)
    case invalidLambdaFunctionException(message: String?)
    case alreadyExistsException(message: String?)
    case limitExceededException(message: String?)
    case invalidPolicyException(message: String?)
    case configurationSetAlreadyExistsException(message: String?)
    case invalidConfigurationSetException(message: String?)
    case cannotDeleteException(message: String?)
    case eventDestinationDoesNotExistException(message: String?)
    case invalidCloudWatchDestinationException(message: String?)
    case invalidFirehoseDestinationException(message: String?)
    case eventDestinationAlreadyExistsException(message: String?)
}

extension EmailError {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "MessageRejected":
            self = .messageRejected(message: message)
        case "RuleSetDoesNotExistException":
            self = .ruleSetDoesNotExistException(message: message)
        case "RuleDoesNotExistException":
            self = .ruleDoesNotExistException(message: message)
        case "MailFromDomainNotVerifiedException":
            self = .mailFromDomainNotVerifiedException(message: message)
        case "ConfigurationSetDoesNotExistException":
            self = .configurationSetDoesNotExistException(message: message)
        case "InvalidSnsTopicException":
            self = .invalidSnsTopicException(message: message)
        case "InvalidS3ConfigurationException":
            self = .invalidS3ConfigurationException(message: message)
        case "InvalidLambdaFunctionException":
            self = .invalidLambdaFunctionException(message: message)
        case "AlreadyExistsException":
            self = .alreadyExistsException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "InvalidPolicyException":
            self = .invalidPolicyException(message: message)
        case "ConfigurationSetAlreadyExistsException":
            self = .configurationSetAlreadyExistsException(message: message)
        case "InvalidConfigurationSetException":
            self = .invalidConfigurationSetException(message: message)
        case "CannotDeleteException":
            self = .cannotDeleteException(message: message)
        case "EventDestinationDoesNotExistException":
            self = .eventDestinationDoesNotExistException(message: message)
        case "InvalidCloudWatchDestinationException":
            self = .invalidCloudWatchDestinationException(message: message)
        case "InvalidFirehoseDestinationException":
            self = .invalidFirehoseDestinationException(message: message)
        case "EventDestinationAlreadyExistsException":
            self = .eventDestinationAlreadyExistsException(message: message)
        default:
            return nil
        }
    }
}