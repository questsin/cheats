
#CloudBlockBlob
Public Function ReleaseLeaseAsync ( _
    accessCondition As AccessCondition, _
    cancellationToken As CancellationToken _
) As Task

public string AcquireLease (
    Nullable<TimeSpan> leaseTime,
    string proposedLeaseId,
    [OptionalAttribute] AccessCondition accessCondition,
    [OptionalAttribute] BlobRequestOptions options,
    [OptionalAttribute] OperationContext operationContext
)