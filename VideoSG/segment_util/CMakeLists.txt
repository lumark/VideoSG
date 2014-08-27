cmake_minimum_required(VERSION 3.0)

find_package( Protobuf REQUIRED )

PROTOBUF_GENERATE_CPP( PROTO_SRCS PROTO_HDRS
  segmentation.proto)

# compile our messages into a little library
add_library( ProtoMessages ${PROTO_SRCS})

include_directories( ${PROTOBUF_INCLUDE_DIRS} )
include_directories( ${CMAKE_SOURCE_DIR} )
target_link_libraries(ProtoMessages ${PROTOBUF_LIBRARIES})
install(TARGETS ProtoMessages DESTINATION ${CMAKE_CURRENT_BINARY_DIR}/segment_util EXPORT ProtoMessagesTargets)
install(EXPORT ProtoMessagesTargets DESTINATION ${CMAKE_CURRENT_SOURCE_DIR})
