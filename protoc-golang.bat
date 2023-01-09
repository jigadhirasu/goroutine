::golang
protoc -I=./ ^
 --go_out=C:\_workspace ^
 --go-grpc_out=C:\_workspace ^
 protofile/messages/*.proto

protoc -I=./ ^
 --go_out=C:\_workspace ^
 --go-grpc_out=C:\_workspace ^
 protofile/services/*.proto