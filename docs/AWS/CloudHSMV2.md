## Module AWS.CloudHSMV2

<p>For more information about AWS CloudHSM, see <a href="http://aws.amazon.com/cloudhsm/">AWS CloudHSM</a> and the <a href="http://docs.aws.amazon.com/cloudhsm/latest/userguide/">AWS CloudHSM User Guide</a>.</p>

#### `createCluster`

``` purescript
createCluster :: forall eff. CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResponse
```

<p>Creates a new AWS CloudHSM cluster.</p>

#### `createHsm`

``` purescript
createHsm :: forall eff. CreateHsmRequest -> Aff (exception :: EXCEPTION | eff) CreateHsmResponse
```

<p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.</p>

#### `deleteCluster`

``` purescript
deleteCluster :: forall eff. DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DeleteClusterResponse
```

<p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>

#### `deleteHsm`

``` purescript
deleteHsm :: forall eff. DeleteHsmRequest -> Aff (exception :: EXCEPTION | eff) DeleteHsmResponse
```

<p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>

#### `describeBackups`

``` purescript
describeBackups :: forall eff. DescribeBackupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeBackupsResponse
```

<p>Gets information about backups of AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more backups to get.</p>

#### `describeClusters`

``` purescript
describeClusters :: forall eff. DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeClustersResponse
```

<p>Gets information about AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more clusters to get.</p>

#### `initializeCluster`

``` purescript
initializeCluster :: forall eff. InitializeClusterRequest -> Aff (exception :: EXCEPTION | eff) InitializeClusterResponse
```

<p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use <a>DescribeClusters</a>.</p>

#### `listTags`

``` purescript
listTags :: forall eff. ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>Gets a list of tags for the specified AWS CloudHSM cluster.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more tags to get.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. TagResourceRequest -> Aff (exception :: EXCEPTION | eff) TagResourceResponse
```

<p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>

#### `untagResource`

``` purescript
untagResource :: forall eff. UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) UntagResourceResponse
```

<p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>

#### `Backup`

``` purescript
newtype Backup
  = Backup { "BackupId" :: BackupId, "BackupState" :: NullOrUndefined (BackupState), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp) }
```

<p>Contains information about a backup of an AWS CloudHSM cluster.</p>

##### Instances
``` purescript
Newtype Backup _
Generic Backup _
Show Backup
Decode Backup
Encode Backup
```

#### `newBackup`

``` purescript
newBackup :: BackupId -> Backup
```

Constructs Backup from required parameters

#### `newBackup'`

``` purescript
newBackup' :: BackupId -> ({ "BackupId" :: BackupId, "BackupState" :: NullOrUndefined (BackupState), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp) } -> { "BackupId" :: BackupId, "BackupState" :: NullOrUndefined (BackupState), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp) }) -> Backup
```

Constructs Backup's fields from required parameters

#### `BackupId`

``` purescript
newtype BackupId
  = BackupId String
```

##### Instances
``` purescript
Newtype BackupId _
Generic BackupId _
Show BackupId
Decode BackupId
Encode BackupId
```

#### `BackupPolicy`

``` purescript
newtype BackupPolicy
  = BackupPolicy String
```

##### Instances
``` purescript
Newtype BackupPolicy _
Generic BackupPolicy _
Show BackupPolicy
Decode BackupPolicy
Encode BackupPolicy
```

#### `BackupState`

``` purescript
newtype BackupState
  = BackupState String
```

##### Instances
``` purescript
Newtype BackupState _
Generic BackupState _
Show BackupState
Decode BackupState
Encode BackupState
```

#### `Backups`

``` purescript
newtype Backups
  = Backups (Array Backup)
```

##### Instances
``` purescript
Newtype Backups _
Generic Backups _
Show Backups
Decode Backups
Encode Backups
```

#### `Cert`

``` purescript
newtype Cert
  = Cert String
```

##### Instances
``` purescript
Newtype Cert _
Generic Cert _
Show Cert
Decode Cert
Encode Cert
```

#### `Certificates`

``` purescript
newtype Certificates
  = Certificates { "ClusterCsr" :: NullOrUndefined (Cert), "HsmCertificate" :: NullOrUndefined (Cert), "AwsHardwareCertificate" :: NullOrUndefined (Cert), "ManufacturerHardwareCertificate" :: NullOrUndefined (Cert), "ClusterCertificate" :: NullOrUndefined (Cert) }
```

<p>Contains one or more certificates or a certificate signing request (CSR).</p>

##### Instances
``` purescript
Newtype Certificates _
Generic Certificates _
Show Certificates
Decode Certificates
Encode Certificates
```

#### `newCertificates`

``` purescript
newCertificates :: Certificates
```

Constructs Certificates from required parameters

