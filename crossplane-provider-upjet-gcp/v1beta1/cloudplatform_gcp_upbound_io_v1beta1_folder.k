"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema Folder:
    """
    Folder is the Schema for the Folders API. Allows management of a Google Cloud Platform folder.

    Attributes
    ----------
    apiVersion : str, default is "cloudplatform.gcp.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "Folder", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : CloudplatformGcpUpboundIoV1beta1FolderSpec, default is Undefined, required
        spec
    status : CloudplatformGcpUpboundIoV1beta1FolderStatus, default is Undefined, optional
        status
    """


    apiVersion: "cloudplatform.gcp.upbound.io/v1beta1" = "cloudplatform.gcp.upbound.io/v1beta1"

    kind: "Folder" = "Folder"

    metadata?: v1.ObjectMeta

    spec: CloudplatformGcpUpboundIoV1beta1FolderSpec

    status?: CloudplatformGcpUpboundIoV1beta1FolderStatus


schema CloudplatformGcpUpboundIoV1beta1FolderSpec:
    """
    FolderSpec defines the desired state of Folder

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : CloudplatformGcpUpboundIoV1beta1FolderSpecForProvider, default is Undefined, required
        for provider
    initProvider : CloudplatformGcpUpboundIoV1beta1FolderSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : CloudplatformGcpUpboundIoV1beta1FolderSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: CloudplatformGcpUpboundIoV1beta1FolderSpecForProvider

    initProvider?: CloudplatformGcpUpboundIoV1beta1FolderSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRef

    publishConnectionDetailsTo?: CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: CloudplatformGcpUpboundIoV1beta1FolderSpecWriteConnectionSecretToRef


schema CloudplatformGcpUpboundIoV1beta1FolderSpecForProvider:
    """
    cloudplatform gcp upbound io v1beta1 folder spec for provider

    Attributes
    ----------
    displayName : str, default is Undefined, optional
        The folder’s display name.
        A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
    parent : str, default is Undefined, optional
        The resource name of the parent Folder or Organization.
        Must be of the form folders/{folder_id} or organizations/{org_id}.
    parentRef : CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRef, default is Undefined, optional
        parent ref
    parentSelector : CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelector, default is Undefined, optional
        parent selector
    """


    displayName?: str

    parent?: str

    parentRef?: CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRef

    parentSelector?: CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelector


schema CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRef:
    """
    Reference to a Folder in cloudplatform to populate parent.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRefPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelector:
    """
    Selector for a Folder in cloudplatform to populate parent.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelectorPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecForProviderParentSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecInitProvider:
    """
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    displayName : str, default is Undefined, optional
        The folder’s display name.
        A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
    parent : str, default is Undefined, optional
        The resource name of the parent Folder or Organization.
        Must be of the form folders/{folder_id} or organizations/{org_id}.
    parentRef : CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRef, default is Undefined, optional
        parent ref
    parentSelector : CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelector, default is Undefined, optional
        parent selector
    """


    displayName?: str

    parent?: str

    parentRef?: CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRef

    parentSelector?: CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelector


schema CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRef:
    """
    Reference to a Folder in cloudplatform to populate parent.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRefPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelector:
    """
    Selector for a Folder in cloudplatform to populate parent.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelectorPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecInitProviderParentSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRefPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecProviderConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRef

    metadata?: CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToMetadata

    name: str


schema CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRefPolicy


schema CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """


    resolution?: "Required" | "Optional" = "Required"

    resolve?: "Always" | "IfNotPresent"


schema CloudplatformGcpUpboundIoV1beta1FolderSpecPublishConnectionDetailsToMetadata:
    """
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """


    annotations?: {str:str}

    labels?: {str:str}

    $type?: str


schema CloudplatformGcpUpboundIoV1beta1FolderSpecWriteConnectionSecretToRef:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """


    name: str

    namespace: str


schema CloudplatformGcpUpboundIoV1beta1FolderStatus:
    """
    FolderStatus defines the observed state of Folder.

    Attributes
    ----------
    atProvider : CloudplatformGcpUpboundIoV1beta1FolderStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [CloudplatformGcpUpboundIoV1beta1FolderStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: CloudplatformGcpUpboundIoV1beta1FolderStatusAtProvider

    conditions?: [CloudplatformGcpUpboundIoV1beta1FolderStatusConditionsItems0]


schema CloudplatformGcpUpboundIoV1beta1FolderStatusAtProvider:
    """
    cloudplatform gcp upbound io v1beta1 folder status at provider

    Attributes
    ----------
    createTime : str, default is Undefined, optional
        Timestamp when the Folder was created. Assigned by the server.
        A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
    displayName : str, default is Undefined, optional
        The folder’s display name.
        A folder’s display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters.
    folderId : str, default is Undefined, optional
        The folder id from the name "folders/{folder_id}"
    id : str, default is Undefined, optional
        id
    lifecycleState : str, default is Undefined, optional
        The lifecycle state of the folder such as ACTIVE or DELETE_REQUESTED.
    name : str, default is Undefined, optional
        The resource name of the Folder. Its format is folders/{folder_id}.
    parent : str, default is Undefined, optional
        The resource name of the parent Folder or Organization.
        Must be of the form folders/{folder_id} or organizations/{org_id}.
    """


    createTime?: str

    displayName?: str

    folderId?: str

    id?: str

    lifecycleState?: str

    name?: str

    parent?: str


schema CloudplatformGcpUpboundIoV1beta1FolderStatusConditionsItems0:
    """
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """


    lastTransitionTime: str

    message?: str

    reason: str

    status: str

    $type: str


