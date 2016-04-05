#include "mock_last_status.h"

VALUE rb_mMockLastStatus;

VALUE
mock_last_status_set(VALUE obj, VALUE last_status)
{
  rb_last_status_set(NUM2INT(last_status) << 8, 0);

  return Qnil;
}

void
Init_mock_last_status(void)
{
  rb_mMockLastStatus = rb_define_module("MockLastStatus");
  rb_define_singleton_method(rb_mMockLastStatus, "set", mock_last_status_set, 1);
}