#### `newCertificates'`

``` purescript
newCertificates' :: ({ "ClusterCsr" :: NullOrUndefined (Cert), "HsmCertificate" :: NullOrUndefined (Cert), "AwsHardwareCertificate" :: NullOrUndefined (Cert), "ManufacturerHardwareCertificate" :: NullOrUndefined (Cert), "ClusterCertificate" :: NullOrUndefined (Cert) } -> { "ClusterCsr" :: NullOrUndefined (Cert), "HsmCertificate" :: NullOrUndefined (Cert), "AwsHardwareCertificate" :: NullOrUndefined (Cert), "ManufacturerHardwareCertificate" :: NullOrUndefined (Cert), "ClusterCertificate" :: NullOrUndefined (Cert) }) -> Certificates
```

Constructs Certificates's fields from required parameters

#### `CloudHsmAccessDeniedException`

``` purescript
newtype CloudHsmAccessDeniedException
  = CloudHsmAccessDeniedException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The request was rejected because the requester does not have permission to perform the requested operation.</p>

##### Instances
``` purescript
Newtype CloudHsmAccessDeniedException _
Generic CloudHsmAccessDeniedException _
Show CloudHsmAccessDeniedException
Decode CloudHsmAccessDeniedException
Encode CloudHsmAccessDeniedException
```

#### `newCloudHsmAccessDeniedException`

``` purescript
newCloudHsmAccessDeniedException :: CloudHsmAccessDeniedException
```

Constructs CloudHsmAccessDeniedException from required parameters

#### `newCloudHsmAccessDeniedException'`

``` purescript
newCloudHsmAccessDeniedException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CloudHsmAccessDeniedException
```

Constructs CloudHsmAccessDeniedException's fields from required parameters

#### `CloudHsmInternalFailureException`

``` purescript
newtype CloudHsmInternalFailureException
  = CloudHsmInternalFailureException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.</p>

##### Instances
``` purescript
Newtype CloudHsmInternalFailureException _
Generic CloudHsmInternalFailureException _
Show CloudHsmInternalFailureException
Decode CloudHsmInternalFailureException
Encode CloudHsmInternalFailureException
```

#### `newCloudHsmInternalFailureException`

``` purescript
newCloudHsmInternalFailureException :: CloudHsmInternalFailureException
```

Constructs CloudHsmInternalFailureException from required parameters

#### `newCloudHsmInternalFailureException'`

``` purescript
newCloudHsmInternalFailureException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CloudHsmInternalFailureException
```

Constructs CloudHsmInternalFailureException's fields from required parameters

#### `CloudHsmInvalidRequestException`

``` purescript
newtype CloudHsmInvalidRequestException
  = CloudHsmInvalidRequestException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The request was rejected because it is not a valid request.</p>

##### Instances
``` purescript
Newtype CloudHsmInvalidRequestException _
Generic CloudHsmInvalidRequestException _
Show CloudHsmInvalidRequestException
Decode CloudHsmInvalidRequestException
Encode CloudHsmInvalidRequestException
```

#### `newCloudHsmInvalidRequestException`

``` purescript
newCloudHsmInvalidRequestException :: CloudHsmInvalidRequestException
```

Constructs CloudHsmInvalidRequestException from required parameters

#### `newCloudHsmInvalidRequestException'`

``` purescript
newCloudHsmInvalidRequestException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CloudHsmInvalidRequestException
```

Constructs CloudHsmInvalidRequestException's fields from required parameters

#### `CloudHsmResourceNotFoundException`

``` purescript
newtype CloudHsmResourceNotFoundException
  = CloudHsmResourceNotFoundException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The request was rejected because it refers to a resource that cannot be found.</p>

##### Instances
``` purescript
Newtype CloudHsmResourceNotFoundException _
Generic CloudHsmResourceNotFoundException _
Show CloudHsmResourceNotFoundException
Decode CloudHsmResourceNotFoundException
Encode CloudHsmResourceNotFoundException
```

#### `newCloudHsmResourceNotFoundException`

``` purescript
newCloudHsmResourceNotFoundException :: CloudHsmResourceNotFoundException
```

Constructs CloudHsmResourceNotFoundException from required parameters

#### `newCloudHsmResourceNotFoundException'`

``` purescript
newCloudHsmResourceNotFoundException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CloudHsmResourceNotFoundException
```

Constructs CloudHsmResourceNotFoundException's fields from required parameters

#### `CloudHsmServiceException`

``` purescript
newtype CloudHsmServiceException
  = CloudHsmServiceException { "Message" :: NullOrUndefined (ErrorMessage') }
```

<p>The request was rejected because an error occurred.</p>

