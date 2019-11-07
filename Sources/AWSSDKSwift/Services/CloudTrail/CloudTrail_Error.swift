// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for CloudTrail
public enum CloudTrailErrorType: AWSErrorType {
    case cloudTrailARNInvalidException(message: String?)
    case cloudTrailAccessNotEnabledException(message: String?)
    case cloudWatchLogsDeliveryUnavailableException(message: String?)
    case insufficientDependencyServiceAccessPermissionException(message: String?)
    case insufficientEncryptionPolicyException(message: String?)
    case insufficientS3BucketPolicyException(message: String?)
    case insufficientSnsTopicPolicyException(message: String?)
    case invalidCloudWatchLogsLogGroupArnException(message: String?)
    case invalidCloudWatchLogsRoleArnException(message: String?)
    case invalidEventSelectorsException(message: String?)
    case invalidHomeRegionException(message: String?)
    case invalidKmsKeyIdException(message: String?)
    case invalidLookupAttributesException(message: String?)
    case invalidMaxResultsException(message: String?)
    case invalidNextTokenException(message: String?)
    case invalidParameterCombinationException(message: String?)
    case invalidS3BucketNameException(message: String?)
    case invalidS3PrefixException(message: String?)
    case invalidSnsTopicNameException(message: String?)
    case invalidTagParameterException(message: String?)
    case invalidTimeRangeException(message: String?)
    case invalidTokenException(message: String?)
    case invalidTrailNameException(message: String?)
    case kmsException(message: String?)
    case kmsKeyDisabledException(message: String?)
    case kmsKeyNotFoundException(message: String?)
    case maximumNumberOfTrailsExceededException(message: String?)
    case notOrganizationMasterAccountException(message: String?)
    case operationNotPermittedException(message: String?)
    case organizationNotInAllFeaturesModeException(message: String?)
    case organizationsNotInUseException(message: String?)
    case resourceNotFoundException(message: String?)
    case resourceTypeNotSupportedException(message: String?)
    case s3BucketDoesNotExistException(message: String?)
    case tagsLimitExceededException(message: String?)
    case trailAlreadyExistsException(message: String?)
    case trailNotFoundException(message: String?)
    case trailNotProvidedException(message: String?)
    case unsupportedOperationException(message: String?)
}

extension CloudTrailErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "CloudTrailARNInvalidException":
            self = .cloudTrailARNInvalidException(message: message)
        case "CloudTrailAccessNotEnabledException":
            self = .cloudTrailAccessNotEnabledException(message: message)
        case "CloudWatchLogsDeliveryUnavailableException":
            self = .cloudWatchLogsDeliveryUnavailableException(message: message)
        case "InsufficientDependencyServiceAccessPermissionException":
            self = .insufficientDependencyServiceAccessPermissionException(message: message)
        case "InsufficientEncryptionPolicyException":
            self = .insufficientEncryptionPolicyException(message: message)
        case "InsufficientS3BucketPolicyException":
            self = .insufficientS3BucketPolicyException(message: message)
        case "InsufficientSnsTopicPolicyException":
            self = .insufficientSnsTopicPolicyException(message: message)
        case "InvalidCloudWatchLogsLogGroupArnException":
            self = .invalidCloudWatchLogsLogGroupArnException(message: message)
        case "InvalidCloudWatchLogsRoleArnException":
            self = .invalidCloudWatchLogsRoleArnException(message: message)
        case "InvalidEventSelectorsException":
            self = .invalidEventSelectorsException(message: message)
        case "InvalidHomeRegionException":
            self = .invalidHomeRegionException(message: message)
        case "InvalidKmsKeyIdException":
            self = .invalidKmsKeyIdException(message: message)
        case "InvalidLookupAttributesException":
            self = .invalidLookupAttributesException(message: message)
        case "InvalidMaxResultsException":
            self = .invalidMaxResultsException(message: message)
        case "InvalidNextTokenException":
            self = .invalidNextTokenException(message: message)
        case "InvalidParameterCombinationException":
            self = .invalidParameterCombinationException(message: message)
        case "InvalidS3BucketNameException":
            self = .invalidS3BucketNameException(message: message)
        case "InvalidS3PrefixException":
            self = .invalidS3PrefixException(message: message)
        case "InvalidSnsTopicNameException":
            self = .invalidSnsTopicNameException(message: message)
        case "InvalidTagParameterException":
            self = .invalidTagParameterException(message: message)
        case "InvalidTimeRangeException":
            self = .invalidTimeRangeException(message: message)
        case "InvalidTokenException":
            self = .invalidTokenException(message: message)
        case "InvalidTrailNameException":
            self = .invalidTrailNameException(message: message)
        case "KmsException":
            self = .kmsException(message: message)
        case "KmsKeyDisabledException":
            self = .kmsKeyDisabledException(message: message)
        case "KmsKeyNotFoundException":
            self = .kmsKeyNotFoundException(message: message)
        case "MaximumNumberOfTrailsExceededException":
            self = .maximumNumberOfTrailsExceededException(message: message)
        case "NotOrganizationMasterAccountException":
            self = .notOrganizationMasterAccountException(message: message)
        case "OperationNotPermittedException":
            self = .operationNotPermittedException(message: message)
        case "OrganizationNotInAllFeaturesModeException":
            self = .organizationNotInAllFeaturesModeException(message: message)
        case "OrganizationsNotInUseException":
            self = .organizationsNotInUseException(message: message)
        case "ResourceNotFoundException":
            self = .resourceNotFoundException(message: message)
        case "ResourceTypeNotSupportedException":
            self = .resourceTypeNotSupportedException(message: message)
        case "S3BucketDoesNotExistException":
            self = .s3BucketDoesNotExistException(message: message)
        case "TagsLimitExceededException":
            self = .tagsLimitExceededException(message: message)
        case "TrailAlreadyExistsException":
            self = .trailAlreadyExistsException(message: message)
        case "TrailNotFoundException":
            self = .trailNotFoundException(message: message)
        case "TrailNotProvidedException":
            self = .trailNotProvidedException(message: message)
        case "UnsupportedOperationException":
            self = .unsupportedOperationException(message: message)
        default:
            return nil
        }
    }
}

