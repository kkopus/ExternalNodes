@echo off

python -m grpc_tools.protoc -Isrc/protos --python_out=src/mh_en_exec/connection --grpc_python_out=src/mh_en_exec/connection src/protos/connection.proto
