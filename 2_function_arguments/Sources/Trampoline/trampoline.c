#include <NAPI.h>

napi_value _init_function_arguments(napi_env, napi_value);

NAPI_MODULE(function_arguments, _init_function_arguments)