extension CloudTrailErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .cloudTrailARNInvalidException(let message):
            return "CloudTrailARNInvalidException: \(message ?? "")"
        case .cloudTrailAccessNotEnabledException(let message):
            return "CloudTrailAccessNotEnabledException: \(message ?? "")"
        case .cloudWatchLogsDeliveryUnavailableException(let message):
            return "CloudWatchLogsDeliveryUnavailableException: \(message ?? "")"
        case .insufficientDependencyServiceAccessPermissionException(let message):
            return "InsufficientDependencyServiceAccessPermissionException: \(message ?? "")"
        case .insufficientEncryptionPolicyException(let message):
            return "InsufficientEncryptionPolicyException: \(message ?? "")"
        case .insufficientS3BucketPolicyException(let message):
            return "InsufficientS3BucketPolicyException: \(message ?? "")"
        case .insufficientSnsTopicPolicyException(let message):
            return "InsufficientSnsTopicPolicyException: \(message ?? "")"
        case .invalidCloudWatchLogsLogGroupArnException(let message):
            return "InvalidCloudWatchLogsLogGroupArnException: \(message ?? "")"
        case .invalidCloudWatchLogsRoleArnException(let message):
            return "InvalidCloudWatchLogsRoleArnException: \(message ?? "")"
        case .invalidEventSelectorsException(let message):
            return "InvalidEventSelectorsException: \(message ?? "")"
        case .invalidHomeRegionException(let message):
            return "InvalidHomeRegionException: \(message ?? "")"
        case .invalidKmsKeyIdException(let message):
            return "InvalidKmsKeyIdException: \(message ?? "")"
        case .invalidLookupAttributesException(let message):
            return "InvalidLookupAttributesException: \(message ?? "")"
        case .invalidMaxResultsException(let message):
            return "InvalidMaxResultsException: \(message ?? "")"
        case .invalidNextTokenException(let message):
            return "InvalidNextTokenException: \(message ?? "")"
        case .invalidParameterCombinationException(let message):
            return "InvalidParameterCombinationException: \(message ?? "")"
        case .invalidS3BucketNameException(let message):
            return "InvalidS3BucketNameException: \(message ?? "")"
        case .invalidS3PrefixException(let message):
            return "InvalidS3PrefixException: \(message ?? "")"
        case .invalidSnsTopicNameException(let message):
            return "InvalidSnsTopicNameException: \(message ?? "")"
        case .invalidTagParameterException(let message):
            return "InvalidTagParameterException: \(message ?? "")"
        case .invalidTimeRangeException(let message):
            return "InvalidTimeRangeException: \(message ?? "")"
        case .invalidTokenException(let message):
            return "InvalidTokenException: \(message ?? "")"
        case .invalidTrailNameException(let message):
            return "InvalidTrailNameException: \(message ?? "")"
        case .kmsException(let message):
            return "KmsException: \(message ?? "")"
        case .kmsKeyDisabledException(let message):
            return "KmsKeyDisabledException: \(message ?? "")"
        case .kmsKeyNotFoundException(let message):
            return "KmsKeyNotFoundException: \(message ?? "")"
        case .maximumNumberOfTrailsExceededException(let message):
            return "MaximumNumberOfTrailsExceededException: \(message ?? "")"
        case .notOrganizationMasterAccountException(let message):
            return "NotOrganizationMasterAccountException: \(message ?? "")"
        case .operationNotPermittedException(let message):
            return "OperationNotPermittedException: \(message ?? "")"
        case .organizationNotInAllFeaturesModeException(let message):
            return "OrganizationNotInAllFeaturesModeException: \(message ?? "")"
        case .organizationsNotInUseException(let message):
            return "OrganizationsNotInUseException: \(message ?? "")"
        case .resourceNotFoundException(let message):
            return "ResourceNotFoundException: \(message ?? "")"
        case .resourceTypeNotSupportedException(let message):
            return "ResourceTypeNotSupportedException: \(message ?? "")"
        case .s3BucketDoesNotExistException(let message):
            return "S3BucketDoesNotExistException: \(message ?? "")"
        case .tagsLimitExceededException(let message):
            return "TagsLimitExceededException: \(message ?? "")"
        case .trailAlreadyExistsException(let message):
            return "TrailAlreadyExistsException: \(message ?? "")"
        case .trailNotFoundException(let message):
            return "TrailNotFoundException: \(message ?? "")"
        case .trailNotProvidedException(let message):
            return "TrailNotProvidedException: \(message ?? "")"
        case .unsupportedOperationException(let message):
            return "UnsupportedOperationException: \(message ?? "")"
        }
    }
}