##### Instances
``` purescript
Newtype CloudHsmServiceException _
Generic CloudHsmServiceException _
Show CloudHsmServiceException
Decode CloudHsmServiceException
Encode CloudHsmServiceException
```

#### `newCloudHsmServiceException`

``` purescript
newCloudHsmServiceException :: CloudHsmServiceException
```

Constructs CloudHsmServiceException from required parameters

#### `newCloudHsmServiceException'`

``` purescript
newCloudHsmServiceException' :: ({ "Message" :: NullOrUndefined (ErrorMessage') } -> { "Message" :: NullOrUndefined (ErrorMessage') }) -> CloudHsmServiceException
```

Constructs CloudHsmServiceException's fields from required parameters

#### `Cluster`

``` purescript
newtype Cluster
  = Cluster { "BackupPolicy" :: NullOrUndefined (BackupPolicy), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp), "Hsms" :: NullOrUndefined (Hsms), "HsmType" :: NullOrUndefined (HsmType), "PreCoPassword" :: NullOrUndefined (PreCoPassword), "SecurityGroup" :: NullOrUndefined (SecurityGroup), "SourceBackupId" :: NullOrUndefined (BackupId), "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage), "SubnetMapping" :: NullOrUndefined (ExternalSubnetMapping), "VpcId" :: NullOrUndefined (VpcId), "Certificates" :: NullOrUndefined (Certificates) }
```

<p>Contains information about an AWS CloudHSM cluster.</p>

##### Instances
``` purescript
Newtype Cluster _
Generic Cluster _
Show Cluster
Decode Cluster
Encode Cluster
```

#### `newCluster`

``` purescript
newCluster :: Cluster
```

Constructs Cluster from required parameters

#### `newCluster'`

``` purescript
newCluster' :: ({ "BackupPolicy" :: NullOrUndefined (BackupPolicy), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp), "Hsms" :: NullOrUndefined (Hsms), "HsmType" :: NullOrUndefined (HsmType), "PreCoPassword" :: NullOrUndefined (PreCoPassword), "SecurityGroup" :: NullOrUndefined (SecurityGroup), "SourceBackupId" :: NullOrUndefined (BackupId), "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage), "SubnetMapping" :: NullOrUndefined (ExternalSubnetMapping), "VpcId" :: NullOrUndefined (VpcId), "Certificates" :: NullOrUndefined (Certificates) } -> { "BackupPolicy" :: NullOrUndefined (BackupPolicy), "ClusterId" :: NullOrUndefined (ClusterId), "CreateTimestamp" :: NullOrUndefined (Timestamp), "Hsms" :: NullOrUndefined (Hsms), "HsmType" :: NullOrUndefined (HsmType), "PreCoPassword" :: NullOrUndefined (PreCoPassword), "SecurityGroup" :: NullOrUndefined (SecurityGroup), "SourceBackupId" :: NullOrUndefined (BackupId), "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage), "SubnetMapping" :: NullOrUndefined (ExternalSubnetMapping), "VpcId" :: NullOrUndefined (VpcId), "Certificates" :: NullOrUndefined (Certificates) }) -> Cluster
```

Constructs Cluster's fields from required parameters

#### `ClusterId`

``` purescript
newtype ClusterId
  = ClusterId String
```

##### Instances
``` purescript
Newtype ClusterId _
Generic ClusterId _
Show ClusterId
Decode ClusterId
Encode ClusterId
```

#### `ClusterState`

``` purescript
newtype ClusterState
  = ClusterState String
```

##### Instances
``` purescript
Newtype ClusterState _
Generic ClusterState _
Show ClusterState
Decode ClusterState
Encode ClusterState
```

#### `Clusters`

``` purescript
newtype Clusters
  = Clusters (Array Cluster)
```

##### Instances
``` purescript
Newtype Clusters _
Generic Clusters _
Show Clusters
Decode Clusters
Encode Clusters
```

#### `CreateClusterRequest`

``` purescript
newtype CreateClusterRequest
  = CreateClusterRequest { "SubnetIds" :: SubnetIds, "HsmType" :: HsmType, "SourceBackupId" :: NullOrUndefined (BackupId) }
```

##### Instances
``` purescript
Newtype CreateClusterRequest _
Generic CreateClusterRequest _
Show CreateClusterRequest
Decode CreateClusterRequest
Encode CreateClusterRequest
```

#### `newCreateClusterRequest`

``` purescript
newCreateClusterRequest :: HsmType -> SubnetIds -> CreateClusterRequest
```

Constructs CreateClusterRequest from required parameters

#### `newCreateClusterRequest'`

``` purescript
newCreateClusterRequest' :: HsmType -> SubnetIds -> ({ "SubnetIds" :: SubnetIds, "HsmType" :: HsmType, "SourceBackupId" :: NullOrUndefined (BackupId) } -> { "SubnetIds" :: SubnetIds, "HsmType" :: HsmType, "SourceBackupId" :: NullOrUndefined (BackupId) }) -> CreateClusterRequest
```

