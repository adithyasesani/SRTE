#!/bin/bash

# Get OC models and ygot
git clone https://github.com/openconfig/public.git
git clone https://github.com/openconfig/ygot.git

#build proto_generator
cd ygot/proto_generator
go build .
cd ../..

# generate the proto for the srte yang schema
./ygot/proto_generator/proto_generator -exclude_modules=ietf-interfaces,openconfig-interfaces -path=./public/release/models:./public/release/models/types:./public/release/models/interfaces:./public/release/models/optical-transport:./public/release/models/platform:./public/release/models/aft:./public/release/models/network-instance:./public/release/models/acl:./public/release/models/isis:./public/release/models/mpls:./public/release/models/segment-routing:./public/release/models/policy:./public/third_party/ietf -output_dir=v1/proto -package_name=srte -enum_package_name=enums -add_schemapaths=false v1/yang/segment-routing/srte_policy.yang
