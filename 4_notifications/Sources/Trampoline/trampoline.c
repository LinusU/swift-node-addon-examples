#include <NAPI.h>

napi_value _init_notifications(napi_env, napi_value);

NAPI_MODULE(notifications, _init_notifications)
