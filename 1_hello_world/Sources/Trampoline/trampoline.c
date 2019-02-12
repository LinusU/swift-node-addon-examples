#include <NAPI.h>

napi_value _init_hello_world(napi_env, napi_value);

NAPI_MODULE(hello_world, _init_hello_world)
