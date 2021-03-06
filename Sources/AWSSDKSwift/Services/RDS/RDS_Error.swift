// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/swift-aws/aws-sdk-swift/blob/master/CodeGenerator/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import AWSSDKSwiftCore

/// Error enum for RDS
public enum RDSErrorType: AWSErrorType {
    case authorizationAlreadyExistsFault(message: String?)
    case authorizationNotFoundFault(message: String?)
    case authorizationQuotaExceededFault(message: String?)
    case backupPolicyNotFoundFault(message: String?)
    case certificateNotFoundFault(message: String?)
    case customAvailabilityZoneAlreadyExistsFault(message: String?)
    case customAvailabilityZoneNotFoundFault(message: String?)
    case customAvailabilityZoneQuotaExceededFault(message: String?)
    case dBClusterAlreadyExistsFault(message: String?)
    case dBClusterBacktrackNotFoundFault(message: String?)
    case dBClusterEndpointAlreadyExistsFault(message: String?)
    case dBClusterEndpointNotFoundFault(message: String?)
    case dBClusterEndpointQuotaExceededFault(message: String?)
    case dBClusterNotFoundFault(message: String?)
    case dBClusterParameterGroupNotFoundFault(message: String?)
    case dBClusterQuotaExceededFault(message: String?)
    case dBClusterRoleAlreadyExistsFault(message: String?)
    case dBClusterRoleNotFoundFault(message: String?)
    case dBClusterRoleQuotaExceededFault(message: String?)
    case dBClusterSnapshotAlreadyExistsFault(message: String?)
    case dBClusterSnapshotNotFoundFault(message: String?)
    case dBInstanceAlreadyExistsFault(message: String?)
    case dBInstanceAutomatedBackupNotFoundFault(message: String?)
    case dBInstanceAutomatedBackupQuotaExceededFault(message: String?)
    case dBInstanceNotFoundFault(message: String?)
    case dBInstanceRoleAlreadyExistsFault(message: String?)
    case dBInstanceRoleNotFoundFault(message: String?)
    case dBInstanceRoleQuotaExceededFault(message: String?)
    case dBLogFileNotFoundFault(message: String?)
    case dBParameterGroupAlreadyExistsFault(message: String?)
    case dBParameterGroupNotFoundFault(message: String?)
    case dBParameterGroupQuotaExceededFault(message: String?)
    case dBProxyAlreadyExistsFault(message: String?)
    case dBProxyNotFoundFault(message: String?)
    case dBProxyQuotaExceededFault(message: String?)
    case dBProxyTargetAlreadyRegisteredFault(message: String?)
    case dBProxyTargetGroupNotFoundFault(message: String?)
    case dBProxyTargetNotFoundFault(message: String?)
    case dBSecurityGroupAlreadyExistsFault(message: String?)
    case dBSecurityGroupNotFoundFault(message: String?)
    case dBSecurityGroupNotSupportedFault(message: String?)
    case dBSecurityGroupQuotaExceededFault(message: String?)
    case dBSnapshotAlreadyExistsFault(message: String?)
    case dBSnapshotNotFoundFault(message: String?)
    case dBSubnetGroupAlreadyExistsFault(message: String?)
    case dBSubnetGroupDoesNotCoverEnoughAZs(message: String?)
    case dBSubnetGroupNotAllowedFault(message: String?)
    case dBSubnetGroupNotFoundFault(message: String?)
    case dBSubnetGroupQuotaExceededFault(message: String?)
    case dBSubnetQuotaExceededFault(message: String?)
    case dBUpgradeDependencyFailureFault(message: String?)
    case domainNotFoundFault(message: String?)
    case eventSubscriptionQuotaExceededFault(message: String?)
    case exportTaskAlreadyExistsFault(message: String?)
    case exportTaskNotFoundFault(message: String?)
    case globalClusterAlreadyExistsFault(message: String?)
    case globalClusterNotFoundFault(message: String?)
    case globalClusterQuotaExceededFault(message: String?)
    case iamRoleMissingPermissionsFault(message: String?)
    case iamRoleNotFoundFault(message: String?)
    case installationMediaAlreadyExistsFault(message: String?)
    case installationMediaNotFoundFault(message: String?)
    case instanceQuotaExceededFault(message: String?)
    case insufficientDBClusterCapacityFault(message: String?)
    case insufficientDBInstanceCapacityFault(message: String?)
    case insufficientStorageClusterCapacityFault(message: String?)
    case invalidDBClusterCapacityFault(message: String?)
    case invalidDBClusterEndpointStateFault(message: String?)
    case invalidDBClusterSnapshotStateFault(message: String?)
    case invalidDBClusterStateFault(message: String?)
    case invalidDBInstanceAutomatedBackupStateFault(message: String?)
    case invalidDBInstanceStateFault(message: String?)
    case invalidDBParameterGroupStateFault(message: String?)
    case invalidDBProxyStateFault(message: String?)
    case invalidDBSecurityGroupStateFault(message: String?)
    case invalidDBSnapshotStateFault(message: String?)
    case invalidDBSubnetGroupFault(message: String?)
    case invalidDBSubnetGroupStateFault(message: String?)
    case invalidDBSubnetStateFault(message: String?)
    case invalidEventSubscriptionStateFault(message: String?)
    case invalidExportOnlyFault(message: String?)
    case invalidExportSourceStateFault(message: String?)
    case invalidExportTaskStateFault(message: String?)
    case invalidGlobalClusterStateFault(message: String?)
    case invalidOptionGroupStateFault(message: String?)
    case invalidRestoreFault(message: String?)
    case invalidS3BucketFault(message: String?)
    case invalidSubnet(message: String?)
    case invalidVPCNetworkStateFault(message: String?)
    case kMSKeyNotAccessibleFault(message: String?)
    case optionGroupAlreadyExistsFault(message: String?)
    case optionGroupNotFoundFault(message: String?)
    case optionGroupQuotaExceededFault(message: String?)
    case pointInTimeRestoreNotEnabledFault(message: String?)
    case provisionedIopsNotAvailableInAZFault(message: String?)
    case reservedDBInstanceAlreadyExistsFault(message: String?)
    case reservedDBInstanceNotFoundFault(message: String?)
    case reservedDBInstanceQuotaExceededFault(message: String?)
    case reservedDBInstancesOfferingNotFoundFault(message: String?)
    case resourceNotFoundFault(message: String?)
    case sNSInvalidTopicFault(message: String?)
    case sNSNoAuthorizationFault(message: String?)
    case sNSTopicArnNotFoundFault(message: String?)
    case sharedSnapshotQuotaExceededFault(message: String?)
    case snapshotQuotaExceededFault(message: String?)
    case sourceNotFoundFault(message: String?)
    case storageQuotaExceededFault(message: String?)
    case storageTypeNotSupportedFault(message: String?)
    case subnetAlreadyInUse(message: String?)
    case subscriptionAlreadyExistFault(message: String?)
    case subscriptionCategoryNotFoundFault(message: String?)
    case subscriptionNotFoundFault(message: String?)
}

