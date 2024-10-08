"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema ReservationAssignment:
    """
    ReservationAssignment is the Schema for the ReservationAssignments API. The BigqueryReservation Assignment resource

    Attributes
    ----------
    apiVersion : str, default is "bigquery.gcp.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "ReservationAssignment", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpec, default is Undefined, required
        spec
    status : BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatus, default is Undefined, optional
        status
    """


    apiVersion: "bigquery.gcp.upbound.io/v1beta1" = "bigquery.gcp.upbound.io/v1beta1"

    kind: "ReservationAssignment" = "ReservationAssignment"

    metadata?: v1.ObjectMeta

    spec: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpec

    status?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatus


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpec:
    """
    ReservationAssignmentSpec defines the desired state of ReservationAssignment

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
    forProvider : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProvider, default is Undefined, required
        for provider
    initProvider : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """


    deletionPolicy?: "Orphan" | "Delete" = "Delete"

    forProvider: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProvider

    initProvider?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecInitProvider

    managementPolicies?: [str] = ["*"]

    providerConfigRef?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRef

    publishConnectionDetailsTo?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsTo

    writeConnectionSecretToRef?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecWriteConnectionSecretToRef


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProvider:
    """
    bigquery gcp upbound io v1beta1 reservation assignment spec for provider

    Attributes
    ----------
    assignee : str, default is Undefined, optional
        The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
    jobType : str, default is Undefined, optional
        Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY
    location : str, default is Undefined, optional
        The location for the resource
    project : str, default is Undefined, optional
        The project for the resource
    reservation : str, default is Undefined, optional
        The reservation for the resource
    reservationRef : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRef, default is Undefined, optional
        reservation ref
    reservationSelector : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelector, default is Undefined, optional
        reservation selector
    """


    assignee?: str

    jobType?: str

    location?: str

    project?: str

    reservation?: str

    reservationRef?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRef

    reservationSelector?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelector


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRef:
    """
    Reference to a Reservation in bigquery to populate reservation.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRefPolicy


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelector:
    """
    Selector for a Reservation in bigquery to populate reservation.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelectorPolicy, default is Undefined, optional
        policy
    """


    matchControllerRef?: bool

    matchLabels?: {str:str}

    policy?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelectorPolicy


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecForProviderReservationSelectorPolicy:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecInitProvider:
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
    assignee : str, default is Undefined, optional
        The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
    jobType : str, default is Undefined, optional
        Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY
    location : str, default is Undefined, optional
        The location for the resource
    project : str, default is Undefined, optional
        The project for the resource
    """


    assignee?: str

    jobType?: str

    location?: str

    project?: str


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRefPolicy


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecProviderConfigRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """


    configRef?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRef

    metadata?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToMetadata

    name: str


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """


    name: str

    policy?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRefPolicy


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToConfigRefPolicy:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecPublishConnectionDetailsToMetadata:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentSpecWriteConnectionSecretToRef:
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


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatus:
    """
    ReservationAssignmentStatus defines the observed state of ReservationAssignment.

    Attributes
    ----------
    atProvider : BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """


    atProvider?: BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusAtProvider

    conditions?: [BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusConditionsItems0]


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusAtProvider:
    """
    bigquery gcp upbound io v1beta1 reservation assignment status at provider

    Attributes
    ----------
    assignee : str, default is Undefined, optional
        The resource which will use the reservation. E.g. projects/myproject, folders/123, organizations/456.
    id : str, default is Undefined, optional
        an identifier for the resource with format projects/{{project}}/locations/{{location}}/reservations/{{reservation}}/assignments/{{name}}
    jobType : str, default is Undefined, optional
        Types of job, which could be specified when using the reservation. Possible values: JOB_TYPE_UNSPECIFIED, PIPELINE, QUERY
    location : str, default is Undefined, optional
        The location for the resource
    name : str, default is Undefined, optional
        Output only. The resource name of the assignment.
    project : str, default is Undefined, optional
        The project for the resource
    reservation : str, default is Undefined, optional
        The reservation for the resource
    state : str, default is Undefined, optional
        Assignment will remain in PENDING state if no active capacity commitment is present. It will become ACTIVE when some capacity commitment becomes active. Possible values: STATE_UNSPECIFIED, PENDING, ACTIVE
    """


    assignee?: str

    id?: str

    jobType?: str

    location?: str

    name?: str

    project?: str

    reservation?: str

    state?: str


schema BigqueryGcpUpboundIoV1beta1ReservationAssignmentStatusConditionsItems0:
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


