### Generated by rprotoc. DO NOT EDIT!
### <proto file: /Users/mikolaifajer/SkadiStats/spectre/aspectSerializer/src/main/proto/internal/fs.proto>
# package internal;
# 
# option java_package = "skadistats.spectre.proto.internal";
# 
# message StringTable {
#     repeated string value    = 1;
# }

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

module Internal
  ::Protobuf::OPTIONS[:"java_package"] = "skadistats.spectre.proto.internal"
  class StringTable < ::Protobuf::Message
    defined_in __FILE__
    repeated :string, :value, 1
  end
end