Constructs CreateClusterRequest's fields from required parameters

#### `CreateClusterResponse`

``` purescript
newtype CreateClusterResponse
  = CreateClusterResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype CreateClusterResponse _
Generic CreateClusterResponse _
Show CreateClusterResponse
Decode CreateClusterResponse
Encode CreateClusterResponse
```

#### `newCreateClusterResponse`

``` purescript
newCreateClusterResponse :: CreateClusterResponse
```

Constructs CreateClusterResponse from required parameters

#### `newCreateClusterResponse'`

``` purescript
newCreateClusterResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> CreateClusterResponse
```

Constructs CreateClusterResponse's fields from required parameters

#### `CreateHsmRequest`

``` purescript
newtype CreateHsmRequest
  = CreateHsmRequest { "ClusterId" :: ClusterId, "AvailabilityZone" :: ExternalAz, "IpAddress" :: NullOrUndefined (IpAddress) }
```

##### Instances
``` purescript
Newtype CreateHsmRequest _
Generic CreateHsmRequest _
Show CreateHsmRequest
Decode CreateHsmRequest
Encode CreateHsmRequest
```

#### `newCreateHsmRequest`

``` purescript
newCreateHsmRequest :: ExternalAz -> ClusterId -> CreateHsmRequest
```

Constructs CreateHsmRequest from required parameters

#### `newCreateHsmRequest'`

``` purescript
newCreateHsmRequest' :: ExternalAz -> ClusterId -> ({ "ClusterId" :: ClusterId, "AvailabilityZone" :: ExternalAz, "IpAddress" :: NullOrUndefined (IpAddress) } -> { "ClusterId" :: ClusterId, "AvailabilityZone" :: ExternalAz, "IpAddress" :: NullOrUndefined (IpAddress) }) -> CreateHsmRequest
```

Constructs CreateHsmRequest's fields from required parameters

#### `CreateHsmResponse`

``` purescript
newtype CreateHsmResponse
  = CreateHsmResponse { "Hsm" :: NullOrUndefined (Hsm) }
```

##### Instances
``` purescript
Newtype CreateHsmResponse _
Generic CreateHsmResponse _
Show CreateHsmResponse
Decode CreateHsmResponse
Encode CreateHsmResponse
```

#### `newCreateHsmResponse`

``` purescript
newCreateHsmResponse :: CreateHsmResponse
```

Constructs CreateHsmResponse from required parameters

#### `newCreateHsmResponse'`

``` purescript
newCreateHsmResponse' :: ({ "Hsm" :: NullOrUndefined (Hsm) } -> { "Hsm" :: NullOrUndefined (Hsm) }) -> CreateHsmResponse
```

Constructs CreateHsmResponse's fields from required parameters

#### `DeleteClusterRequest`

``` purescript
newtype DeleteClusterRequest
  = DeleteClusterRequest { "ClusterId" :: ClusterId }
```

##### Instances
``` purescript
Newtype DeleteClusterRequest _
Generic DeleteClusterRequest _
Show DeleteClusterRequest
Decode DeleteClusterRequest
Encode DeleteClusterRequest
```

#### `newDeleteClusterRequest`

``` purescript
newDeleteClusterRequest :: ClusterId -> DeleteClusterRequest
```

Constructs DeleteClusterRequest from required parameters

#### `newDeleteClusterRequest'`

``` purescript
newDeleteClusterRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId } -> { "ClusterId" :: ClusterId }) -> DeleteClusterRequest
```

Constructs DeleteClusterRequest's fields from required parameters

#### `DeleteClusterResponse`

``` purescript
newtype DeleteClusterResponse
  = DeleteClusterResponse { "Cluster" :: NullOrUndefined (Cluster) }
```

##### Instances
``` purescript
Newtype DeleteClusterResponse _
Generic DeleteClusterResponse _
Show DeleteClusterResponse
Decode DeleteClusterResponse
Encode DeleteClusterResponse
```

#### `newDeleteClusterResponse`

``` purescript
newDeleteClusterResponse :: DeleteClusterResponse
```

Constructs DeleteClusterResponse from required parameters

#### `newDeleteClusterResponse'`

``` purescript
newDeleteClusterResponse' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> DeleteClusterResponse
```

Constructs DeleteClusterResponse's fields from required parameters

#### `DeleteHsmRequest`

``` purescript
newtype DeleteHsmRequest
  = DeleteHsmRequest { "ClusterId" :: ClusterId, "HsmId" :: NullOrUndefined (HsmId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress) }
```

