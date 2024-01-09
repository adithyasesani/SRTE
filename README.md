# gRPC SRTE Interface

This repo defines an interface via which policies can be added/modified/deleted from an external
client to a network element. The SRTE api is defined in the
`proto/service/srte.proto`.
The policies are described using a protobuf translated
version of the OpenConfig srte-policy yang model.
