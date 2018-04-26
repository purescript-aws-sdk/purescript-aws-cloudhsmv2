
module AWS.CloudHSMV2.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Contains information about a backup of an AWS CloudHSM cluster.</p>
newtype Backup = Backup 
  { "BackupId" :: (BackupId)
  , "BackupState" :: Maybe (BackupState)
  , "ClusterId" :: Maybe (ClusterId)
  , "CreateTimestamp" :: Maybe (Types.Timestamp)
  }
derive instance newtypeBackup :: Newtype Backup _
derive instance repGenericBackup :: Generic Backup _
instance showBackup :: Show Backup where show = genericShow
instance decodeBackup :: Decode Backup where decode = genericDecode options
instance encodeBackup :: Encode Backup where encode = genericEncode options

-- | Constructs Backup from required parameters
newBackup :: BackupId -> Backup
newBackup _BackupId = Backup { "BackupId": _BackupId, "BackupState": Nothing, "ClusterId": Nothing, "CreateTimestamp": Nothing }

-- | Constructs Backup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBackup' :: BackupId -> ( { "BackupId" :: (BackupId) , "BackupState" :: Maybe (BackupState) , "ClusterId" :: Maybe (ClusterId) , "CreateTimestamp" :: Maybe (Types.Timestamp) } -> {"BackupId" :: (BackupId) , "BackupState" :: Maybe (BackupState) , "ClusterId" :: Maybe (ClusterId) , "CreateTimestamp" :: Maybe (Types.Timestamp) } ) -> Backup
newBackup' _BackupId customize = (Backup <<< customize) { "BackupId": _BackupId, "BackupState": Nothing, "ClusterId": Nothing, "CreateTimestamp": Nothing }



newtype BackupId = BackupId String
derive instance newtypeBackupId :: Newtype BackupId _
derive instance repGenericBackupId :: Generic BackupId _
instance showBackupId :: Show BackupId where show = genericShow
instance decodeBackupId :: Decode BackupId where decode = genericDecode options
instance encodeBackupId :: Encode BackupId where encode = genericEncode options



newtype BackupPolicy = BackupPolicy String
derive instance newtypeBackupPolicy :: Newtype BackupPolicy _
derive instance repGenericBackupPolicy :: Generic BackupPolicy _
instance showBackupPolicy :: Show BackupPolicy where show = genericShow
instance decodeBackupPolicy :: Decode BackupPolicy where decode = genericDecode options
instance encodeBackupPolicy :: Encode BackupPolicy where encode = genericEncode options



newtype BackupState = BackupState String
derive instance newtypeBackupState :: Newtype BackupState _
derive instance repGenericBackupState :: Generic BackupState _
instance showBackupState :: Show BackupState where show = genericShow
instance decodeBackupState :: Decode BackupState where decode = genericDecode options
instance encodeBackupState :: Encode BackupState where encode = genericEncode options



newtype Backups = Backups (Array Backup)
derive instance newtypeBackups :: Newtype Backups _
derive instance repGenericBackups :: Generic Backups _
instance showBackups :: Show Backups where show = genericShow
instance decodeBackups :: Decode Backups where decode = genericDecode options
instance encodeBackups :: Encode Backups where encode = genericEncode options



newtype Cert = Cert String
derive instance newtypeCert :: Newtype Cert _
derive instance repGenericCert :: Generic Cert _
instance showCert :: Show Cert where show = genericShow
instance decodeCert :: Decode Cert where decode = genericDecode options
instance encodeCert :: Encode Cert where encode = genericEncode options



-- | <p>Contains one or more certificates or a certificate signing request (CSR).</p>
newtype Certificates = Certificates 
  { "ClusterCsr" :: Maybe (Cert)
  , "HsmCertificate" :: Maybe (Cert)
  , "AwsHardwareCertificate" :: Maybe (Cert)
  , "ManufacturerHardwareCertificate" :: Maybe (Cert)
  , "ClusterCertificate" :: Maybe (Cert)
  }
derive instance newtypeCertificates :: Newtype Certificates _
derive instance repGenericCertificates :: Generic Certificates _
instance showCertificates :: Show Certificates where show = genericShow
instance decodeCertificates :: Decode Certificates where decode = genericDecode options
instance encodeCertificates :: Encode Certificates where encode = genericEncode options

-- | Constructs Certificates from required parameters
newCertificates :: Certificates
newCertificates  = Certificates { "AwsHardwareCertificate": Nothing, "ClusterCertificate": Nothing, "ClusterCsr": Nothing, "HsmCertificate": Nothing, "ManufacturerHardwareCertificate": Nothing }

-- | Constructs Certificates's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCertificates' :: ( { "ClusterCsr" :: Maybe (Cert) , "HsmCertificate" :: Maybe (Cert) , "AwsHardwareCertificate" :: Maybe (Cert) , "ManufacturerHardwareCertificate" :: Maybe (Cert) , "ClusterCertificate" :: Maybe (Cert) } -> {"ClusterCsr" :: Maybe (Cert) , "HsmCertificate" :: Maybe (Cert) , "AwsHardwareCertificate" :: Maybe (Cert) , "ManufacturerHardwareCertificate" :: Maybe (Cert) , "ClusterCertificate" :: Maybe (Cert) } ) -> Certificates
newCertificates'  customize = (Certificates <<< customize) { "AwsHardwareCertificate": Nothing, "ClusterCertificate": Nothing, "ClusterCsr": Nothing, "HsmCertificate": Nothing, "ManufacturerHardwareCertificate": Nothing }



-- | <p>The request was rejected because the requester does not have permission to perform the requested operation.</p>
newtype CloudHsmAccessDeniedException = CloudHsmAccessDeniedException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCloudHsmAccessDeniedException :: Newtype CloudHsmAccessDeniedException _
derive instance repGenericCloudHsmAccessDeniedException :: Generic CloudHsmAccessDeniedException _
instance showCloudHsmAccessDeniedException :: Show CloudHsmAccessDeniedException where show = genericShow
instance decodeCloudHsmAccessDeniedException :: Decode CloudHsmAccessDeniedException where decode = genericDecode options
instance encodeCloudHsmAccessDeniedException :: Encode CloudHsmAccessDeniedException where encode = genericEncode options

-- | Constructs CloudHsmAccessDeniedException from required parameters
newCloudHsmAccessDeniedException :: CloudHsmAccessDeniedException
newCloudHsmAccessDeniedException  = CloudHsmAccessDeniedException { "Message": Nothing }