##### Instances
``` purescript
Newtype DeleteHsmRequest _
Generic DeleteHsmRequest _
Show DeleteHsmRequest
Decode DeleteHsmRequest
Encode DeleteHsmRequest
```

#### `newDeleteHsmRequest`

``` purescript
newDeleteHsmRequest :: ClusterId -> DeleteHsmRequest
```

Constructs DeleteHsmRequest from required parameters

#### `newDeleteHsmRequest'`

``` purescript
newDeleteHsmRequest' :: ClusterId -> ({ "ClusterId" :: ClusterId, "HsmId" :: NullOrUndefined (HsmId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress) } -> { "ClusterId" :: ClusterId, "HsmId" :: NullOrUndefined (HsmId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress) }) -> DeleteHsmRequest
```

Constructs DeleteHsmRequest's fields from required parameters

#### `DeleteHsmResponse`

``` purescript
newtype DeleteHsmResponse
  = DeleteHsmResponse { "HsmId" :: NullOrUndefined (HsmId) }
```

##### Instances
``` purescript
Newtype DeleteHsmResponse _
Generic DeleteHsmResponse _
Show DeleteHsmResponse
Decode DeleteHsmResponse
Encode DeleteHsmResponse
```

#### `newDeleteHsmResponse`

``` purescript
newDeleteHsmResponse :: DeleteHsmResponse
```

Constructs DeleteHsmResponse from required parameters

#### `newDeleteHsmResponse'`

``` purescript
newDeleteHsmResponse' :: ({ "HsmId" :: NullOrUndefined (HsmId) } -> { "HsmId" :: NullOrUndefined (HsmId) }) -> DeleteHsmResponse
```

Constructs DeleteHsmResponse's fields from required parameters

#### `DescribeBackupsRequest`

``` purescript
newtype DescribeBackupsRequest
  = DescribeBackupsRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize), "Filters" :: NullOrUndefined (Filters) }
```

##### Instances
``` purescript
Newtype DescribeBackupsRequest _
Generic DescribeBackupsRequest _
Show DescribeBackupsRequest
Decode DescribeBackupsRequest
Encode DescribeBackupsRequest
```

#### `newDescribeBackupsRequest`

``` purescript
newDescribeBackupsRequest :: DescribeBackupsRequest
```

Constructs DescribeBackupsRequest from required parameters

#### `newDescribeBackupsRequest'`

``` purescript
newDescribeBackupsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize), "Filters" :: NullOrUndefined (Filters) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize), "Filters" :: NullOrUndefined (Filters) }) -> DescribeBackupsRequest
```

Constructs DescribeBackupsRequest's fields from required parameters

#### `DescribeBackupsResponse`

``` purescript
newtype DescribeBackupsResponse
  = DescribeBackupsResponse { "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeBackupsResponse _
Generic DescribeBackupsResponse _
Show DescribeBackupsResponse
Decode DescribeBackupsResponse
Encode DescribeBackupsResponse
```

#### `newDescribeBackupsResponse`

``` purescript
newDescribeBackupsResponse :: DescribeBackupsResponse
```

Constructs DescribeBackupsResponse from required parameters

#### `newDescribeBackupsResponse'`

``` purescript
newDescribeBackupsResponse' :: ({ "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (NextToken) } -> { "Backups" :: NullOrUndefined (Backups), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeBackupsResponse
```

Constructs DescribeBackupsResponse's fields from required parameters

#### `DescribeClustersRequest`

``` purescript
newtype DescribeClustersRequest
  = DescribeClustersRequest { "Filters" :: NullOrUndefined (Filters), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) }
```

##### Instances
``` purescript
Newtype DescribeClustersRequest _
Generic DescribeClustersRequest _
Show DescribeClustersRequest
Decode DescribeClustersRequest
Encode DescribeClustersRequest
```

#### `newDescribeClustersRequest`

``` purescript
newDescribeClustersRequest :: DescribeClustersRequest
```

Constructs DescribeClustersRequest from required parameters

#### `newDescribeClustersRequest'`

``` purescript
newDescribeClustersRequest' :: ({ "Filters" :: NullOrUndefined (Filters), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) } -> { "Filters" :: NullOrUndefined (Filters), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) }) -> DescribeClustersRequest
```

Constructs DescribeClustersRequest's fields from required parameters

#### `DescribeClustersResponse`

``` purescript
newtype DescribeClustersResponse
  = DescribeClustersResponse { "Clusters" :: NullOrUndefined (Clusters), "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype DescribeClustersResponse _
Generic DescribeClustersResponse _
Show DescribeClustersResponse
Decode DescribeClustersResponse
Encode DescribeClustersResponse
```

#### `newDescribeClustersResponse`

``` purescript
newDescribeClustersResponse :: DescribeClustersResponse
```

