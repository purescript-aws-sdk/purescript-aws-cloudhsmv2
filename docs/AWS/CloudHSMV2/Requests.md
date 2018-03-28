## Module AWS.CloudHSMV2.Requests

#### `createCluster`

``` purescript
createCluster :: forall eff. Service -> CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CreateClusterResponse
```

<p>Creates a new AWS CloudHSM cluster.</p>

#### `createHsm`

``` purescript
createHsm :: forall eff. Service -> CreateHsmRequest -> Aff (exception :: EXCEPTION | eff) CreateHsmResponse
```

<p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.</p>

#### `deleteCluster`

``` purescript
deleteCluster :: forall eff. Service -> DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) DeleteClusterResponse
```

<p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>

#### `deleteHsm`

``` purescript
deleteHsm :: forall eff. Service -> DeleteHsmRequest -> Aff (exception :: EXCEPTION | eff) DeleteHsmResponse
```

<p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>

#### `describeBackups`

``` purescript
describeBackups :: forall eff. Service -> DescribeBackupsRequest -> Aff (exception :: EXCEPTION | eff) DescribeBackupsResponse
```

<p>Gets information about backups of AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more backups to get.</p>

#### `describeClusters`

``` purescript
describeClusters :: forall eff. Service -> DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) DescribeClustersResponse
```

<p>Gets information about AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more clusters to get.</p>

#### `initializeCluster`

``` purescript
initializeCluster :: forall eff. Service -> InitializeClusterRequest -> Aff (exception :: EXCEPTION | eff) InitializeClusterResponse
```

<p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use <a>DescribeClusters</a>.</p>

#### `listTags`

``` purescript
listTags :: forall eff. Service -> ListTagsRequest -> Aff (exception :: EXCEPTION | eff) ListTagsResponse
```

<p>Gets a list of tags for the specified AWS CloudHSM cluster.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more tags to get.</p>

#### `tagResource`

``` purescript
tagResource :: forall eff. Service -> TagResourceRequest -> Aff (exception :: EXCEPTION | eff) TagResourceResponse
```

<p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>

#### `untagResource`

``` purescript
untagResource :: forall eff. Service -> UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) UntagResourceResponse
```

<p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>