-- | Constructs CloudHsmAccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudHsmAccessDeniedException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> CloudHsmAccessDeniedException
newCloudHsmAccessDeniedException'  customize = (CloudHsmAccessDeniedException <<< customize) { "Message": Nothing }



-- | <p>The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.</p>
newtype CloudHsmInternalFailureException = CloudHsmInternalFailureException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCloudHsmInternalFailureException :: Newtype CloudHsmInternalFailureException _
derive instance repGenericCloudHsmInternalFailureException :: Generic CloudHsmInternalFailureException _
instance showCloudHsmInternalFailureException :: Show CloudHsmInternalFailureException where show = genericShow
instance decodeCloudHsmInternalFailureException :: Decode CloudHsmInternalFailureException where decode = genericDecode options
instance encodeCloudHsmInternalFailureException :: Encode CloudHsmInternalFailureException where encode = genericEncode options

-- | Constructs CloudHsmInternalFailureException from required parameters
newCloudHsmInternalFailureException :: CloudHsmInternalFailureException
newCloudHsmInternalFailureException  = CloudHsmInternalFailureException { "Message": Nothing }

-- | Constructs CloudHsmInternalFailureException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudHsmInternalFailureException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> CloudHsmInternalFailureException
newCloudHsmInternalFailureException'  customize = (CloudHsmInternalFailureException <<< customize) { "Message": Nothing }



-- | <p>The request was rejected because it is not a valid request.</p>
newtype CloudHsmInvalidRequestException = CloudHsmInvalidRequestException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCloudHsmInvalidRequestException :: Newtype CloudHsmInvalidRequestException _
derive instance repGenericCloudHsmInvalidRequestException :: Generic CloudHsmInvalidRequestException _
instance showCloudHsmInvalidRequestException :: Show CloudHsmInvalidRequestException where show = genericShow
instance decodeCloudHsmInvalidRequestException :: Decode CloudHsmInvalidRequestException where decode = genericDecode options
instance encodeCloudHsmInvalidRequestException :: Encode CloudHsmInvalidRequestException where encode = genericEncode options

-- | Constructs CloudHsmInvalidRequestException from required parameters
newCloudHsmInvalidRequestException :: CloudHsmInvalidRequestException
newCloudHsmInvalidRequestException  = CloudHsmInvalidRequestException { "Message": Nothing }

-- | Constructs CloudHsmInvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudHsmInvalidRequestException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> CloudHsmInvalidRequestException
newCloudHsmInvalidRequestException'  customize = (CloudHsmInvalidRequestException <<< customize) { "Message": Nothing }



-- | <p>The request was rejected because it refers to a resource that cannot be found.</p>
newtype CloudHsmResourceNotFoundException = CloudHsmResourceNotFoundException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCloudHsmResourceNotFoundException :: Newtype CloudHsmResourceNotFoundException _
derive instance repGenericCloudHsmResourceNotFoundException :: Generic CloudHsmResourceNotFoundException _
instance showCloudHsmResourceNotFoundException :: Show CloudHsmResourceNotFoundException where show = genericShow
instance decodeCloudHsmResourceNotFoundException :: Decode CloudHsmResourceNotFoundException where decode = genericDecode options
instance encodeCloudHsmResourceNotFoundException :: Encode CloudHsmResourceNotFoundException where encode = genericEncode options

-- | Constructs CloudHsmResourceNotFoundException from required parameters
newCloudHsmResourceNotFoundException :: CloudHsmResourceNotFoundException
newCloudHsmResourceNotFoundException  = CloudHsmResourceNotFoundException { "Message": Nothing }

-- | Constructs CloudHsmResourceNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudHsmResourceNotFoundException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> CloudHsmResourceNotFoundException
newCloudHsmResourceNotFoundException'  customize = (CloudHsmResourceNotFoundException <<< customize) { "Message": Nothing }



