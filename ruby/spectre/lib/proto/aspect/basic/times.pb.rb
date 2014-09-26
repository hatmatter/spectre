### Generated by rprotoc. DO NOT EDIT!
### <proto file: /Users/mikolaifajer/SkadiStats/spectre/aspectSerializer/src/main/proto/aspect/basic/time.proto>
# package times;
# 
# option java_package = "skadistats.spectre.proto.basic";
# 
# message GameTime {
#     optional double game_time = 1;
#     optional bool   paused    = 2;
# }
# 
# message StateChangeTime {
#     optional double loading_time    = 1;
#     optional double draft_time      = 2;
#     optional double strategy_time   = 3;
#     optional double pregame_time    = 4;
#     optional double game_time       = 5;
#     optional double postgame_time   = 6;
#     optional double disconnect_time = 7;
# }

require 'protobuf/message/message'
require 'protobuf/message/enum'
require 'protobuf/message/service'
require 'protobuf/message/extend'

module Times
  ::Protobuf::OPTIONS[:"java_package"] = "skadistats.spectre.proto.basic"
  class GameTime < ::Protobuf::Message
    defined_in __FILE__
    optional :double, :game_time, 1
    optional :bool, :paused, 2
  end
  class StateChangeTime < ::Protobuf::Message
    defined_in __FILE__
    optional :double, :loading_time, 1
    optional :double, :draft_time, 2
    optional :double, :strategy_time, 3
    optional :double, :pregame_time, 4
    optional :double, :game_time, 5
    optional :double, :postgame_time, 6
    optional :double, :disconnect_time, 7
  end
end