Constructs DescribeClustersResponse from required parameters

#### `newDescribeClustersResponse'`

``` purescript
newDescribeClustersResponse' :: ({ "Clusters" :: NullOrUndefined (Clusters), "NextToken" :: NullOrUndefined (NextToken) } -> { "Clusters" :: NullOrUndefined (Clusters), "NextToken" :: NullOrUndefined (NextToken) }) -> DescribeClustersResponse
```

Constructs DescribeClustersResponse's fields from required parameters

#### `EniId`

``` purescript
newtype EniId
  = EniId String
```

##### Instances
``` purescript
Newtype EniId _
Generic EniId _
Show EniId
Decode EniId
Encode EniId
```

#### `ExternalAz`

``` purescript
newtype ExternalAz
  = ExternalAz String
```

##### Instances
``` purescript
Newtype ExternalAz _
Generic ExternalAz _
Show ExternalAz
Decode ExternalAz
Encode ExternalAz
```

#### `ExternalSubnetMapping`

``` purescript
newtype ExternalSubnetMapping
  = ExternalSubnetMapping (StrMap SubnetId)
```

##### Instances
``` purescript
Newtype ExternalSubnetMapping _
Generic ExternalSubnetMapping _
Show ExternalSubnetMapping
Decode ExternalSubnetMapping
Encode ExternalSubnetMapping
```

#### `Field`

``` purescript
newtype Field
  = Field String
```

##### Instances
``` purescript
Newtype Field _
Generic Field _
Show Field
Decode Field
Encode Field
```

#### `Filters`

``` purescript
newtype Filters
  = Filters (StrMap Strings)
```

##### Instances
``` purescript
Newtype Filters _
Generic Filters _
Show Filters
Decode Filters
Encode Filters
```

#### `Hsm`

``` purescript
newtype Hsm
  = Hsm { "AvailabilityZone" :: NullOrUndefined (ExternalAz), "ClusterId" :: NullOrUndefined (ClusterId), "SubnetId" :: NullOrUndefined (SubnetId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress), "HsmId" :: HsmId, "State" :: NullOrUndefined (HsmState), "StateMessage" :: NullOrUndefined (String) }
```

<p>Contains information about a hardware security module (HSM) in an AWS CloudHSM cluster.</p>

##### Instances
``` purescript
Newtype Hsm _
Generic Hsm _
Show Hsm
Decode Hsm
Encode Hsm
```

#### `newHsm`

``` purescript
newHsm :: HsmId -> Hsm
```

Constructs Hsm from required parameters

#### `newHsm'`

``` purescript
newHsm' :: HsmId -> ({ "AvailabilityZone" :: NullOrUndefined (ExternalAz), "ClusterId" :: NullOrUndefined (ClusterId), "SubnetId" :: NullOrUndefined (SubnetId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress), "HsmId" :: HsmId, "State" :: NullOrUndefined (HsmState), "StateMessage" :: NullOrUndefined (String) } -> { "AvailabilityZone" :: NullOrUndefined (ExternalAz), "ClusterId" :: NullOrUndefined (ClusterId), "SubnetId" :: NullOrUndefined (SubnetId), "EniId" :: NullOrUndefined (EniId), "EniIp" :: NullOrUndefined (IpAddress), "HsmId" :: HsmId, "State" :: NullOrUndefined (HsmState), "StateMessage" :: NullOrUndefined (String) }) -> Hsm
```

Constructs Hsm's fields from required parameters

#### `HsmId`

``` purescript
newtype HsmId
  = HsmId String
```

##### Instances
``` purescript
Newtype HsmId _
Generic HsmId _
Show HsmId
Decode HsmId
Encode HsmId
```

#### `HsmState`

``` purescript
newtype HsmState
  = HsmState String
```

##### Instances
``` purescript
Newtype HsmState _
Generic HsmState _
Show HsmState
Decode HsmState
Encode HsmState
```

#### `HsmType`

``` purescript
newtype HsmType
  = HsmType String
```

##### Instances
``` purescript
Newtype HsmType _
Generic HsmType _
Show HsmType
Decode HsmType
Encode HsmType
```

#### `Hsms`

``` purescript
newtype Hsms
  = Hsms (Array Hsm)
```

##### Instances
``` purescript
Newtype Hsms _
Generic Hsms _
Show Hsms
Decode Hsms
Encode Hsms
```

#### `InitializeClusterRequest`

``` purescript
newtype InitializeClusterRequest
  = InitializeClusterRequest { "ClusterId" :: ClusterId, "SignedCert" :: Cert, "TrustAnchor" :: Cert }
```

##### Instances
``` purescript
Newtype InitializeClusterRequest _
Generic InitializeClusterRequest _
Show InitializeClusterRequest
Decode InitializeClusterRequest
Encode InitializeClusterRequest
```