-- | <p>The request was rejected because an error occurred.</p>
newtype CloudHsmServiceException = CloudHsmServiceException 
  { "Message" :: Maybe (ErrorMessage')
  }
derive instance newtypeCloudHsmServiceException :: Newtype CloudHsmServiceException _
derive instance repGenericCloudHsmServiceException :: Generic CloudHsmServiceException _
instance showCloudHsmServiceException :: Show CloudHsmServiceException where show = genericShow
instance decodeCloudHsmServiceException :: Decode CloudHsmServiceException where decode = genericDecode options
instance encodeCloudHsmServiceException :: Encode CloudHsmServiceException where encode = genericEncode options

-- | Constructs CloudHsmServiceException from required parameters
newCloudHsmServiceException :: CloudHsmServiceException
newCloudHsmServiceException  = CloudHsmServiceException { "Message": Nothing }

-- | Constructs CloudHsmServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudHsmServiceException' :: ( { "Message" :: Maybe (ErrorMessage') } -> {"Message" :: Maybe (ErrorMessage') } ) -> CloudHsmServiceException
newCloudHsmServiceException'  customize = (CloudHsmServiceException <<< customize) { "Message": Nothing }



-- | <p>Contains information about an AWS CloudHSM cluster.</p>
newtype Cluster = Cluster 
  { "BackupPolicy" :: Maybe (BackupPolicy)
  , "ClusterId" :: Maybe (ClusterId)
  , "CreateTimestamp" :: Maybe (Types.Timestamp)
  , "Hsms" :: Maybe (Hsms)
  , "HsmType" :: Maybe (HsmType)
  , "PreCoPassword" :: Maybe (PreCoPassword)
  , "SecurityGroup" :: Maybe (SecurityGroup)
  , "SourceBackupId" :: Maybe (BackupId)
  , "State" :: Maybe (ClusterState)
  , "StateMessage" :: Maybe (StateMessage)
  , "SubnetMapping" :: Maybe (ExternalSubnetMapping)
  , "VpcId" :: Maybe (VpcId)
  , "Certificates" :: Maybe (Certificates)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where show = genericShow
instance decodeCluster :: Decode Cluster where decode = genericDecode options
instance encodeCluster :: Encode Cluster where encode = genericEncode options

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "BackupPolicy": Nothing, "Certificates": Nothing, "ClusterId": Nothing, "CreateTimestamp": Nothing, "HsmType": Nothing, "Hsms": Nothing, "PreCoPassword": Nothing, "SecurityGroup": Nothing, "SourceBackupId": Nothing, "State": Nothing, "StateMessage": Nothing, "SubnetMapping": Nothing, "VpcId": Nothing }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "BackupPolicy" :: Maybe (BackupPolicy) , "ClusterId" :: Maybe (ClusterId) , "CreateTimestamp" :: Maybe (Types.Timestamp) , "Hsms" :: Maybe (Hsms) , "HsmType" :: Maybe (HsmType) , "PreCoPassword" :: Maybe (PreCoPassword) , "SecurityGroup" :: Maybe (SecurityGroup) , "SourceBackupId" :: Maybe (BackupId) , "State" :: Maybe (ClusterState) , "StateMessage" :: Maybe (StateMessage) , "SubnetMapping" :: Maybe (ExternalSubnetMapping) , "VpcId" :: Maybe (VpcId) , "Certificates" :: Maybe (Certificates) } -> {"BackupPolicy" :: Maybe (BackupPolicy) , "ClusterId" :: Maybe (ClusterId) , "CreateTimestamp" :: Maybe (Types.Timestamp) , "Hsms" :: Maybe (Hsms) , "HsmType" :: Maybe (HsmType) , "PreCoPassword" :: Maybe (PreCoPassword) , "SecurityGroup" :: Maybe (SecurityGroup) , "SourceBackupId" :: Maybe (BackupId) , "State" :: Maybe (ClusterState) , "StateMessage" :: Maybe (StateMessage) , "SubnetMapping" :: Maybe (ExternalSubnetMapping) , "VpcId" :: Maybe (VpcId) , "Certificates" :: Maybe (Certificates) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "BackupPolicy": Nothing, "Certificates": Nothing, "ClusterId": Nothing, "CreateTimestamp": Nothing, "HsmType": Nothing, "Hsms": Nothing, "PreCoPassword": Nothing, "SecurityGroup": Nothing, "SourceBackupId": Nothing, "State": Nothing, "StateMessage": Nothing, "SubnetMapping": Nothing, "VpcId": Nothing }



newtype ClusterId = ClusterId String
derive instance newtypeClusterId :: Newtype ClusterId _
derive instance repGenericClusterId :: Generic ClusterId _
instance showClusterId :: Show ClusterId where show = genericShow
instance decodeClusterId :: Decode ClusterId where decode = genericDecode options
instance encodeClusterId :: Encode ClusterId where encode = genericEncode options



newtype ClusterState = ClusterState String
derive instance newtypeClusterState :: Newtype ClusterState _
derive instance repGenericClusterState :: Generic ClusterState _
instance showClusterState :: Show ClusterState where show = genericShow
instance decodeClusterState :: Decode ClusterState where decode = genericDecode options
instance encodeClusterState :: Encode ClusterState where encode = genericEncode options



newtype Clusters = Clusters (Array Cluster)
derive instance newtypeClusters :: Newtype Clusters _
derive instance repGenericClusters :: Generic Clusters _
instance showClusters :: Show Clusters where show = genericShow
instance decodeClusters :: Decode Clusters where decode = genericDecode options
instance encodeClusters :: Encode Clusters where encode = genericEncode options



newtype CreateClusterRequest = CreateClusterRequest 
  { "SubnetIds" :: (SubnetIds)
  , "HsmType" :: (HsmType)
  , "SourceBackupId" :: Maybe (BackupId)
  }
derive instance newtypeCreateClusterRequest :: Newtype CreateClusterRequest _
derive instance repGenericCreateClusterRequest :: Generic CreateClusterRequest _
instance showCreateClusterRequest :: Show CreateClusterRequest where show = genericShow
instance decodeCreateClusterRequest :: Decode CreateClusterRequest where decode = genericDecode options
instance encodeCreateClusterRequest :: Encode CreateClusterRequest where encode = genericEncode options

-- | Constructs CreateClusterRequest from required parameters
newCreateClusterRequest :: HsmType -> SubnetIds -> CreateClusterRequest
newCreateClusterRequest _HsmType _SubnetIds = CreateClusterRequest { "HsmType": _HsmType, "SubnetIds": _SubnetIds, "SourceBackupId": Nothing }

-- | Constructs CreateClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterRequest' :: HsmType -> SubnetIds -> ( { "SubnetIds" :: (SubnetIds) , "HsmType" :: (HsmType) , "SourceBackupId" :: Maybe (BackupId) } -> {"SubnetIds" :: (SubnetIds) , "HsmType" :: (HsmType) , "SourceBackupId" :: Maybe (BackupId) } ) -> CreateClusterRequest
newCreateClusterRequest' _HsmType _SubnetIds customize = (CreateClusterRequest <<< customize) { "HsmType": _HsmType, "SubnetIds": _SubnetIds, "SourceBackupId": Nothing }



newtype CreateClusterResponse = CreateClusterResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeCreateClusterResponse :: Newtype CreateClusterResponse _
derive instance repGenericCreateClusterResponse :: Generic CreateClusterResponse _
instance showCreateClusterResponse :: Show CreateClusterResponse where show = genericShow
instance decodeCreateClusterResponse :: Decode CreateClusterResponse where decode = genericDecode options
instance encodeCreateClusterResponse :: Encode CreateClusterResponse where encode = genericEncode options

-- | Constructs CreateClusterResponse from required parameters
newCreateClusterResponse :: CreateClusterResponse
newCreateClusterResponse  = CreateClusterResponse { "Cluster": Nothing }

-- | Constructs CreateClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateClusterResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> CreateClusterResponse
newCreateClusterResponse'  customize = (CreateClusterResponse <<< customize) { "Cluster": Nothing }



newtype CreateHsmRequest = CreateHsmRequest 
  { "ClusterId" :: (ClusterId)
  , "AvailabilityZone" :: (ExternalAz)
  , "IpAddress" :: Maybe (IpAddress)
  }
derive instance newtypeCreateHsmRequest :: Newtype CreateHsmRequest _
derive instance repGenericCreateHsmRequest :: Generic CreateHsmRequest _
instance showCreateHsmRequest :: Show CreateHsmRequest where show = genericShow
instance decodeCreateHsmRequest :: Decode CreateHsmRequest where decode = genericDecode options
instance encodeCreateHsmRequest :: Encode CreateHsmRequest where encode = genericEncode options

-- | Constructs CreateHsmRequest from required parameters
newCreateHsmRequest :: ExternalAz -> ClusterId -> CreateHsmRequest
newCreateHsmRequest _AvailabilityZone _ClusterId = CreateHsmRequest { "AvailabilityZone": _AvailabilityZone, "ClusterId": _ClusterId, "IpAddress": Nothing }

-- | Constructs CreateHsmRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHsmRequest' :: ExternalAz -> ClusterId -> ( { "ClusterId" :: (ClusterId) , "AvailabilityZone" :: (ExternalAz) , "IpAddress" :: Maybe (IpAddress) } -> {"ClusterId" :: (ClusterId) , "AvailabilityZone" :: (ExternalAz) , "IpAddress" :: Maybe (IpAddress) } ) -> CreateHsmRequest
newCreateHsmRequest' _AvailabilityZone _ClusterId customize = (CreateHsmRequest <<< customize) { "AvailabilityZone": _AvailabilityZone, "ClusterId": _ClusterId, "IpAddress": Nothing }



newtype CreateHsmResponse = CreateHsmResponse 
  { "Hsm" :: Maybe (Hsm)
  }
derive instance newtypeCreateHsmResponse :: Newtype CreateHsmResponse _
derive instance repGenericCreateHsmResponse :: Generic CreateHsmResponse _
instance showCreateHsmResponse :: Show CreateHsmResponse where show = genericShow
instance decodeCreateHsmResponse :: Decode CreateHsmResponse where decode = genericDecode options
instance encodeCreateHsmResponse :: Encode CreateHsmResponse where encode = genericEncode options

-- | Constructs CreateHsmResponse from required parameters
newCreateHsmResponse :: CreateHsmResponse
newCreateHsmResponse  = CreateHsmResponse { "Hsm": Nothing }

-- | Constructs CreateHsmResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateHsmResponse' :: ( { "Hsm" :: Maybe (Hsm) } -> {"Hsm" :: Maybe (Hsm) } ) -> CreateHsmResponse
newCreateHsmResponse'  customize = (CreateHsmResponse <<< customize) { "Hsm": Nothing }



newtype DeleteClusterRequest = DeleteClusterRequest 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeDeleteClusterRequest :: Newtype DeleteClusterRequest _
derive instance repGenericDeleteClusterRequest :: Generic DeleteClusterRequest _
instance showDeleteClusterRequest :: Show DeleteClusterRequest where show = genericShow
instance decodeDeleteClusterRequest :: Decode DeleteClusterRequest where decode = genericDecode options
instance encodeDeleteClusterRequest :: Encode DeleteClusterRequest where encode = genericEncode options

-- | Constructs DeleteClusterRequest from required parameters
newDeleteClusterRequest :: ClusterId -> DeleteClusterRequest
newDeleteClusterRequest _ClusterId = DeleteClusterRequest { "ClusterId": _ClusterId }

-- | Constructs DeleteClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> DeleteClusterRequest
newDeleteClusterRequest' _ClusterId customize = (DeleteClusterRequest <<< customize) { "ClusterId": _ClusterId }



newtype DeleteClusterResponse = DeleteClusterResponse 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeDeleteClusterResponse :: Newtype DeleteClusterResponse _
derive instance repGenericDeleteClusterResponse :: Generic DeleteClusterResponse _
instance showDeleteClusterResponse :: Show DeleteClusterResponse where show = genericShow
instance decodeDeleteClusterResponse :: Decode DeleteClusterResponse where decode = genericDecode options
instance encodeDeleteClusterResponse :: Encode DeleteClusterResponse where encode = genericEncode options

-- | Constructs DeleteClusterResponse from required parameters
newDeleteClusterResponse :: DeleteClusterResponse
newDeleteClusterResponse  = DeleteClusterResponse { "Cluster": Nothing }

-- | Constructs DeleteClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteClusterResponse' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> DeleteClusterResponse
newDeleteClusterResponse'  customize = (DeleteClusterResponse <<< customize) { "Cluster": Nothing }



newtype DeleteHsmRequest = DeleteHsmRequest 
  { "ClusterId" :: (ClusterId)
  , "HsmId" :: Maybe (HsmId)
  , "EniId" :: Maybe (EniId)
  , "EniIp" :: Maybe (IpAddress)
  }
derive instance newtypeDeleteHsmRequest :: Newtype DeleteHsmRequest _
derive instance repGenericDeleteHsmRequest :: Generic DeleteHsmRequest _
instance showDeleteHsmRequest :: Show DeleteHsmRequest where show = genericShow
instance decodeDeleteHsmRequest :: Decode DeleteHsmRequest where decode = genericDecode options
instance encodeDeleteHsmRequest :: Encode DeleteHsmRequest where encode = genericEncode options

-- | Constructs DeleteHsmRequest from required parameters
newDeleteHsmRequest :: ClusterId -> DeleteHsmRequest
newDeleteHsmRequest _ClusterId = DeleteHsmRequest { "ClusterId": _ClusterId, "EniId": Nothing, "EniIp": Nothing, "HsmId": Nothing }

-- | Constructs DeleteHsmRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHsmRequest' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "HsmId" :: Maybe (HsmId) , "EniId" :: Maybe (EniId) , "EniIp" :: Maybe (IpAddress) } -> {"ClusterId" :: (ClusterId) , "HsmId" :: Maybe (HsmId) , "EniId" :: Maybe (EniId) , "EniIp" :: Maybe (IpAddress) } ) -> DeleteHsmRequest
newDeleteHsmRequest' _ClusterId customize = (DeleteHsmRequest <<< customize) { "ClusterId": _ClusterId, "EniId": Nothing, "EniIp": Nothing, "HsmId": Nothing }



newtype DeleteHsmResponse = DeleteHsmResponse 
  { "HsmId" :: Maybe (HsmId)
  }
derive instance newtypeDeleteHsmResponse :: Newtype DeleteHsmResponse _
derive instance repGenericDeleteHsmResponse :: Generic DeleteHsmResponse _
instance showDeleteHsmResponse :: Show DeleteHsmResponse where show = genericShow
instance decodeDeleteHsmResponse :: Decode DeleteHsmResponse where decode = genericDecode options
instance encodeDeleteHsmResponse :: Encode DeleteHsmResponse where encode = genericEncode options

-- | Constructs DeleteHsmResponse from required parameters
newDeleteHsmResponse :: DeleteHsmResponse
newDeleteHsmResponse  = DeleteHsmResponse { "HsmId": Nothing }

-- | Constructs DeleteHsmResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteHsmResponse' :: ( { "HsmId" :: Maybe (HsmId) } -> {"HsmId" :: Maybe (HsmId) } ) -> DeleteHsmResponse
newDeleteHsmResponse'  customize = (DeleteHsmResponse <<< customize) { "HsmId": Nothing }



newtype DescribeBackupsRequest = DescribeBackupsRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxSize)
  , "Filters" :: Maybe (Filters)
  }
