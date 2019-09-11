// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CodeStar
public enum CodeStarErrorType: AWSErrorType {
    case concurrentModificationException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidServiceRoleException(message: String?)
    case limitExceededException(message: String?)
    case projectAlreadyExistsException(message: String?)
    case projectConfigurationException(message: String?)
    case projectCreationFailedException(message: String?)
    case projectNotFoundException(message: String?)
    case teamMemberAlreadyAssociatedException(message: String?)
    case teamMemberNotFoundException(message: String?)
    case userProfileAlreadyExistsException(message: String?)
    case userProfileNotFoundException(message: String?)
    case validationException(message: String?)
}

extension CodeStarErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.index(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "ConcurrentModificationException":
            self = .concurrentModificationException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidServiceRoleException":
            self = .invalidServiceRoleException(message: message)
        case "LimitExceededException":
            self = .limitExceededException(message: message)
        case "ProjectAlreadyExistsException":
            self = .projectAlreadyExistsException(message: message)
        case "ProjectConfigurationException":
            self = .projectConfigurationException(message: message)
        case "ProjectCreationFailedException":
            self = .projectCreationFailedException(message: message)
        case "ProjectNotFoundException":
            self = .projectNotFoundException(message: message)
        case "TeamMemberAlreadyAssociatedException":
            self = .teamMemberAlreadyAssociatedException(message: message)
        case "TeamMemberNotFoundException":
            self = .teamMemberNotFoundException(message: message)
        case "UserProfileAlreadyExistsException":
            self = .userProfileAlreadyExistsException(message: message)
        case "UserProfileNotFoundException":
            self = .userProfileNotFoundException(message: message)
        case "ValidationException":
            self = .validationException(message: message)
        default:
            return nil
        }
    }
}

extension CodeStarErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .concurrentModificationException(let message):
            return "ConcurrentModificationException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidServiceRoleException(let message):
            return "InvalidServiceRoleException: \(message ?? "")"
        case .limitExceededException(let message):
            return "LimitExceededException: \(message ?? "")"
        case .projectAlreadyExistsException(let message):
            return "ProjectAlreadyExistsException: \(message ?? "")"
        case .projectConfigurationException(let message):
            return "ProjectConfigurationException: \(message ?? "")"
        case .projectCreationFailedException(let message):
            return "ProjectCreationFailedException: \(message ?? "")"
        case .projectNotFoundException(let message):
            return "ProjectNotFoundException: \(message ?? "")"
        case .teamMemberAlreadyAssociatedException(let message):
            return "TeamMemberAlreadyAssociatedException: \(message ?? "")"
        case .teamMemberNotFoundException(let message):
            return "TeamMemberNotFoundException: \(message ?? "")"
        case .userProfileAlreadyExistsException(let message):
            return "UserProfileAlreadyExistsException: \(message ?? "")"
        case .userProfileNotFoundException(let message):
            return "UserProfileNotFoundException: \(message ?? "")"
        case .validationException(let message):
            return "ValidationException: \(message ?? "")"
        }
    }
}