#### `newInitializeClusterRequest`

``` purescript
newInitializeClusterRequest :: ClusterId -> Cert -> Cert -> InitializeClusterRequest
```

Constructs InitializeClusterRequest from required parameters

#### `newInitializeClusterRequest'`

``` purescript
newInitializeClusterRequest' :: ClusterId -> Cert -> Cert -> ({ "ClusterId" :: ClusterId, "SignedCert" :: Cert, "TrustAnchor" :: Cert } -> { "ClusterId" :: ClusterId, "SignedCert" :: Cert, "TrustAnchor" :: Cert }) -> InitializeClusterRequest
```

Constructs InitializeClusterRequest's fields from required parameters

#### `InitializeClusterResponse`

``` purescript
newtype InitializeClusterResponse
  = InitializeClusterResponse { "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage) }
```

##### Instances
``` purescript
Newtype InitializeClusterResponse _
Generic InitializeClusterResponse _
Show InitializeClusterResponse
Decode InitializeClusterResponse
Encode InitializeClusterResponse
```

#### `newInitializeClusterResponse`

``` purescript
newInitializeClusterResponse :: InitializeClusterResponse
```

Constructs InitializeClusterResponse from required parameters

#### `newInitializeClusterResponse'`

``` purescript
newInitializeClusterResponse' :: ({ "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage) } -> { "State" :: NullOrUndefined (ClusterState), "StateMessage" :: NullOrUndefined (StateMessage) }) -> InitializeClusterResponse
```

Constructs InitializeClusterResponse's fields from required parameters

#### `IpAddress`

``` purescript
newtype IpAddress
  = IpAddress String
```

##### Instances
``` purescript
Newtype IpAddress _
Generic IpAddress _
Show IpAddress
Decode IpAddress
Encode IpAddress
```

#### `ListTagsRequest`

``` purescript
newtype ListTagsRequest
  = ListTagsRequest { "ResourceId" :: ClusterId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) }
```

##### Instances
``` purescript
Newtype ListTagsRequest _
Generic ListTagsRequest _
Show ListTagsRequest
Decode ListTagsRequest
Encode ListTagsRequest
```

#### `newListTagsRequest`

``` purescript
newListTagsRequest :: ClusterId -> ListTagsRequest
```

Constructs ListTagsRequest from required parameters

#### `newListTagsRequest'`

``` purescript
newListTagsRequest' :: ClusterId -> ({ "ResourceId" :: ClusterId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) } -> { "ResourceId" :: ClusterId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxSize) }) -> ListTagsRequest
```

Constructs ListTagsRequest's fields from required parameters

#### `ListTagsResponse`

``` purescript
newtype ListTagsResponse
  = ListTagsResponse { "TagList" :: TagList, "NextToken" :: NullOrUndefined (NextToken) }
```

##### Instances
``` purescript
Newtype ListTagsResponse _
Generic ListTagsResponse _
Show ListTagsResponse
Decode ListTagsResponse
Encode ListTagsResponse
```

#### `newListTagsResponse`

``` purescript
newListTagsResponse :: TagList -> ListTagsResponse
```

Constructs ListTagsResponse from required parameters

#### `newListTagsResponse'`

``` purescript
newListTagsResponse' :: TagList -> ({ "TagList" :: TagList, "NextToken" :: NullOrUndefined (NextToken) } -> { "TagList" :: TagList, "NextToken" :: NullOrUndefined (NextToken) }) -> ListTagsResponse
```

Constructs ListTagsResponse's fields from required parameters

#### `MaxSize`

``` purescript
newtype MaxSize
  = MaxSize Int
```

##### Instances
``` purescript
Newtype MaxSize _
Generic MaxSize _
Show MaxSize
Decode MaxSize
Encode MaxSize
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `PreCoPassword`

``` purescript
newtype PreCoPassword
  = PreCoPassword String
```

##### Instances
``` purescript
Newtype PreCoPassword _
Generic PreCoPassword _
Show PreCoPassword
Decode PreCoPassword
Encode PreCoPassword
```

#### `SecurityGroup`

``` purescript
newtype SecurityGroup
  = SecurityGroup String
```

##### Instances
``` purescript
Newtype SecurityGroup _
Generic SecurityGroup _
Show SecurityGroup
Decode SecurityGroup
Encode SecurityGroup
```

#### `StateMessage`

``` purescript
newtype StateMessage
  = StateMessage String
```

##### Instances
``` purescript
Newtype StateMessage _
Generic StateMessage _
Show StateMessage
Decode StateMessage
Encode StateMessage
```

#### `Strings`

``` purescript
newtype Strings
  = Strings (Array String)