derive instance newtypeDescribeBackupsRequest :: Newtype DescribeBackupsRequest _
derive instance repGenericDescribeBackupsRequest :: Generic DescribeBackupsRequest _
instance showDescribeBackupsRequest :: Show DescribeBackupsRequest where show = genericShow
instance decodeDescribeBackupsRequest :: Decode DescribeBackupsRequest where decode = genericDecode options
instance encodeDescribeBackupsRequest :: Encode DescribeBackupsRequest where encode = genericEncode options

-- | Constructs DescribeBackupsRequest from required parameters
newDescribeBackupsRequest :: DescribeBackupsRequest
newDescribeBackupsRequest  = DescribeBackupsRequest { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeBackupsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) , "Filters" :: Maybe (Filters) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) , "Filters" :: Maybe (Filters) } ) -> DescribeBackupsRequest
newDescribeBackupsRequest'  customize = (DescribeBackupsRequest <<< customize) { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeBackupsResponse = DescribeBackupsResponse 
  { "Backups" :: Maybe (Backups)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeBackupsResponse :: Newtype DescribeBackupsResponse _
derive instance repGenericDescribeBackupsResponse :: Generic DescribeBackupsResponse _
instance showDescribeBackupsResponse :: Show DescribeBackupsResponse where show = genericShow
instance decodeDescribeBackupsResponse :: Decode DescribeBackupsResponse where decode = genericDecode options
instance encodeDescribeBackupsResponse :: Encode DescribeBackupsResponse where encode = genericEncode options

-- | Constructs DescribeBackupsResponse from required parameters
newDescribeBackupsResponse :: DescribeBackupsResponse
newDescribeBackupsResponse  = DescribeBackupsResponse { "Backups": Nothing, "NextToken": Nothing }

-- | Constructs DescribeBackupsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeBackupsResponse' :: ( { "Backups" :: Maybe (Backups) , "NextToken" :: Maybe (NextToken) } -> {"Backups" :: Maybe (Backups) , "NextToken" :: Maybe (NextToken) } ) -> DescribeBackupsResponse
newDescribeBackupsResponse'  customize = (DescribeBackupsResponse <<< customize) { "Backups": Nothing, "NextToken": Nothing }



newtype DescribeClustersRequest = DescribeClustersRequest 
  { "Filters" :: Maybe (Filters)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxSize)
  }
