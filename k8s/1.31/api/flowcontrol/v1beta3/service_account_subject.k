"""
This is the service_account_subject module in k8s.api.flowcontrol.v1beta3 package.
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""


schema ServiceAccountSubject:
    r"""
    ServiceAccountSubject holds detailed information for service-account-kind subject.

    Attributes
    ----------
    name : str, default is Undefined, required
        `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name. Required.
    namespace : str, default is Undefined, required
        `namespace` is the namespace of matching ServiceAccount objects. Required.
    """


    name: str

    namespace: str