extension RDSErrorType {
    public init?(errorCode: String, message: String?){
        var errorCode = errorCode
        if let index = errorCode.firstIndex(of: "#") {
            errorCode = String(errorCode[errorCode.index(index, offsetBy: 1)...])
        }
        switch errorCode {
        case "AuthorizationAlreadyExists":
            self = .authorizationAlreadyExistsFault(message: message)
        case "AuthorizationNotFound":
            self = .authorizationNotFoundFault(message: message)
        case "AuthorizationQuotaExceeded":
            self = .authorizationQuotaExceededFault(message: message)
        case "BackupPolicyNotFoundFault":
            self = .backupPolicyNotFoundFault(message: message)
        case "CertificateNotFound":
            self = .certificateNotFoundFault(message: message)
        case "CustomAvailabilityZoneAlreadyExists":
            self = .customAvailabilityZoneAlreadyExistsFault(message: message)
        case "CustomAvailabilityZoneNotFound":
            self = .customAvailabilityZoneNotFoundFault(message: message)
        case "CustomAvailabilityZoneQuotaExceeded":
            self = .customAvailabilityZoneQuotaExceededFault(message: message)
        case "DBClusterAlreadyExistsFault":
            self = .dBClusterAlreadyExistsFault(message: message)
        case "DBClusterBacktrackNotFoundFault":
            self = .dBClusterBacktrackNotFoundFault(message: message)
        case "DBClusterEndpointAlreadyExistsFault":
            self = .dBClusterEndpointAlreadyExistsFault(message: message)
        case "DBClusterEndpointNotFoundFault":
            self = .dBClusterEndpointNotFoundFault(message: message)
        case "DBClusterEndpointQuotaExceededFault":
            self = .dBClusterEndpointQuotaExceededFault(message: message)
        case "DBClusterNotFoundFault":
            self = .dBClusterNotFoundFault(message: message)
        case "DBClusterParameterGroupNotFound":
            self = .dBClusterParameterGroupNotFoundFault(message: message)
        case "DBClusterQuotaExceededFault":
            self = .dBClusterQuotaExceededFault(message: message)
        case "DBClusterRoleAlreadyExists":
            self = .dBClusterRoleAlreadyExistsFault(message: message)
        case "DBClusterRoleNotFound":
            self = .dBClusterRoleNotFoundFault(message: message)
        case "DBClusterRoleQuotaExceeded":
            self = .dBClusterRoleQuotaExceededFault(message: message)
        case "DBClusterSnapshotAlreadyExistsFault":
            self = .dBClusterSnapshotAlreadyExistsFault(message: message)
        case "DBClusterSnapshotNotFoundFault":
            self = .dBClusterSnapshotNotFoundFault(message: message)
        case "DBInstanceAlreadyExists":
            self = .dBInstanceAlreadyExistsFault(message: message)
        case "DBInstanceAutomatedBackupNotFound":
            self = .dBInstanceAutomatedBackupNotFoundFault(message: message)
        case "DBInstanceAutomatedBackupQuotaExceeded":
            self = .dBInstanceAutomatedBackupQuotaExceededFault(message: message)
        case "DBInstanceNotFound":
            self = .dBInstanceNotFoundFault(message: message)
        case "DBInstanceRoleAlreadyExists":
            self = .dBInstanceRoleAlreadyExistsFault(message: message)
        case "DBInstanceRoleNotFound":
            self = .dBInstanceRoleNotFoundFault(message: message)
        case "DBInstanceRoleQuotaExceeded":
            self = .dBInstanceRoleQuotaExceededFault(message: message)
        case "DBLogFileNotFoundFault":
            self = .dBLogFileNotFoundFault(message: message)
        case "DBParameterGroupAlreadyExists":
            self = .dBParameterGroupAlreadyExistsFault(message: message)
        case "DBParameterGroupNotFound":
            self = .dBParameterGroupNotFoundFault(message: message)
        case "DBParameterGroupQuotaExceeded":
            self = .dBParameterGroupQuotaExceededFault(message: message)
        case "DBProxyAlreadyExistsFault":
            self = .dBProxyAlreadyExistsFault(message: message)
        case "DBProxyNotFoundFault":
            self = .dBProxyNotFoundFault(message: message)
        case "DBProxyQuotaExceededFault":
            self = .dBProxyQuotaExceededFault(message: message)
        case "DBProxyTargetAlreadyRegisteredFault":
            self = .dBProxyTargetAlreadyRegisteredFault(message: message)
        case "DBProxyTargetGroupNotFoundFault":
            self = .dBProxyTargetGroupNotFoundFault(message: message)
        case "DBProxyTargetNotFoundFault":
            self = .dBProxyTargetNotFoundFault(message: message)
        case "DBSecurityGroupAlreadyExists":
            self = .dBSecurityGroupAlreadyExistsFault(message: message)
        case "DBSecurityGroupNotFound":
            self = .dBSecurityGroupNotFoundFault(message: message)
        case "DBSecurityGroupNotSupported":
            self = .dBSecurityGroupNotSupportedFault(message: message)
        case "QuotaExceeded.DBSecurityGroup":
            self = .dBSecurityGroupQuotaExceededFault(message: message)
        case "DBSnapshotAlreadyExists":
            self = .dBSnapshotAlreadyExistsFault(message: message)
        case "DBSnapshotNotFound":
            self = .dBSnapshotNotFoundFault(message: message)
        case "DBSubnetGroupAlreadyExists":
            self = .dBSubnetGroupAlreadyExistsFault(message: message)
        case "DBSubnetGroupDoesNotCoverEnoughAZs":
            self = .dBSubnetGroupDoesNotCoverEnoughAZs(message: message)
        case "DBSubnetGroupNotAllowedFault":
            self = .dBSubnetGroupNotAllowedFault(message: message)
        case "DBSubnetGroupNotFoundFault":
            self = .dBSubnetGroupNotFoundFault(message: message)
        case "DBSubnetGroupQuotaExceeded":
            self = .dBSubnetGroupQuotaExceededFault(message: message)
        case "DBSubnetQuotaExceededFault":
            self = .dBSubnetQuotaExceededFault(message: message)
        case "DBUpgradeDependencyFailure":
            self = .dBUpgradeDependencyFailureFault(message: message)
        case "DomainNotFoundFault":
            self = .domainNotFoundFault(message: message)
        case "EventSubscriptionQuotaExceeded":
            self = .eventSubscriptionQuotaExceededFault(message: message)
        case "ExportTaskAlreadyExists":
            self = .exportTaskAlreadyExistsFault(message: message)
        case "ExportTaskNotFound":
            self = .exportTaskNotFoundFault(message: message)
        case "GlobalClusterAlreadyExistsFault":
            self = .globalClusterAlreadyExistsFault(message: message)
        case "GlobalClusterNotFoundFault":
            self = .globalClusterNotFoundFault(message: message)
        case "GlobalClusterQuotaExceededFault":
            self = .globalClusterQuotaExceededFault(message: message)
        case "IamRoleMissingPermissions":
            self = .iamRoleMissingPermissionsFault(message: message)
        case "IamRoleNotFound":
            self = .iamRoleNotFoundFault(message: message)
        case "InstallationMediaAlreadyExists":
            self = .installationMediaAlreadyExistsFault(message: message)
        case "InstallationMediaNotFound":
            self = .installationMediaNotFoundFault(message: message)
        case "InstanceQuotaExceeded":
            self = .instanceQuotaExceededFault(message: message)
        case "InsufficientDBClusterCapacityFault":
            self = .insufficientDBClusterCapacityFault(message: message)
        case "InsufficientDBInstanceCapacity":
            self = .insufficientDBInstanceCapacityFault(message: message)
        case "InsufficientStorageClusterCapacity":
            self = .insufficientStorageClusterCapacityFault(message: message)
        case "InvalidDBClusterCapacityFault":
            self = .invalidDBClusterCapacityFault(message: message)
        case "InvalidDBClusterEndpointStateFault":
            self = .invalidDBClusterEndpointStateFault(message: message)
        case "InvalidDBClusterSnapshotStateFault":
            self = .invalidDBClusterSnapshotStateFault(message: message)
        case "InvalidDBClusterStateFault":
            self = .invalidDBClusterStateFault(message: message)
        case "InvalidDBInstanceAutomatedBackupState":
            self = .invalidDBInstanceAutomatedBackupStateFault(message: message)
        case "InvalidDBInstanceState":
            self = .invalidDBInstanceStateFault(message: message)
        case "InvalidDBParameterGroupState":
            self = .invalidDBParameterGroupStateFault(message: message)
        case "InvalidDBProxyStateFault":
            self = .invalidDBProxyStateFault(message: message)
        case "InvalidDBSecurityGroupState":
            self = .invalidDBSecurityGroupStateFault(message: message)
        case "InvalidDBSnapshotState":
            self = .invalidDBSnapshotStateFault(message: message)
        case "InvalidDBSubnetGroupFault":
            self = .invalidDBSubnetGroupFault(message: message)
        case "InvalidDBSubnetGroupStateFault":
            self = .invalidDBSubnetGroupStateFault(message: message)
        case "InvalidDBSubnetStateFault":
            self = .invalidDBSubnetStateFault(message: message)
        case "InvalidEventSubscriptionState":
            self = .invalidEventSubscriptionStateFault(message: message)
        case "InvalidExportOnly":
            self = .invalidExportOnlyFault(message: message)
        case "InvalidExportSourceState":
            self = .invalidExportSourceStateFault(message: message)
        case "InvalidExportTaskStateFault":
            self = .invalidExportTaskStateFault(message: message)
        case "InvalidGlobalClusterStateFault":
            self = .invalidGlobalClusterStateFault(message: message)
        case "InvalidOptionGroupStateFault":
            self = .invalidOptionGroupStateFault(message: message)
        case "InvalidRestoreFault":
            self = .invalidRestoreFault(message: message)
        case "InvalidS3BucketFault":
            self = .invalidS3BucketFault(message: message)
        case "InvalidSubnet":
            self = .invalidSubnet(message: message)
        case "InvalidVPCNetworkStateFault":
            self = .invalidVPCNetworkStateFault(message: message)
        case "KMSKeyNotAccessibleFault":
            self = .kMSKeyNotAccessibleFault(message: message)
        case "OptionGroupAlreadyExistsFault":
            self = .optionGroupAlreadyExistsFault(message: message)
        case "OptionGroupNotFoundFault":
            self = .optionGroupNotFoundFault(message: message)
        case "OptionGroupQuotaExceededFault":
            self = .optionGroupQuotaExceededFault(message: message)
        case "PointInTimeRestoreNotEnabled":
            self = .pointInTimeRestoreNotEnabledFault(message: message)
        case "ProvisionedIopsNotAvailableInAZFault":
            self = .provisionedIopsNotAvailableInAZFault(message: message)
        case "ReservedDBInstanceAlreadyExists":
            self = .reservedDBInstanceAlreadyExistsFault(message: message)
        case "ReservedDBInstanceNotFound":
            self = .reservedDBInstanceNotFoundFault(message: message)
        case "ReservedDBInstanceQuotaExceeded":
            self = .reservedDBInstanceQuotaExceededFault(message: message)
        case "ReservedDBInstancesOfferingNotFound":
            self = .reservedDBInstancesOfferingNotFoundFault(message: message)
        case "ResourceNotFoundFault":
            self = .resourceNotFoundFault(message: message)
        case "SNSInvalidTopic":
            self = .sNSInvalidTopicFault(message: message)
        case "SNSNoAuthorization":
            self = .sNSNoAuthorizationFault(message: message)
        case "SNSTopicArnNotFound":
            self = .sNSTopicArnNotFoundFault(message: message)
        case "SharedSnapshotQuotaExceeded":
            self = .sharedSnapshotQuotaExceededFault(message: message)
        case "SnapshotQuotaExceeded":
            self = .snapshotQuotaExceededFault(message: message)
        case "SourceNotFound":
            self = .sourceNotFoundFault(message: message)
        case "StorageQuotaExceeded":
            self = .storageQuotaExceededFault(message: message)
        case "StorageTypeNotSupported":
            self = .storageTypeNotSupportedFault(message: message)
        case "SubnetAlreadyInUse":
            self = .subnetAlreadyInUse(message: message)
        case "SubscriptionAlreadyExist":
            self = .subscriptionAlreadyExistFault(message: message)
        case "SubscriptionCategoryNotFound":
            self = .subscriptionCategoryNotFoundFault(message: message)
        case "SubscriptionNotFound":
            self = .subscriptionNotFoundFault(message: message)
        default:
            return nil
        }
    }
}