derive instance newtypeDescribeClustersRequest :: Newtype DescribeClustersRequest _
derive instance repGenericDescribeClustersRequest :: Generic DescribeClustersRequest _
instance showDescribeClustersRequest :: Show DescribeClustersRequest where show = genericShow
instance decodeDescribeClustersRequest :: Decode DescribeClustersRequest where decode = genericDecode options
instance encodeDescribeClustersRequest :: Encode DescribeClustersRequest where encode = genericEncode options

-- | Constructs DescribeClustersRequest from required parameters
newDescribeClustersRequest :: DescribeClustersRequest
newDescribeClustersRequest  = DescribeClustersRequest { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs DescribeClustersRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersRequest' :: ( { "Filters" :: Maybe (Filters) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) } -> {"Filters" :: Maybe (Filters) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) } ) -> DescribeClustersRequest
newDescribeClustersRequest'  customize = (DescribeClustersRequest <<< customize) { "Filters": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype DescribeClustersResponse = DescribeClustersResponse 
  { "Clusters" :: Maybe (Clusters)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeDescribeClustersResponse :: Newtype DescribeClustersResponse _
derive instance repGenericDescribeClustersResponse :: Generic DescribeClustersResponse _
instance showDescribeClustersResponse :: Show DescribeClustersResponse where show = genericShow
instance decodeDescribeClustersResponse :: Decode DescribeClustersResponse where decode = genericDecode options
instance encodeDescribeClustersResponse :: Encode DescribeClustersResponse where encode = genericEncode options

-- | Constructs DescribeClustersResponse from required parameters
newDescribeClustersResponse :: DescribeClustersResponse
newDescribeClustersResponse  = DescribeClustersResponse { "Clusters": Nothing, "NextToken": Nothing }

-- | Constructs DescribeClustersResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClustersResponse' :: ( { "Clusters" :: Maybe (Clusters) , "NextToken" :: Maybe (NextToken) } -> {"Clusters" :: Maybe (Clusters) , "NextToken" :: Maybe (NextToken) } ) -> DescribeClustersResponse
newDescribeClustersResponse'  customize = (DescribeClustersResponse <<< customize) { "Clusters": Nothing, "NextToken": Nothing }



newtype EniId = EniId String
derive instance newtypeEniId :: Newtype EniId _
derive instance repGenericEniId :: Generic EniId _
instance showEniId :: Show EniId where show = genericShow
instance decodeEniId :: Decode EniId where decode = genericDecode options
instance encodeEniId :: Encode EniId where encode = genericEncode options



newtype ExternalAz = ExternalAz String
derive instance newtypeExternalAz :: Newtype ExternalAz _
derive instance repGenericExternalAz :: Generic ExternalAz _
instance showExternalAz :: Show ExternalAz where show = genericShow
instance decodeExternalAz :: Decode ExternalAz where decode = genericDecode options
instance encodeExternalAz :: Encode ExternalAz where encode = genericEncode options



newtype ExternalSubnetMapping = ExternalSubnetMapping (StrMap.StrMap SubnetId)
derive instance newtypeExternalSubnetMapping :: Newtype ExternalSubnetMapping _
derive instance repGenericExternalSubnetMapping :: Generic ExternalSubnetMapping _
instance showExternalSubnetMapping :: Show ExternalSubnetMapping where show = genericShow
instance decodeExternalSubnetMapping :: Decode ExternalSubnetMapping where decode = genericDecode options
instance encodeExternalSubnetMapping :: Encode ExternalSubnetMapping where encode = genericEncode options



newtype Field = Field String
derive instance newtypeField :: Newtype Field _
derive instance repGenericField :: Generic Field _
instance showField :: Show Field where show = genericShow
instance decodeField :: Decode Field where decode = genericDecode options
instance encodeField :: Encode Field where encode = genericEncode options



newtype Filters = Filters (StrMap.StrMap Strings)
derive instance newtypeFilters :: Newtype Filters _
derive instance repGenericFilters :: Generic Filters _
instance showFilters :: Show Filters where show = genericShow
instance decodeFilters :: Decode Filters where decode = genericDecode options
instance encodeFilters :: Encode Filters where encode = genericEncode options



-- | <p>Contains information about a hardware security module (HSM) in an AWS CloudHSM cluster.</p>
newtype Hsm = Hsm 
  { "AvailabilityZone" :: Maybe (ExternalAz)
  , "ClusterId" :: Maybe (ClusterId)
  , "SubnetId" :: Maybe (SubnetId)
  , "EniId" :: Maybe (EniId)
  , "EniIp" :: Maybe (IpAddress)
  , "HsmId" :: (HsmId)
  , "State" :: Maybe (HsmState)
  , "StateMessage" :: Maybe (String)
  }
derive instance newtypeHsm :: Newtype Hsm _
derive instance repGenericHsm :: Generic Hsm _
instance showHsm :: Show Hsm where show = genericShow
instance decodeHsm :: Decode Hsm where decode = genericDecode options
instance encodeHsm :: Encode Hsm where encode = genericEncode options

-- | Constructs Hsm from required parameters
newHsm :: HsmId -> Hsm
newHsm _HsmId = Hsm { "HsmId": _HsmId, "AvailabilityZone": Nothing, "ClusterId": Nothing, "EniId": Nothing, "EniIp": Nothing, "State": Nothing, "StateMessage": Nothing, "SubnetId": Nothing }

-- | Constructs Hsm's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHsm' :: HsmId -> ( { "AvailabilityZone" :: Maybe (ExternalAz) , "ClusterId" :: Maybe (ClusterId) , "SubnetId" :: Maybe (SubnetId) , "EniId" :: Maybe (EniId) , "EniIp" :: Maybe (IpAddress) , "HsmId" :: (HsmId) , "State" :: Maybe (HsmState) , "StateMessage" :: Maybe (String) } -> {"AvailabilityZone" :: Maybe (ExternalAz) , "ClusterId" :: Maybe (ClusterId) , "SubnetId" :: Maybe (SubnetId) , "EniId" :: Maybe (EniId) , "EniIp" :: Maybe (IpAddress) , "HsmId" :: (HsmId) , "State" :: Maybe (HsmState) , "StateMessage" :: Maybe (String) } ) -> Hsm
newHsm' _HsmId customize = (Hsm <<< customize) { "HsmId": _HsmId, "AvailabilityZone": Nothing, "ClusterId": Nothing, "EniId": Nothing, "EniIp": Nothing, "State": Nothing, "StateMessage": Nothing, "SubnetId": Nothing }



newtype HsmId = HsmId String
derive instance newtypeHsmId :: Newtype HsmId _
derive instance repGenericHsmId :: Generic HsmId _
instance showHsmId :: Show HsmId where show = genericShow
instance decodeHsmId :: Decode HsmId where decode = genericDecode options
instance encodeHsmId :: Encode HsmId where encode = genericEncode options



newtype HsmState = HsmState String
derive instance newtypeHsmState :: Newtype HsmState _
derive instance repGenericHsmState :: Generic HsmState _
instance showHsmState :: Show HsmState where show = genericShow
instance decodeHsmState :: Decode HsmState where decode = genericDecode options
instance encodeHsmState :: Encode HsmState where encode = genericEncode options



newtype HsmType = HsmType String
derive instance newtypeHsmType :: Newtype HsmType _
derive instance repGenericHsmType :: Generic HsmType _
instance showHsmType :: Show HsmType where show = genericShow
instance decodeHsmType :: Decode HsmType where decode = genericDecode options
instance encodeHsmType :: Encode HsmType where encode = genericEncode options



newtype Hsms = Hsms (Array Hsm)
derive instance newtypeHsms :: Newtype Hsms _
derive instance repGenericHsms :: Generic Hsms _
instance showHsms :: Show Hsms where show = genericShow
instance decodeHsms :: Decode Hsms where decode = genericDecode options
instance encodeHsms :: Encode Hsms where encode = genericEncode options



newtype InitializeClusterRequest = InitializeClusterRequest 
  { "ClusterId" :: (ClusterId)
  , "SignedCert" :: (Cert)
  , "TrustAnchor" :: (Cert)
  }
derive instance newtypeInitializeClusterRequest :: Newtype InitializeClusterRequest _
derive instance repGenericInitializeClusterRequest :: Generic InitializeClusterRequest _
instance showInitializeClusterRequest :: Show InitializeClusterRequest where show = genericShow
instance decodeInitializeClusterRequest :: Decode InitializeClusterRequest where decode = genericDecode options
instance encodeInitializeClusterRequest :: Encode InitializeClusterRequest where encode = genericEncode options

-- | Constructs InitializeClusterRequest from required parameters
newInitializeClusterRequest :: ClusterId -> Cert -> Cert -> InitializeClusterRequest
newInitializeClusterRequest _ClusterId _SignedCert _TrustAnchor = InitializeClusterRequest { "ClusterId": _ClusterId, "SignedCert": _SignedCert, "TrustAnchor": _TrustAnchor }

-- | Constructs InitializeClusterRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitializeClusterRequest' :: ClusterId -> Cert -> Cert -> ( { "ClusterId" :: (ClusterId) , "SignedCert" :: (Cert) , "TrustAnchor" :: (Cert) } -> {"ClusterId" :: (ClusterId) , "SignedCert" :: (Cert) , "TrustAnchor" :: (Cert) } ) -> InitializeClusterRequest
newInitializeClusterRequest' _ClusterId _SignedCert _TrustAnchor customize = (InitializeClusterRequest <<< customize) { "ClusterId": _ClusterId, "SignedCert": _SignedCert, "TrustAnchor": _TrustAnchor }



newtype InitializeClusterResponse = InitializeClusterResponse 
  { "State" :: Maybe (ClusterState)
  , "StateMessage" :: Maybe (StateMessage)
  }
derive instance newtypeInitializeClusterResponse :: Newtype InitializeClusterResponse _
derive instance repGenericInitializeClusterResponse :: Generic InitializeClusterResponse _
instance showInitializeClusterResponse :: Show InitializeClusterResponse where show = genericShow
instance decodeInitializeClusterResponse :: Decode InitializeClusterResponse where decode = genericDecode options
instance encodeInitializeClusterResponse :: Encode InitializeClusterResponse where encode = genericEncode options

-- | Constructs InitializeClusterResponse from required parameters
newInitializeClusterResponse :: InitializeClusterResponse
newInitializeClusterResponse  = InitializeClusterResponse { "State": Nothing, "StateMessage": Nothing }

-- | Constructs InitializeClusterResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInitializeClusterResponse' :: ( { "State" :: Maybe (ClusterState) , "StateMessage" :: Maybe (StateMessage) } -> {"State" :: Maybe (ClusterState) , "StateMessage" :: Maybe (StateMessage) } ) -> InitializeClusterResponse
newInitializeClusterResponse'  customize = (InitializeClusterResponse <<< customize) { "State": Nothing, "StateMessage": Nothing }



newtype IpAddress = IpAddress String
derive instance newtypeIpAddress :: Newtype IpAddress _
derive instance repGenericIpAddress :: Generic IpAddress _
instance showIpAddress :: Show IpAddress where show = genericShow
instance decodeIpAddress :: Decode IpAddress where decode = genericDecode options
instance encodeIpAddress :: Encode IpAddress where encode = genericEncode options



newtype ListTagsRequest = ListTagsRequest 
  { "ResourceId" :: (ClusterId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxSize)
  }
derive instance newtypeListTagsRequest :: Newtype ListTagsRequest _
derive instance repGenericListTagsRequest :: Generic ListTagsRequest _
instance showListTagsRequest :: Show ListTagsRequest where show = genericShow
instance decodeListTagsRequest :: Decode ListTagsRequest where decode = genericDecode options
instance encodeListTagsRequest :: Encode ListTagsRequest where encode = genericEncode options

-- | Constructs ListTagsRequest from required parameters
newListTagsRequest :: ClusterId -> ListTagsRequest
newListTagsRequest _ResourceId = ListTagsRequest { "ResourceId": _ResourceId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListTagsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsRequest' :: ClusterId -> ( { "ResourceId" :: (ClusterId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) } -> {"ResourceId" :: (ClusterId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxSize) } ) -> ListTagsRequest
newListTagsRequest' _ResourceId customize = (ListTagsRequest <<< customize) { "ResourceId": _ResourceId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListTagsResponse = ListTagsResponse 
  { "TagList" :: (TagList)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTagsResponse :: Newtype ListTagsResponse _
derive instance repGenericListTagsResponse :: Generic ListTagsResponse _
instance showListTagsResponse :: Show ListTagsResponse where show = genericShow
instance decodeListTagsResponse :: Decode ListTagsResponse where decode = genericDecode options
instance encodeListTagsResponse :: Encode ListTagsResponse where encode = genericEncode options

-- | Constructs ListTagsResponse from required parameters
newListTagsResponse :: TagList -> ListTagsResponse
newListTagsResponse _TagList = ListTagsResponse { "TagList": _TagList, "NextToken": Nothing }

-- | Constructs ListTagsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTagsResponse' :: TagList -> ( { "TagList" :: (TagList) , "NextToken" :: Maybe (NextToken) } -> {"TagList" :: (TagList) , "NextToken" :: Maybe (NextToken) } ) -> ListTagsResponse
newListTagsResponse' _TagList customize = (ListTagsResponse <<< customize) { "TagList": _TagList, "NextToken": Nothing }



newtype MaxSize = MaxSize Int
derive instance newtypeMaxSize :: Newtype MaxSize _
derive instance repGenericMaxSize :: Generic MaxSize _
instance showMaxSize :: Show MaxSize where show = genericShow
instance decodeMaxSize :: Decode MaxSize where decode = genericDecode options
instance encodeMaxSize :: Encode MaxSize where encode = genericEncode options



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



newtype PreCoPassword = PreCoPassword String
derive instance newtypePreCoPassword :: Newtype PreCoPassword _
derive instance repGenericPreCoPassword :: Generic PreCoPassword _
instance showPreCoPassword :: Show PreCoPassword where show = genericShow
instance decodePreCoPassword :: Decode PreCoPassword where decode = genericDecode options
instance encodePreCoPassword :: Encode PreCoPassword where encode = genericEncode options



newtype SecurityGroup = SecurityGroup String
derive instance newtypeSecurityGroup :: Newtype SecurityGroup _
derive instance repGenericSecurityGroup :: Generic SecurityGroup _
instance showSecurityGroup :: Show SecurityGroup where show = genericShow
instance decodeSecurityGroup :: Decode SecurityGroup where decode = genericDecode options
instance encodeSecurityGroup :: Encode SecurityGroup where encode = genericEncode options



newtype StateMessage = StateMessage String
derive instance newtypeStateMessage :: Newtype StateMessage _
derive instance repGenericStateMessage :: Generic StateMessage _
instance showStateMessage :: Show StateMessage where show = genericShow
instance decodeStateMessage :: Decode StateMessage where decode = genericDecode options
instance encodeStateMessage :: Encode StateMessage where encode = genericEncode options



newtype Strings = Strings (Array String)
derive instance newtypeStrings :: Newtype Strings _
derive instance repGenericStrings :: Generic Strings _
instance showStrings :: Show Strings where show = genericShow
instance decodeStrings :: Decode Strings where decode = genericDecode options
instance encodeStrings :: Encode Strings where encode = genericEncode options



newtype SubnetId = SubnetId String
derive instance newtypeSubnetId :: Newtype SubnetId _
derive instance repGenericSubnetId :: Generic SubnetId _
instance showSubnetId :: Show SubnetId where show = genericShow
instance decodeSubnetId :: Decode SubnetId where decode = genericDecode options
instance encodeSubnetId :: Encode SubnetId where encode = genericEncode options



newtype SubnetIds = SubnetIds (Array SubnetId)
derive instance newtypeSubnetIds :: Newtype SubnetIds _
derive instance repGenericSubnetIds :: Generic SubnetIds _
instance showSubnetIds :: Show SubnetIds where show = genericShow
instance decodeSubnetIds :: Decode SubnetIds where decode = genericDecode options
instance encodeSubnetIds :: Encode SubnetIds where encode = genericEncode options



-- | <p>Contains a tag. A tag is a key-value pair.</p>
newtype Tag = Tag 
  { "Key" :: (TagKey)
  , "Value" :: (TagValue)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: TagKey -> TagValue -> Tag
newTag _Key _Value = Tag { "Key": _Key, "Value": _Value }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: TagKey -> TagValue -> ( { "Key" :: (TagKey) , "Value" :: (TagValue) } -> {"Key" :: (TagKey) , "Value" :: (TagValue) } ) -> Tag
newTag' _Key _Value customize = (Tag <<< customize) { "Key": _Key, "Value": _Value }



newtype TagKey = TagKey String
derive instance newtypeTagKey :: Newtype TagKey _
derive instance repGenericTagKey :: Generic TagKey _
instance showTagKey :: Show TagKey where show = genericShow
instance decodeTagKey :: Decode TagKey where decode = genericDecode options
instance encodeTagKey :: Encode TagKey where encode = genericEncode options



newtype TagKeyList = TagKeyList (Array TagKey)
derive instance newtypeTagKeyList :: Newtype TagKeyList _
derive instance repGenericTagKeyList :: Generic TagKeyList _
instance showTagKeyList :: Show TagKeyList where show = genericShow
instance decodeTagKeyList :: Decode TagKeyList where decode = genericDecode options
instance encodeTagKeyList :: Encode TagKeyList where encode = genericEncode options



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



newtype TagResourceRequest = TagResourceRequest 
  { "ResourceId" :: (ClusterId)
  , "TagList" :: (TagList)
  }
derive instance newtypeTagResourceRequest :: Newtype TagResourceRequest _
derive instance repGenericTagResourceRequest :: Generic TagResourceRequest _
instance showTagResourceRequest :: Show TagResourceRequest where show = genericShow
instance decodeTagResourceRequest :: Decode TagResourceRequest where decode = genericDecode options
instance encodeTagResourceRequest :: Encode TagResourceRequest where encode = genericEncode options

-- | Constructs TagResourceRequest from required parameters
newTagResourceRequest :: ClusterId -> TagList -> TagResourceRequest
newTagResourceRequest _ResourceId _TagList = TagResourceRequest { "ResourceId": _ResourceId, "TagList": _TagList }

-- | Constructs TagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTagResourceRequest' :: ClusterId -> TagList -> ( { "ResourceId" :: (ClusterId) , "TagList" :: (TagList) } -> {"ResourceId" :: (ClusterId) , "TagList" :: (TagList) } ) -> TagResourceRequest
newTagResourceRequest' _ResourceId _TagList customize = (TagResourceRequest <<< customize) { "ResourceId": _ResourceId, "TagList": _TagList }



newtype TagResourceResponse = TagResourceResponse Types.NoArguments
derive instance newtypeTagResourceResponse :: Newtype TagResourceResponse _
derive instance repGenericTagResourceResponse :: Generic TagResourceResponse _
instance showTagResourceResponse :: Show TagResourceResponse where show = genericShow
instance decodeTagResourceResponse :: Decode TagResourceResponse where decode = genericDecode options
instance encodeTagResourceResponse :: Encode TagResourceResponse where encode = genericEncode options



newtype TagValue = TagValue String
derive instance newtypeTagValue :: Newtype TagValue _
derive instance repGenericTagValue :: Generic TagValue _
instance showTagValue :: Show TagValue where show = genericShow
instance decodeTagValue :: Decode TagValue where decode = genericDecode options
instance encodeTagValue :: Encode TagValue where encode = genericEncode options



newtype UntagResourceRequest = UntagResourceRequest 
  { "ResourceId" :: (ClusterId)
  , "TagKeyList" :: (TagKeyList)
  }
derive instance newtypeUntagResourceRequest :: Newtype UntagResourceRequest _
derive instance repGenericUntagResourceRequest :: Generic UntagResourceRequest _
instance showUntagResourceRequest :: Show UntagResourceRequest where show = genericShow
instance decodeUntagResourceRequest :: Decode UntagResourceRequest where decode = genericDecode options
instance encodeUntagResourceRequest :: Encode UntagResourceRequest where encode = genericEncode options

-- | Constructs UntagResourceRequest from required parameters
newUntagResourceRequest :: ClusterId -> TagKeyList -> UntagResourceRequest
newUntagResourceRequest _ResourceId _TagKeyList = UntagResourceRequest { "ResourceId": _ResourceId, "TagKeyList": _TagKeyList }

-- | Constructs UntagResourceRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUntagResourceRequest' :: ClusterId -> TagKeyList -> ( { "ResourceId" :: (ClusterId) , "TagKeyList" :: (TagKeyList) } -> {"ResourceId" :: (ClusterId) , "TagKeyList" :: (TagKeyList) } ) -> UntagResourceRequest
newUntagResourceRequest' _ResourceId _TagKeyList customize = (UntagResourceRequest <<< customize) { "ResourceId": _ResourceId, "TagKeyList": _TagKeyList }



newtype UntagResourceResponse = UntagResourceResponse Types.NoArguments
derive instance newtypeUntagResourceResponse :: Newtype UntagResourceResponse _
derive instance repGenericUntagResourceResponse :: Generic UntagResourceResponse _
instance showUntagResourceResponse :: Show UntagResourceResponse where show = genericShow
instance decodeUntagResourceResponse :: Decode UntagResourceResponse where decode = genericDecode options
instance encodeUntagResourceResponse :: Encode UntagResourceResponse where encode = genericEncode options



newtype VpcId = VpcId String
derive instance newtypeVpcId :: Newtype VpcId _
derive instance repGenericVpcId :: Generic VpcId _
instance showVpcId :: Show VpcId where show = genericShow
instance decodeVpcId :: Decode VpcId where decode = genericDecode options
instance encodeVpcId :: Encode VpcId where encode = genericEncode options



newtype ErrorMessage' = ErrorMessage' String
derive instance newtypeErrorMessage' :: Newtype ErrorMessage' _
derive instance repGenericErrorMessage' :: Generic ErrorMessage' _
instance showErrorMessage' :: Show ErrorMessage' where show = genericShow
instance decodeErrorMessage' :: Decode ErrorMessage' where decode = genericDecode options
instance encodeErrorMessage' :: Encode ErrorMessage' where encode = genericEncode options

