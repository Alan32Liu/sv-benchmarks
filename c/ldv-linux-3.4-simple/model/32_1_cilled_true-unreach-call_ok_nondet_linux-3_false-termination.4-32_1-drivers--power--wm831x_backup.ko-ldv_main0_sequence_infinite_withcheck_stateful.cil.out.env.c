// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Function: dev_err
// with type: int dev_err(const struct device *dev, const char *fmt, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_get_drvdata
// with type: void *dev_get_drvdata(const struct device *dev)
// with return type: (void)*
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: dev_set_drvdata
// with type: int dev_set_drvdata(struct device *dev, void *data)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: dev_warn
// with type: int dev_warn(const struct device *dev, const char *fmt, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Skip function: kfree

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int res)
// with return type: void
void ldv_check_return_value(int arg0) {
  // Void type
  return;
}

// Function: ldv_initialize
// with type: void ldv_initialize()
// with return type: void
void ldv_initialize() {
  // Void type
  return;
}

// Skip function: malloc

// Function: platform_driver_register
// with type: int platform_driver_register(struct platform_driver *)
// with return type: int
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: platform_driver_unregister
// with type: void platform_driver_unregister(struct platform_driver *)
// with return type: void
void platform_driver_unregister(struct platform_driver *arg0) {
  // Void type
  return;
}

// Function: power_supply_register
// with type: int power_supply_register(struct device *parent, struct power_supply *psy)
// with return type: int
int __VERIFIER_nondet_int(void);
int power_supply_register(struct device *arg0, struct power_supply *arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: power_supply_unregister
// with type: void power_supply_unregister(struct power_supply *psy)
// with return type: void
void power_supply_unregister(struct power_supply *arg0) {
  // Void type
  return;
}

// Skip function: snprintf

// Function: wm831x_auxadc_read_uv
// with type: int wm831x_auxadc_read_uv(struct wm831x *wm831x, enum wm831x_auxadc input)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_auxadc_read_uv(struct wm831x *arg0, enum wm831x_auxadc arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_reg_lock
// with type: void wm831x_reg_lock(struct wm831x *wm831x)
// with return type: void
void wm831x_reg_lock(struct wm831x *arg0) {
  // Void type
  return;
}

// Function: wm831x_reg_read
// with type: int wm831x_reg_read(struct wm831x *wm831x, unsigned short reg)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_reg_read(struct wm831x *arg0, unsigned short arg1) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_reg_unlock
// with type: int wm831x_reg_unlock(struct wm831x *wm831x)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_reg_unlock(struct wm831x *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: wm831x_set_bits
// with type: int wm831x_set_bits(struct wm831x *wm831x, unsigned short reg, unsigned short mask, unsigned short val)
// with return type: int
int __VERIFIER_nondet_int(void);
int wm831x_set_bits(struct wm831x *arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
  // Simple type
  return __VERIFIER_nondet_int();
}