```

##### Instances
``` purescript
Newtype Strings _
Generic Strings _
Show Strings
Decode Strings
Encode Strings
```

#### `SubnetId`

``` purescript
newtype SubnetId
  = SubnetId String
```

##### Instances
``` purescript
Newtype SubnetId _
Generic SubnetId _
Show SubnetId
Decode SubnetId
Encode SubnetId
```

#### `SubnetIds`

``` purescript
newtype SubnetIds
  = SubnetIds (Array SubnetId)
```

##### Instances
``` purescript
Newtype SubnetIds _
Generic SubnetIds _
Show SubnetIds
Decode SubnetIds
Encode SubnetIds
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: TagKey, "Value" :: TagValue }
```

<p>Contains a tag. A tag is a key-value pair.</p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: TagKey -> TagValue -> Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: TagKey -> TagValue -> ({ "Key" :: TagKey, "Value" :: TagValue } -> { "Key" :: TagKey, "Value" :: TagValue }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagKey`

``` purescript
newtype TagKey
  = TagKey String
```

##### Instances
``` purescript
Newtype TagKey _
Generic TagKey _
Show TagKey
Decode TagKey
Encode TagKey
```

#### `TagKeyList`

``` purescript
newtype TagKeyList
  = TagKeyList (Array TagKey)
```

##### Instances
``` purescript
Newtype TagKeyList _
Generic TagKeyList _
Show TagKeyList
Decode TagKeyList
Encode TagKeyList
```

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TagResourceRequest`

``` purescript
newtype TagResourceRequest
  = TagResourceRequest { "ResourceId" :: ClusterId, "TagList" :: TagList }
```

##### Instances
``` purescript
Newtype TagResourceRequest _
Generic TagResourceRequest _
Show TagResourceRequest
Decode TagResourceRequest
Encode TagResourceRequest
```

#### `newTagResourceRequest`

``` purescript
newTagResourceRequest :: ClusterId -> TagList -> TagResourceRequest
```

Constructs TagResourceRequest from required parameters

#### `newTagResourceRequest'`

``` purescript
newTagResourceRequest' :: ClusterId -> TagList -> ({ "ResourceId" :: ClusterId, "TagList" :: TagList } -> { "ResourceId" :: ClusterId, "TagList" :: TagList }) -> TagResourceRequest
```

Constructs TagResourceRequest's fields from required parameters

#### `TagResourceResponse`

``` purescript
newtype TagResourceResponse
  = TagResourceResponse NoArguments
```

##### Instances
``` purescript
Newtype TagResourceResponse _
Generic TagResourceResponse _
Show TagResourceResponse
Decode TagResourceResponse
Encode TagResourceResponse
```

#### `TagValue`

``` purescript
newtype TagValue
  = TagValue String
```

##### Instances
``` purescript
Newtype TagValue _
Generic TagValue _
Show TagValue
Decode TagValue
Encode TagValue
```

#### `UntagResourceRequest`

``` purescript
newtype UntagResourceRequest
  = UntagResourceRequest { "ResourceId" :: ClusterId, "TagKeyList" :: TagKeyList }
```

##### Instances
``` purescript
Newtype UntagResourceRequest _
Generic UntagResourceRequest _
Show UntagResourceRequest
Decode UntagResourceRequest
Encode UntagResourceRequest
```

#### `newUntagResourceRequest`

``` purescript
newUntagResourceRequest :: ClusterId -> TagKeyList -> UntagResourceRequest
```

Constructs UntagResourceRequest from required parameters

#### `newUntagResourceRequest'`

``` purescript
newUntagResourceRequest' :: ClusterId -> TagKeyList -> ({ "ResourceId" :: ClusterId, "TagKeyList" :: TagKeyList } -> { "ResourceId" :: ClusterId, "TagKeyList" :: TagKeyList }) -> UntagResourceRequest
```

Constructs UntagResourceRequest's fields from required parameters

#### `UntagResourceResponse`

``` purescript
newtype UntagResourceResponse
  = UntagResourceResponse NoArguments
```

##### Instances
``` purescript
Newtype UntagResourceResponse _
Generic UntagResourceResponse _
Show UntagResourceResponse
Decode UntagResourceResponse
Encode UntagResourceResponse
```

#### `VpcId`

``` purescript
newtype VpcId
  = VpcId String
```

##### Instances
``` purescript
Newtype VpcId _
Generic VpcId _
Show VpcId
Decode VpcId
Encode VpcId
```

#### `ErrorMessage'`

``` purescript
newtype ErrorMessage'
  = ErrorMessage' String
```

##### Instances
``` purescript
Newtype ErrorMessage' _
Generic ErrorMessage' _
Show ErrorMessage'
Decode ErrorMessage'
Encode ErrorMessage'
```


