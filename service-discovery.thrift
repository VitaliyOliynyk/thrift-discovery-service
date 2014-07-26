namespace csharp thrift.discoveryservice
namespace java thrift.discoveryservice

struct ServiceInfo {
   1: string host,
   2: i16 port
}

exception ServiceNotFoundException {
	1: string message
}

service DiscoveryService {
	ServiceInfo getInfo(1:string serviceName) throws (1:ServiceNotFoundException serviceNotFound)
}