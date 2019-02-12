#include <NAPI.h>

napi_value _init_callbacks(napi_env, napi_value);

NAPI_MODULE(callbacks, _init_callbacks)
