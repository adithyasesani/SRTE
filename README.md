# gRPC SRTE Interface

SRTE defines an interface via which policies can be added/modified/deleted from an external
client to a network element. The SRTE interface is defined in the
`proto/service/srte.proto` - which defines a simple API for creating and deleting policies.
The policies are described using a protobuf translated
version of the OpenConfig srte-policy model.