extension RDSErrorType : CustomStringConvertible {
    public var description : String {
        switch self {
        case .authorizationAlreadyExistsFault(let message):
            return "AuthorizationAlreadyExists: \(message ?? "")"
        case .authorizationNotFoundFault(let message):
            return "AuthorizationNotFound: \(message ?? "")"
        case .authorizationQuotaExceededFault(let message):
            return "AuthorizationQuotaExceeded: \(message ?? "")"
        case .backupPolicyNotFoundFault(let message):
            return "BackupPolicyNotFoundFault: \(message ?? "")"
        case .certificateNotFoundFault(let message):
            return "CertificateNotFound: \(message ?? "")"
        case .customAvailabilityZoneAlreadyExistsFault(let message):
            return "CustomAvailabilityZoneAlreadyExists: \(message ?? "")"
        case .customAvailabilityZoneNotFoundFault(let message):
            return "CustomAvailabilityZoneNotFound: \(message ?? "")"
        case .customAvailabilityZoneQuotaExceededFault(let message):
            return "CustomAvailabilityZoneQuotaExceeded: \(message ?? "")"
        case .dBClusterAlreadyExistsFault(let message):
            return "DBClusterAlreadyExistsFault: \(message ?? "")"
        case .dBClusterBacktrackNotFoundFault(let message):
            return "DBClusterBacktrackNotFoundFault: \(message ?? "")"
        case .dBClusterEndpointAlreadyExistsFault(let message):
            return "DBClusterEndpointAlreadyExistsFault: \(message ?? "")"
        case .dBClusterEndpointNotFoundFault(let message):
            return "DBClusterEndpointNotFoundFault: \(message ?? "")"
        case .dBClusterEndpointQuotaExceededFault(let message):
            return "DBClusterEndpointQuotaExceededFault: \(message ?? "")"
        case .dBClusterNotFoundFault(let message):
            return "DBClusterNotFoundFault: \(message ?? "")"
        case .dBClusterParameterGroupNotFoundFault(let message):
            return "DBClusterParameterGroupNotFound: \(message ?? "")"
        case .dBClusterQuotaExceededFault(let message):
            return "DBClusterQuotaExceededFault: \(message ?? "")"
        case .dBClusterRoleAlreadyExistsFault(let message):
            return "DBClusterRoleAlreadyExists: \(message ?? "")"
        case .dBClusterRoleNotFoundFault(let message):
            return "DBClusterRoleNotFound: \(message ?? "")"
        case .dBClusterRoleQuotaExceededFault(let message):
            return "DBClusterRoleQuotaExceeded: \(message ?? "")"
        case .dBClusterSnapshotAlreadyExistsFault(let message):
            return "DBClusterSnapshotAlreadyExistsFault: \(message ?? "")"
        case .dBClusterSnapshotNotFoundFault(let message):
            return "DBClusterSnapshotNotFoundFault: \(message ?? "")"
        case .dBInstanceAlreadyExistsFault(let message):
            return "DBInstanceAlreadyExists: \(message ?? "")"
        case .dBInstanceAutomatedBackupNotFoundFault(let message):
            return "DBInstanceAutomatedBackupNotFound: \(message ?? "")"
        case .dBInstanceAutomatedBackupQuotaExceededFault(let message):
            return "DBInstanceAutomatedBackupQuotaExceeded: \(message ?? "")"
        case .dBInstanceNotFoundFault(let message):
            return "DBInstanceNotFound: \(message ?? "")"
        case .dBInstanceRoleAlreadyExistsFault(let message):
            return "DBInstanceRoleAlreadyExists: \(message ?? "")"
        case .dBInstanceRoleNotFoundFault(let message):
            return "DBInstanceRoleNotFound: \(message ?? "")"
        case .dBInstanceRoleQuotaExceededFault(let message):
            return "DBInstanceRoleQuotaExceeded: \(message ?? "")"
        case .dBLogFileNotFoundFault(let message):
            return "DBLogFileNotFoundFault: \(message ?? "")"
        case .dBParameterGroupAlreadyExistsFault(let message):
            return "DBParameterGroupAlreadyExists: \(message ?? "")"
        case .dBParameterGroupNotFoundFault(let message):
            return "DBParameterGroupNotFound: \(message ?? "")"
        case .dBParameterGroupQuotaExceededFault(let message):
            return "DBParameterGroupQuotaExceeded: \(message ?? "")"
        case .dBProxyAlreadyExistsFault(let message):
            return "DBProxyAlreadyExistsFault: \(message ?? "")"
        case .dBProxyNotFoundFault(let message):
            return "DBProxyNotFoundFault: \(message ?? "")"
        case .dBProxyQuotaExceededFault(let message):
            return "DBProxyQuotaExceededFault: \(message ?? "")"
        case .dBProxyTargetAlreadyRegisteredFault(let message):
            return "DBProxyTargetAlreadyRegisteredFault: \(message ?? "")"
        case .dBProxyTargetGroupNotFoundFault(let message):
            return "DBProxyTargetGroupNotFoundFault: \(message ?? "")"
        case .dBProxyTargetNotFoundFault(let message):
            return "DBProxyTargetNotFoundFault: \(message ?? "")"
        case .dBSecurityGroupAlreadyExistsFault(let message):
            return "DBSecurityGroupAlreadyExists: \(message ?? "")"
        case .dBSecurityGroupNotFoundFault(let message):
            return "DBSecurityGroupNotFound: \(message ?? "")"
        case .dBSecurityGroupNotSupportedFault(let message):
            return "DBSecurityGroupNotSupported: \(message ?? "")"
        case .dBSecurityGroupQuotaExceededFault(let message):
            return "QuotaExceeded.DBSecurityGroup: \(message ?? "")"
        case .dBSnapshotAlreadyExistsFault(let message):
            return "DBSnapshotAlreadyExists: \(message ?? "")"
        case .dBSnapshotNotFoundFault(let message):
            return "DBSnapshotNotFound: \(message ?? "")"
        case .dBSubnetGroupAlreadyExistsFault(let message):
            return "DBSubnetGroupAlreadyExists: \(message ?? "")"
        case .dBSubnetGroupDoesNotCoverEnoughAZs(let message):
            return "DBSubnetGroupDoesNotCoverEnoughAZs: \(message ?? "")"
        case .dBSubnetGroupNotAllowedFault(let message):
            return "DBSubnetGroupNotAllowedFault: \(message ?? "")"
        case .dBSubnetGroupNotFoundFault(let message):
            return "DBSubnetGroupNotFoundFault: \(message ?? "")"
        case .dBSubnetGroupQuotaExceededFault(let message):
            return "DBSubnetGroupQuotaExceeded: \(message ?? "")"
        case .dBSubnetQuotaExceededFault(let message):
            return "DBSubnetQuotaExceededFault: \(message ?? "")"
        case .dBUpgradeDependencyFailureFault(let message):
            return "DBUpgradeDependencyFailure: \(message ?? "")"
        case .domainNotFoundFault(let message):
            return "DomainNotFoundFault: \(message ?? "")"
        case .eventSubscriptionQuotaExceededFault(let message):
            return "EventSubscriptionQuotaExceeded: \(message ?? "")"
        case .exportTaskAlreadyExistsFault(let message):
            return "ExportTaskAlreadyExists: \(message ?? "")"
        case .exportTaskNotFoundFault(let message):
            return "ExportTaskNotFound: \(message ?? "")"
        case .globalClusterAlreadyExistsFault(let message):
            return "GlobalClusterAlreadyExistsFault: \(message ?? "")"
        case .globalClusterNotFoundFault(let message):
            return "GlobalClusterNotFoundFault: \(message ?? "")"
        case .globalClusterQuotaExceededFault(let message):
            return "GlobalClusterQuotaExceededFault: \(message ?? "")"
        case .iamRoleMissingPermissionsFault(let message):
            return "IamRoleMissingPermissions: \(message ?? "")"
        case .iamRoleNotFoundFault(let message):
            return "IamRoleNotFound: \(message ?? "")"
        case .installationMediaAlreadyExistsFault(let message):
            return "InstallationMediaAlreadyExists: \(message ?? "")"
        case .installationMediaNotFoundFault(let message):
            return "InstallationMediaNotFound: \(message ?? "")"
        case .instanceQuotaExceededFault(let message):
            return "InstanceQuotaExceeded: \(message ?? "")"
        case .insufficientDBClusterCapacityFault(let message):
            return "InsufficientDBClusterCapacityFault: \(message ?? "")"
        case .insufficientDBInstanceCapacityFault(let message):
            return "InsufficientDBInstanceCapacity: \(message ?? "")"
        case .insufficientStorageClusterCapacityFault(let message):
            return "InsufficientStorageClusterCapacity: \(message ?? "")"
        case .invalidDBClusterCapacityFault(let message):
            return "InvalidDBClusterCapacityFault: \(message ?? "")"
        case .invalidDBClusterEndpointStateFault(let message):
            return "InvalidDBClusterEndpointStateFault: \(message ?? "")"
        case .invalidDBClusterSnapshotStateFault(let message):
            return "InvalidDBClusterSnapshotStateFault: \(message ?? "")"
        case .invalidDBClusterStateFault(let message):
            return "InvalidDBClusterStateFault: \(message ?? "")"
        case .invalidDBInstanceAutomatedBackupStateFault(let message):
            return "InvalidDBInstanceAutomatedBackupState: \(message ?? "")"
        case .invalidDBInstanceStateFault(let message):
            return "InvalidDBInstanceState: \(message ?? "")"
        case .invalidDBParameterGroupStateFault(let message):
            return "InvalidDBParameterGroupState: \(message ?? "")"
        case .invalidDBProxyStateFault(let message):
            return "InvalidDBProxyStateFault: \(message ?? "")"
        case .invalidDBSecurityGroupStateFault(let message):
            return "InvalidDBSecurityGroupState: \(message ?? "")"
        case .invalidDBSnapshotStateFault(let message):
            return "InvalidDBSnapshotState: \(message ?? "")"
        case .invalidDBSubnetGroupFault(let message):
            return "InvalidDBSubnetGroupFault: \(message ?? "")"
        case .invalidDBSubnetGroupStateFault(let message):
            return "InvalidDBSubnetGroupStateFault: \(message ?? "")"
        case .invalidDBSubnetStateFault(let message):
            return "InvalidDBSubnetStateFault: \(message ?? "")"
        case .invalidEventSubscriptionStateFault(let message):
            return "InvalidEventSubscriptionState: \(message ?? "")"
        case .invalidExportOnlyFault(let message):
            return "InvalidExportOnly: \(message ?? "")"
        case .invalidExportSourceStateFault(let message):
            return "InvalidExportSourceState: \(message ?? "")"
        case .invalidExportTaskStateFault(let message):
            return "InvalidExportTaskStateFault: \(message ?? "")"
        case .invalidGlobalClusterStateFault(let message):
            return "InvalidGlobalClusterStateFault: \(message ?? "")"
        case .invalidOptionGroupStateFault(let message):
            return "InvalidOptionGroupStateFault: \(message ?? "")"
        case .invalidRestoreFault(let message):
            return "InvalidRestoreFault: \(message ?? "")"
        case .invalidS3BucketFault(let message):
            return "InvalidS3BucketFault: \(message ?? "")"
        case .invalidSubnet(let message):
            return "InvalidSubnet: \(message ?? "")"
        case .invalidVPCNetworkStateFault(let message):
            return "InvalidVPCNetworkStateFault: \(message ?? "")"
        case .kMSKeyNotAccessibleFault(let message):
            return "KMSKeyNotAccessibleFault: \(message ?? "")"
        case .optionGroupAlreadyExistsFault(let message):
            return "OptionGroupAlreadyExistsFault: \(message ?? "")"
        case .optionGroupNotFoundFault(let message):
            return "OptionGroupNotFoundFault: \(message ?? "")"
        case .optionGroupQuotaExceededFault(let message):
            return "OptionGroupQuotaExceededFault: \(message ?? "")"
        case .pointInTimeRestoreNotEnabledFault(let message):
            return "PointInTimeRestoreNotEnabled: \(message ?? "")"
        case .provisionedIopsNotAvailableInAZFault(let message):
            return "ProvisionedIopsNotAvailableInAZFault: \(message ?? "")"
        case .reservedDBInstanceAlreadyExistsFault(let message):
            return "ReservedDBInstanceAlreadyExists: \(message ?? "")"
        case .reservedDBInstanceNotFoundFault(let message):
            return "ReservedDBInstanceNotFound: \(message ?? "")"
        case .reservedDBInstanceQuotaExceededFault(let message):
            return "ReservedDBInstanceQuotaExceeded: \(message ?? "")"
        case .reservedDBInstancesOfferingNotFoundFault(let message):
            return "ReservedDBInstancesOfferingNotFound: \(message ?? "")"
        case .resourceNotFoundFault(let message):
            return "ResourceNotFoundFault: \(message ?? "")"
        case .sNSInvalidTopicFault(let message):
            return "SNSInvalidTopic: \(message ?? "")"
        case .sNSNoAuthorizationFault(let message):
            return "SNSNoAuthorization: \(message ?? "")"
        case .sNSTopicArnNotFoundFault(let message):
            return "SNSTopicArnNotFound: \(message ?? "")"
        case .sharedSnapshotQuotaExceededFault(let message):
            return "SharedSnapshotQuotaExceeded: \(message ?? "")"
        case .snapshotQuotaExceededFault(let message):
            return "SnapshotQuotaExceeded: \(message ?? "")"
        case .sourceNotFoundFault(let message):
            return "SourceNotFound: \(message ?? "")"
        case .storageQuotaExceededFault(let message):
            return "StorageQuotaExceeded: \(message ?? "")"
        case .storageTypeNotSupportedFault(let message):
            return "StorageTypeNotSupported: \(message ?? "")"
        case .subnetAlreadyInUse(let message):
            return "SubnetAlreadyInUse: \(message ?? "")"
        case .subscriptionAlreadyExistFault(let message):
            return "SubscriptionAlreadyExist: \(message ?? "")"
        case .subscriptionCategoryNotFoundFault(let message):
            return "SubscriptionCategoryNotFound: \(message ?? "")"
        case .subscriptionNotFoundFault(let message):
            return "SubscriptionNotFound: \(message ?? "")"
        }
    }
}
