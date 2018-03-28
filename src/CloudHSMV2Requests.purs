
module AWS.CloudHSMV2.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.CloudHSMV2 as CloudHSMV2
import AWS.CloudHSMV2.Types as CloudHSMV2Types


-- | <p>Creates a new AWS CloudHSM cluster.</p>
createCluster :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.CreateClusterRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.CreateClusterResponse
createCluster (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createCluster"


-- | <p>Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.</p>
createHsm :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.CreateHsmRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.CreateHsmResponse
createHsm (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createHsm"


-- | <p>Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use <a>DescribeClusters</a>. To delete an HSM, use <a>DeleteHsm</a>.</p>
deleteCluster :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.DeleteClusterRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.DeleteClusterResponse
deleteCluster (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteCluster"


-- | <p>Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use <a>DescribeClusters</a>.</p>
deleteHsm :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.DeleteHsmRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.DeleteHsmResponse
deleteHsm (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteHsm"


-- | <p>Gets information about backups of AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeBackups</code> request to get more backups. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more backups to get.</p>
describeBackups :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.DescribeBackupsRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.DescribeBackupsResponse
describeBackups (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeBackups"


-- | <p>Gets information about AWS CloudHSM clusters.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>DescribeClusters</code> request to get more clusters. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more clusters to get.</p>
describeClusters :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.DescribeClustersRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.DescribeClustersResponse
describeClusters (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeClusters"


-- | <p>Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use <a>DescribeClusters</a>.</p>
initializeCluster :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.InitializeClusterRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.InitializeClusterResponse
initializeCluster (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "initializeCluster"


-- | <p>Gets a list of tags for the specified AWS CloudHSM cluster.</p> <p>This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a <code>NextToken</code> value. Use this value in a subsequent <code>ListTags</code> request to get more tags. When you receive a response with no <code>NextToken</code> (or an empty or null value), that means there are no more tags to get.</p>
listTags :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.ListTagsRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.ListTagsResponse
listTags (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTags"


-- | <p>Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.</p>
tagResource :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.TagResourceRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.TagResourceResponse
tagResource (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "tagResource"


-- | <p>Removes the specified tag or tags from the specified AWS CloudHSM cluster.</p>
untagResource :: forall eff. CloudHSMV2.Service -> CloudHSMV2Types.UntagResourceRequest -> Aff (exception :: EXCEPTION | eff) CloudHSMV2Types.UntagResourceResponse
untagResource (CloudHSMV2.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "untagResource"
