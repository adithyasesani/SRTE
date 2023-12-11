# SRTE Protobuf Definitions

SRTE api consists of a service definition (stored in `service`),
and a data model for the policies. The data model definitions are auto-generated from the
OpenConfig srte-policy YANG schema.

The service is stored in a package named according
to the major version of the protocol - specifically
`SRTE.v1` for the first major version. Within a major
revision no backwards incompatible changes are made to
the service definition or models according to standard
protobuf backwards compatibility rules.