// Skip function: __VERIFIER_error

// Skip function: __VERIFIER_nondet_int

// Skip function: __VERIFIER_nondet_pointer

// Function: dev_err
// with type: int dev_err(const struct device *, const char *, ...)
// with return type: int
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: i2c_smbus_read_byte_data
// with type: s32 i2c_smbus_read_byte_data(const struct i2c_client *, u8 )
// with return type: s32 
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  // Typedef type
  // Real type: int
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: i2c_smbus_read_i2c_block_data
// with type: s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *, u8 , u8 , u8 *)
// with return type: s32 
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_i2c_block_data(const struct i2c_client *arg0, u8 arg1, u8 arg2, u8 *arg3) {
  // Typedef type
  // Real type: int
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: i2c_smbus_write_byte_data
// with type: s32 i2c_smbus_write_byte_data(const struct i2c_client *, u8 , u8 )
// with return type: s32 
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_byte_data(const struct i2c_client *arg0, u8 arg1, u8 arg2) {
  // Typedef type
  // Real type: int
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: input_allocate_polled_device
// with type: struct input_polled_dev *input_allocate_polled_device()
// with return type: (struct input_polled_dev)*
void *external_alloc(void);
struct input_polled_dev *input_allocate_polled_device() {
  // Pointer type
  return (struct input_polled_dev *)external_alloc();
}

// Function: input_event
// with type: void input_event(struct input_dev *, unsigned int, unsigned int, int)
// with return type: void
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  // Void type
  return;
}

// Function: input_free_polled_device
// with type: void input_free_polled_device(struct input_polled_dev *)
// with return type: void
void input_free_polled_device(struct input_polled_dev *arg0) {
  // Void type
  return;
}

// Function: input_register_polled_device
// with type: int input_register_polled_device(struct input_polled_dev *)
// with return type: int
int __VERIFIER_nondet_int(void);
int input_register_polled_device(struct input_polled_dev *arg0) {
  // Simple type
  return __VERIFIER_nondet_int();
}

// Function: input_set_abs_params
// with type: void input_set_abs_params(struct input_dev *, unsigned int, int, int, int, int)
// with return type: void
void input_set_abs_params(struct input_dev *arg0, unsigned int arg1, int arg2, int arg3, int arg4, int arg5) {
  // Void type
  return;
}

// Skip function: kfree

// Function: kmem_cache_alloc
// with type: void *kmem_cache_alloc(struct kmem_cache *, gfp_t )
// with return type: (void)*
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  // Pointer type
  return (void *)external_alloc();
}

// Function: ldv_check_final_state
// with type: void ldv_check_final_state()
// with return type: void
void ldv_check_final_state() {
  // Void type
  return;
}

// Function: ldv_check_return_value
// with type: void ldv_check_return_value(int)
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

// Function: ldv_some_page
// with type: struct page *ldv_some_page()
// with return type: (struct page)*
void *external_alloc(void);
struct page *ldv_some_page() {
  // Pointer type
  return (struct page *)external_alloc();
}

// Function: msleep
// with type: void msleep(unsigned int)
// with return type: void
void msleep(unsigned int arg0) {
  // Void type
  return;
}

