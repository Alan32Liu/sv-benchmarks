extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef unsigned int gfp_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct module;
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct device;
struct completion;
struct completion;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct task_struct;
struct file;
struct file;
struct seq_file;
struct seq_file;
struct page;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct seq_operations;
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct task_struct;
struct page;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct page;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct device;
struct device;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16] ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct device;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos_request;
struct pm_qos_constraints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct vm_area_struct;
struct vm_area_struct;
struct page;
struct vm_area_struct;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct kobject;
struct module;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct file;
struct vm_area_struct;
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct sock;
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct completion;
struct file;
struct task_struct;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct file;
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct module;
struct module;
struct static_key {
   atomic_t enabled ;
};
struct module;
struct tracepoint;
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module;
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t count ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
typedef unsigned long kernel_ulong_t;
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct platform_device_id {
   char name[20] ;
   kernel_ulong_t driver_data __attribute__((__aligned__(sizeof(kernel_ulong_t )))) ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct device;
struct seq_file;
struct module;
struct device_node;
struct gpio_chip {
   char const *label ;
   struct device *dev ;
   struct module *owner ;
   int (*request)(struct gpio_chip *chip , unsigned int offset ) ;
   void (*free)(struct gpio_chip *chip , unsigned int offset ) ;
   int (*direction_input)(struct gpio_chip *chip , unsigned int offset ) ;
   int (*get)(struct gpio_chip *chip , unsigned int offset ) ;
   int (*direction_output)(struct gpio_chip *chip , unsigned int offset , int value ) ;
   int (*set_debounce)(struct gpio_chip *chip , unsigned int offset , unsigned int debounce ) ;
   void (*set)(struct gpio_chip *chip , unsigned int offset , int value ) ;
   int (*to_irq)(struct gpio_chip *chip , unsigned int offset ) ;
   void (*dbg_show)(struct seq_file *s , struct gpio_chip *chip ) ;
   int base ;
   u16 ngpio ;
   char const * const *names ;
   unsigned int can_sleep : 1 ;
   unsigned int exported : 1 ;
};
struct klist_node;
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device;
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct module;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
                    size_t count ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct mfd_cell;
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t state ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct mfd_cell {
   char const *name ;
   int id ;
   atomic_t *usage_count ;
   int (*enable)(struct platform_device *dev ) ;
   int (*disable)(struct platform_device *dev ) ;
   int (*suspend)(struct platform_device *dev ) ;
   int (*resume)(struct platform_device *dev ) ;
   void *platform_data ;
   size_t pdata_size ;
   int num_resources ;
   struct resource const *resources ;
   bool ignore_resource_conflicts ;
   bool pm_runtime_no_callbacks ;
};
struct seq_operations;
struct file;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file *m , loff_t *pos ) ;
   void (*stop)(struct seq_file *m , void *v ) ;
   void *(*next)(struct seq_file *m , void *v , loff_t *pos ) ;
   int (*show)(struct seq_file *m , void *v ) ;
};
struct seq_file;
struct module;
struct proc_dir_entry;
struct module;
struct proc_dir_entry;
struct task_struct;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct task_struct;
struct device;
struct seq_file;
struct module;
struct device;
struct regmap;
struct regmap;
struct wm831x;
struct wm831x;
enum wm831x_auxadc;
enum wm831x_auxadc;
struct wm831x {
   struct mutex io_lock ;
   struct device *dev ;
   struct regmap *regmap ;
   int irq ;
   struct mutex irq_lock ;
   int irq_base ;
   int irq_masks_cur[5] ;
   int irq_masks_cache[5] ;
   bool soft_shutdown ;
   unsigned int has_gpio_ena : 1 ;
   unsigned int has_cs_sts : 1 ;
   unsigned int charger_irq_wake : 1 ;
   int num_gpio ;
   int gpio_update[16] ;
   bool gpio_level[16] ;
   struct mutex auxadc_lock ;
   struct list_head auxadc_pending ;
   u16 auxadc_active ;
   int (*auxadc_read)(struct wm831x *wm831x , enum wm831x_auxadc input ) ;
   struct mutex key_lock ;
   unsigned int locked : 1 ;
};
struct wm831x;
struct regulator_init_data;
struct regulator_init_data;
struct wm831x_backlight_pdata {
   int isink ;
   int max_uA ;
};
struct wm831x_backup_pdata {
   int charger_enable ;
   int no_constant_voltage ;
   int vlim ;
   int ilim ;
};
struct wm831x_battery_pdata {
   int enable ;
   int fast_enable ;
   int off_mask ;
   int trickle_ilim ;
   int vsel ;
   int eoc_iterm ;
   int fast_ilim ;
   int timeout ;
};
enum wm831x_status_src {
    WM831X_STATUS_PRESERVE = 0,
    WM831X_STATUS_OTP = 1,
    WM831X_STATUS_POWER = 2,
    WM831X_STATUS_CHARGER = 3,
    WM831X_STATUS_MANUAL = 4
} ;
struct wm831x_status_pdata {
   enum wm831x_status_src default_src ;
   char const *name ;
   char const *default_trigger ;
};
struct wm831x_touch_pdata {
   int fivewire ;
   int isel ;
   int rpu ;
   int pressure ;
   unsigned int data_irq ;
   int data_irqf ;
   unsigned int pd_irq ;
   int pd_irqf ;
};
enum wm831x_watchdog_action {
    WM831X_WDOG_NONE = 0,
    WM831X_WDOG_INTERRUPT = 1,
    WM831X_WDOG_RESET = 2,
    WM831X_WDOG_WAKE = 3
} ;
struct wm831x_watchdog_pdata {
   enum wm831x_watchdog_action primary ;
   enum wm831x_watchdog_action secondary ;
   int update_gpio ;
   unsigned int software : 1 ;
};
struct wm831x_pdata {
   int wm831x_num ;
   int (*pre_init)(struct wm831x *wm831x ) ;
   int (*post_init)(struct wm831x *wm831x ) ;
   bool irq_cmos ;
   bool disable_touch ;
   bool soft_shutdown ;
   int irq_base ;
   int gpio_base ;
   int gpio_defaults[16] ;
   struct wm831x_backlight_pdata *backlight ;
   struct wm831x_backup_pdata *backup ;
   struct wm831x_battery_pdata *battery ;
   struct wm831x_touch_pdata *touch ;
   struct wm831x_watchdog_pdata *watchdog ;
   struct wm831x_status_pdata *status[2] ;
   struct regulator_init_data *dcdc[4] ;
   struct regulator_init_data *epe[2] ;
   struct regulator_init_data *ldo[11] ;
   struct regulator_init_data *isink[2] ;
};
struct wm831x_gpio {
   struct wm831x *wm831x ;
   struct gpio_chip gpio_chip ;
};
long ldv__builtin_expect(long val , long res ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern char const *gpiochip_is_requested(struct gpio_chip *chip , unsigned int offset ) ;
extern int gpiochip_add(struct gpio_chip *chip ) ;
extern int __attribute__((__warn_unused_result__)) gpiochip_remove(struct gpio_chip *chip ) ;
extern void *dev_get_drvdata(struct device const *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern int ( dev_err)(struct device const *dev , char const *fmt
                                              , ...) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{ void *tmp ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device const *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device const *)__cil_tmp4;
  tmp = dev_get_drvdata(__cil_tmp5);
  }
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 16;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int ( seq_printf)(struct seq_file * , char const *
                                                 , ...) ;
extern int wm831x_reg_read(struct wm831x *wm831x , unsigned short reg ) ;
extern int wm831x_set_bits(struct wm831x *wm831x , unsigned short reg , unsigned short mask ,
                           unsigned short val ) ;
__inline static struct wm831x_gpio *to_wm831x_gpio(struct gpio_chip *chip ) __attribute__((__no_instrument_function__)) ;
__inline static struct wm831x_gpio *to_wm831x_gpio(struct gpio_chip *chip )
{ struct gpio_chip const *__mptr ;
  struct wm831x_gpio *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct gpio_chip *__cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  char *__cil_tmp8 ;
  char *__cil_tmp9 ;
  {
  __mptr = (struct gpio_chip const *)chip;
  {
  __cil_tmp3 = (struct wm831x_gpio *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = __cil_tmp4 + 8;
  __cil_tmp6 = (struct gpio_chip *)__cil_tmp5;
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = (char *)__mptr;
  __cil_tmp9 = __cil_tmp8 - __cil_tmp7;
  return ((struct wm831x_gpio *)__cil_tmp9);
  }
}
}
static int wm831x_gpio_direction_in(struct gpio_chip *chip , unsigned int offset )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int val ;
  int tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned short __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  val = 32768;
  }
  {
  __cil_tmp8 = (unsigned long )wm831x;
  __cil_tmp9 = __cil_tmp8 + 213;
  if (*((unsigned int *)__cil_tmp9)) {
    val = val | 128;
  } else {
  }
  }
  {
  __cil_tmp10 = 16440U + offset;
  __cil_tmp11 = (unsigned short )__cil_tmp10;
  __cil_tmp12 = (unsigned short )val;
  tmp___0 = wm831x_set_bits(wm831x, __cil_tmp11, (unsigned short)32911, __cil_tmp12);
  }
  return (tmp___0);
}
}
static int wm831x_gpio_get(struct gpio_chip *chip , unsigned int offset )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int ret ;
  int __cil_tmp7 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  ret = wm831x_reg_read(wm831x, (unsigned short)16396);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  __cil_tmp7 = 1 << offset;
  if (ret & __cil_tmp7) {
    return (1);
  } else {
    return (0);
  }
  }
}
}
static void wm831x_gpio_set(struct gpio_chip *chip , unsigned int offset , int value )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int __cil_tmp7 ;
  unsigned short __cil_tmp8 ;
  int __cil_tmp9 ;
  unsigned short __cil_tmp10 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  __cil_tmp7 = 1 << offset;
  __cil_tmp8 = (unsigned short )__cil_tmp7;
  __cil_tmp9 = value << offset;
  __cil_tmp10 = (unsigned short )__cil_tmp9;
  wm831x_set_bits(wm831x, (unsigned short)16396, __cil_tmp8, __cil_tmp10);
  }
  return;
}
}
static int wm831x_gpio_direction_out(struct gpio_chip *chip , unsigned int offset ,
                                     int value )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int val ;
  int ret ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  val = 0;
  }
  {
  __cil_tmp9 = (unsigned long )wm831x;
  __cil_tmp10 = __cil_tmp9 + 213;
  if (*((unsigned int *)__cil_tmp10)) {
    val = val | 128;
  } else {
  }
  }
  {
  __cil_tmp11 = 16440U + offset;
  __cil_tmp12 = (unsigned short )__cil_tmp11;
  __cil_tmp13 = (unsigned short )val;
  ret = wm831x_set_bits(wm831x, __cil_tmp12, (unsigned short)32911, __cil_tmp13);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  {
  wm831x_gpio_set(chip, offset, value);
  }
  return (0);
}
}
static int wm831x_gpio_to_irq(struct gpio_chip *chip , unsigned int offset )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  }
  {
  __cil_tmp6 = (unsigned long )wm831x;
  __cil_tmp7 = __cil_tmp6 + 168;
  __cil_tmp8 = *((int *)__cil_tmp7);
  if (! __cil_tmp8) {
    return (-22);
  } else {
  }
  }
  {
  __cil_tmp9 = (unsigned long )wm831x;
  __cil_tmp10 = __cil_tmp9 + 168;
  __cil_tmp11 = *((int *)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 + 1;
  __cil_tmp13 = (unsigned int )__cil_tmp12;
  __cil_tmp14 = __cil_tmp13 + offset;
  return ((int )__cil_tmp14);
  }
}
}
static int wm831x_gpio_set_debounce(struct gpio_chip *chip , unsigned int offset ,
                                    unsigned int debounce )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int reg ;
  int ret ;
  int fn ;
  int tmp___0 ;
  unsigned int __cil_tmp11 ;
  unsigned short __cil_tmp12 ;
  unsigned short __cil_tmp13 ;
  unsigned short __cil_tmp14 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  __cil_tmp11 = 16440U + offset;
  reg = (int )__cil_tmp11;
  __cil_tmp12 = (unsigned short )reg;
  ret = wm831x_reg_read(wm831x, __cil_tmp12);
  }
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 15) == 0) {
    goto case_0;
  } else
  if ((ret & 15) == 1) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      case_1:
      goto switch_break;
      switch_default:
      return (-16);
    } else {
      switch_break: ;
    }
    }
  }
  if (debounce >= 32U) {
    if (debounce <= 64U) {
      fn = 0;
    } else {
      goto _L;
    }
  } else
  _L:
  if (debounce >= 4000U) {
    if (debounce <= 8000U) {
      fn = 1;
    } else {
      return (-22);
    }
  } else {
    return (-22);
  }
  {
  __cil_tmp13 = (unsigned short )reg;
  __cil_tmp14 = (unsigned short )fn;
  tmp___0 = wm831x_set_bits(wm831x, __cil_tmp13, (unsigned short)15, __cil_tmp14);
  }
  return (tmp___0);
}
}
static void wm831x_gpio_dbg_show(struct seq_file *s , struct gpio_chip *chip )
{ struct wm831x_gpio *wm831x_gpio ;
  struct wm831x_gpio *tmp ;
  struct wm831x *wm831x ;
  int i ;
  int tristated ;
  int gpio ;
  int reg ;
  char const *label ;
  char const *pull ;
  char const *powerdomain ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___4 ;
  int tmp___5 ;
  char const *tmp___6 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u16 __cil_tmp22 ;
  int __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned short __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  struct device *__cil_tmp32 ;
  struct device const *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  {
  {
  tmp = to_wm831x_gpio(chip);
  wm831x_gpio = tmp;
  wm831x = *((struct wm831x **)wm831x_gpio);
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp20 = (unsigned long )chip;
    __cil_tmp21 = __cil_tmp20 + 100;
    __cil_tmp22 = *((u16 *)__cil_tmp21);
    __cil_tmp23 = (int )__cil_tmp22;
    if (i < __cil_tmp23) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp24 = (unsigned long )chip;
    __cil_tmp25 = __cil_tmp24 + 96;
    __cil_tmp26 = *((int *)__cil_tmp25);
    gpio = i + __cil_tmp26;
    __cil_tmp27 = (unsigned int )i;
    label = gpiochip_is_requested(chip, __cil_tmp27);
    }
    if (! label) {
      label = "Unrequested";
    } else {
    }
    {
    seq_printf(s, " gpio-%-3d (%-20.20s) ", gpio, label);
    __cil_tmp28 = 16440 + i;
    __cil_tmp29 = (unsigned short )__cil_tmp28;
    reg = wm831x_reg_read(wm831x, __cil_tmp29);
    }
    if (reg < 0) {
      {
      __cil_tmp30 = (unsigned long )wm831x;
      __cil_tmp31 = __cil_tmp30 + 72;
      __cil_tmp32 = *((struct device **)__cil_tmp31);
      __cil_tmp33 = (struct device const *)__cil_tmp32;
      dev_err(__cil_tmp33, "GPIO control %d read failed: %d\n", gpio, reg);
      seq_printf(s, "\n");
      }
      goto __Cont;
    } else {
    }
    if ((reg & 24576) == 0) {
      goto case_0;
    } else
    if ((reg & 24576) == 1 << 13) {
      goto case_exp;
    } else
    if ((reg & 24576) == 2 << 13) {
      goto case_exp___0;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        pull = "nopull";
        goto switch_break;
        case_exp:
        pull = "pulldown";
        goto switch_break;
        case_exp___0:
        pull = "pullup";
        goto switch_break;
        switch_default:
        pull = "INVALID PULL";
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
    if (i + 1 == 1) {
      goto case_1;
    } else
    if (i + 1 == 2) {
      goto case_1;
    } else
    if (i + 1 == 3) {
      goto case_1;
    } else
    if (i + 1 == 7) {
      goto case_1;
    } else
    if (i + 1 == 8) {
      goto case_1;
    } else
    if (i + 1 == 9) {
      goto case_1;
    } else
    if (i + 1 == 4) {
      goto case_4;
    } else
    if (i + 1 == 5) {
      goto case_4;
    } else
    if (i + 1 == 6) {
      goto case_4;
    } else
    if (i + 1 == 10) {
      goto case_4;
    } else
    if (i + 1 == 11) {
      goto case_4;
    } else
    if (i + 1 == 12) {
      goto case_4;
    } else
    if (i + 1 == 13) {
      goto case_13;
    } else
    if (i + 1 == 14) {
      goto case_13;
    } else
    if (i + 1 == 15) {
      goto case_13;
    } else
    if (i + 1 == 16) {
      goto case_13;
    } else {
      {
      goto switch_default___0;
      if (0) {
        case_1:
        case_2:
        case_3:
        case_7:
        case_8:
        case_9:
        if (reg & 2048) {
          powerdomain = "VPMIC";
        } else {
          powerdomain = "DBVDD";
        }
        goto switch_break___0;
        case_4:
        case_5:
        case_6:
        case_10:
        case_11:
        case_12:
        if (reg & 2048) {
          powerdomain = "SYSVDD";
        } else {
          powerdomain = "DBVDD";
        }
        goto switch_break___0;
        case_13:
        case_14:
        case_15:
        case_16:
        powerdomain = "TPVDD";
        goto switch_break___0;
        switch_default___0:
        {
        while (1) {
          while_continue___0: ;
          __asm__ volatile ("1:\tud2\n"
                               ".pushsection __bug_table,\"a\"\n"
                               "2:\t.long 1b - 2b, %c0 - 2b\n"
                               "\t.word %c1, 0\n"
                               "\t.org 2b+%c2\n"
                               ".popsection": : "i" ("/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5860/dscv_tempdir/dscv/ri/32_1/drivers/gpio/gpio-wm831x.c.common.c"),
                               "i" (212), "i" (12UL));
          {
          while (1) {
            while_continue___1: ;
          }
          while_break___1: ;
          }
          goto while_break___0;
        }
        while_break___0: ;
        }
        goto switch_break___0;
      } else {
        switch_break___0: ;
      }
      }
    }
    tristated = reg & 128;
    {
    __cil_tmp34 = (unsigned long )wm831x;
    __cil_tmp35 = __cil_tmp34 + 213;
    if (*((unsigned int *)__cil_tmp35)) {
      tristated = ! tristated;
    } else {
    }
    }
    if (tristated) {
      tmp___0 = " tristated";
    } else {
      tmp___0 = "";
    }
    if (reg & 512) {
      tmp___1 = "open-drain";
    } else {
      tmp___1 = "CMOS";
    }
    if (reg & 1024) {
      tmp___2 = "";
    } else {
      tmp___2 = " inverted";
    }
    {
    __cil_tmp36 = (unsigned int )i;
    tmp___5 = wm831x_gpio_get(chip, __cil_tmp36);
    }
    if (tmp___5) {
      tmp___4 = "high";
    } else {
      tmp___4 = "low";
    }
    if (reg & 32768) {
      tmp___6 = "in";
    } else {
      tmp___6 = "out";
    }
    {
    seq_printf(s, " %s %s %s %s%s\n                                  %s%s (0x%4x)\n",
               tmp___6, tmp___4, pull, powerdomain, tmp___2, tmp___1, tmp___0, reg);
    }
    __Cont:
    i = i + 1;
  }
  while_break: ;
  }
  return;
}
}
static struct gpio_chip template_chip =
     {"wm831x", (struct device *)0, & __this_module, (int (*)(struct gpio_chip *chip ,
                                                            unsigned int offset ))0,
    (void (*)(struct gpio_chip *chip , unsigned int offset ))0, & wm831x_gpio_direction_in,
    & wm831x_gpio_get, & wm831x_gpio_direction_out, & wm831x_gpio_set_debounce, & wm831x_gpio_set,
    & wm831x_gpio_to_irq, & wm831x_gpio_dbg_show, 0, (unsigned short)0, (char const * const *)0,
    1U, 0U};
static int wm831x_gpio_probe(struct platform_device *pdev ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int wm831x_gpio_probe(struct platform_device *pdev )
{ struct wm831x *wm831x ;
  void *tmp ;
  struct wm831x_pdata *pdata ;
  struct wm831x_gpio *wm831x_gpio ;
  int ret ;
  void *tmp___0 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct device *__cil_tmp10 ;
  struct device const *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct device *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct gpio_chip *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct device *__cil_tmp52 ;
  struct device const *__cil_tmp53 ;
  void *__cil_tmp54 ;
  void const *__cil_tmp55 ;
  {
  {
  __cil_tmp8 = (unsigned long )pdev;
  __cil_tmp9 = __cil_tmp8 + 16;
  __cil_tmp10 = *((struct device **)__cil_tmp9);
  __cil_tmp11 = (struct device const *)__cil_tmp10;
  tmp = dev_get_drvdata(__cil_tmp11);
  wm831x = (struct wm831x *)tmp;
  __cil_tmp12 = (unsigned long )wm831x;
  __cil_tmp13 = __cil_tmp12 + 72;
  __cil_tmp14 = *((struct device **)__cil_tmp13);
  __cil_tmp15 = (unsigned long )__cil_tmp14;
  __cil_tmp16 = __cil_tmp15 + 184;
  __cil_tmp17 = *((void **)__cil_tmp16);
  pdata = (struct wm831x_pdata *)__cil_tmp17;
  tmp___0 = kzalloc(128UL, 208U);
  wm831x_gpio = (struct wm831x_gpio *)tmp___0;
  }
  {
  __cil_tmp18 = (void *)0;
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = (unsigned long )wm831x_gpio;
  if (__cil_tmp20 == __cil_tmp19) {
    return (-12);
  } else {
  }
  }
  *((struct wm831x **)wm831x_gpio) = wm831x;
  __cil_tmp21 = (unsigned long )wm831x_gpio;
  __cil_tmp22 = __cil_tmp21 + 8;
  *((struct gpio_chip *)__cil_tmp22) = template_chip;
  __cil_tmp23 = 8 + 100;
  __cil_tmp24 = (unsigned long )wm831x_gpio;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  __cil_tmp26 = (unsigned long )wm831x;
  __cil_tmp27 = __cil_tmp26 + 216;
  __cil_tmp28 = *((int *)__cil_tmp27);
  *((u16 *)__cil_tmp25) = (u16 )__cil_tmp28;
  __cil_tmp29 = 8 + 8;
  __cil_tmp30 = (unsigned long )wm831x_gpio;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  __cil_tmp32 = (unsigned long )pdev;
  __cil_tmp33 = __cil_tmp32 + 16;
  *((struct device **)__cil_tmp31) = (struct device *)__cil_tmp33;
  if (pdata) {
    {
    __cil_tmp34 = (unsigned long )pdata;
    __cil_tmp35 = __cil_tmp34 + 32;
    if (*((int *)__cil_tmp35)) {
      __cil_tmp36 = 8 + 96;
      __cil_tmp37 = (unsigned long )wm831x_gpio;
      __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
      __cil_tmp39 = (unsigned long )pdata;
      __cil_tmp40 = __cil_tmp39 + 32;
      *((int *)__cil_tmp38) = *((int *)__cil_tmp40);
    } else {
      __cil_tmp41 = 8 + 96;
      __cil_tmp42 = (unsigned long )wm831x_gpio;
      __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
      *((int *)__cil_tmp43) = -1;
    }
    }
  } else {
    __cil_tmp44 = 8 + 96;
    __cil_tmp45 = (unsigned long )wm831x_gpio;
    __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
    *((int *)__cil_tmp46) = -1;
  }
  {
  __cil_tmp47 = (unsigned long )wm831x_gpio;
  __cil_tmp48 = __cil_tmp47 + 8;
  __cil_tmp49 = (struct gpio_chip *)__cil_tmp48;
  ret = gpiochip_add(__cil_tmp49);
  }
  if (ret < 0) {
    {
    __cil_tmp50 = (unsigned long )pdev;
    __cil_tmp51 = __cil_tmp50 + 16;
    __cil_tmp52 = (struct device *)__cil_tmp51;
    __cil_tmp53 = (struct device const *)__cil_tmp52;
    dev_err(__cil_tmp53, "Could not register gpiochip, %d\n", ret);
    }
    goto err;
  } else {
  }
  {
  __cil_tmp54 = (void *)wm831x_gpio;
  platform_set_drvdata(pdev, __cil_tmp54);
  }
  return (ret);
  err:
  {
  __cil_tmp55 = (void const *)wm831x_gpio;
  kfree(__cil_tmp55);
  }
  return (ret);
}
}
static int wm831x_gpio_remove(struct platform_device *pdev ) __attribute__((__section__(".devexit.text"),
__no_instrument_function__)) ;
static int wm831x_gpio_remove(struct platform_device *pdev )
{ struct wm831x_gpio *wm831x_gpio ;
  void *tmp ;
  int ret ;
  struct platform_device const *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct gpio_chip *__cil_tmp8 ;
  void const *__cil_tmp9 ;
  {
  {
  __cil_tmp5 = (struct platform_device const *)pdev;
  tmp = platform_get_drvdata(__cil_tmp5);
  wm831x_gpio = (struct wm831x_gpio *)tmp;
  __cil_tmp6 = (unsigned long )wm831x_gpio;
  __cil_tmp7 = __cil_tmp6 + 8;
  __cil_tmp8 = (struct gpio_chip *)__cil_tmp7;
  ret = (int )gpiochip_remove(__cil_tmp8);
  }
  if (ret == 0) {
    {
    __cil_tmp9 = (void const *)wm831x_gpio;
    kfree(__cil_tmp9);
    }
  } else {
  }
  return (ret);
}
}
static struct platform_driver wm831x_gpio_driver = {& wm831x_gpio_probe, & wm831x_gpio_remove, (void (*)(struct platform_device * ))0,
    (int (*)(struct platform_device * , pm_message_t state ))0, (int (*)(struct platform_device * ))0,
    {"wm831x-gpio", (struct bus_type *)0, & __this_module, (char const *)0, (_Bool)0,
     (struct of_device_id const *)0, (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
     (void (*)(struct device *dev ))0, (int (*)(struct device *dev , pm_message_t state ))0,
     (int (*)(struct device *dev ))0, (struct attribute_group const **)0, (struct dev_pm_ops const *)0,
     (struct driver_private *)0}, (struct platform_device_id const *)0};
static int wm831x_gpio_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int wm831x_gpio_init(void)
{ int tmp ;
  {
  {
  tmp = platform_driver_register(& wm831x_gpio_driver);
  }
  return (tmp);
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = wm831x_gpio_init();
  }
  return (tmp);
}
}
static void wm831x_gpio_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void wm831x_gpio_exit(void)
{
  {
  {
  platform_driver_unregister(& wm831x_gpio_driver);
  }
  return;
}
}
void cleanup_module(void)
{
  {
  {
  wm831x_gpio_exit();
  }
  return;
}
}
static char const __mod_author316[56] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'M',
        (char const )'a', (char const )'r', (char const )'k', (char const )' ',
        (char const )'B', (char const )'r', (char const )'o', (char const )'w',
        (char const )'n', (char const )' ', (char const )'<', (char const )'b',
        (char const )'r', (char const )'o', (char const )'o', (char const )'n',
        (char const )'i', (char const )'e', (char const )'@', (char const )'o',
        (char const )'p', (char const )'e', (char const )'n', (char const )'s',
        (char const )'o', (char const )'u', (char const )'r', (char const )'c',
        (char const )'e', (char const )'.', (char const )'w', (char const )'o',
        (char const )'l', (char const )'f', (char const )'s', (char const )'o',
        (char const )'n', (char const )'m', (char const )'i', (char const )'c',
        (char const )'r', (char const )'o', (char const )'.', (char const )'c',
        (char const )'o', (char const )'m', (char const )'>', (char const )'\000'};
static char const __mod_description317[44] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'G', (char const )'P', (char const )'I', (char const )'O',
        (char const )' ', (char const )'i', (char const )'n', (char const )'t',
        (char const )'e', (char const )'r', (char const )'f', (char const )'a',
        (char const )'c', (char const )'e', (char const )' ', (char const )'f',
        (char const )'o', (char const )'r', (char const )' ', (char const )'W',
        (char const )'M', (char const )'8', (char const )'3', (char const )'1',
        (char const )'x', (char const )' ', (char const )'P', (char const )'M',
        (char const )'I', (char const )'C', (char const )'s', (char const )'\000'};
static char const __mod_license318[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_alias319[27] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'l', (char const )'i', (char const )'a',
        (char const )'s', (char const )'=', (char const )'p', (char const )'l',
        (char const )'a', (char const )'t', (char const )'f', (char const )'o',
        (char const )'r', (char const )'m', (char const )':', (char const )'w',
        (char const )'m', (char const )'8', (char const )'3', (char const )'1',
        (char const )'x', (char const )'-', (char const )'g', (char const )'p',
        (char const )'i', (char const )'o', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_wm831x_gpio_probe_8 ;
void main(void)
{ struct gpio_chip *var_group1 ;
  unsigned int var_wm831x_gpio_direction_in_1_p1 ;
  unsigned int var_wm831x_gpio_get_2_p1 ;
  unsigned int var_wm831x_gpio_direction_out_4_p1 ;
  int var_wm831x_gpio_direction_out_4_p2 ;
  unsigned int var_wm831x_gpio_set_3_p1 ;
  int var_wm831x_gpio_set_3_p2 ;
  unsigned int var_wm831x_gpio_to_irq_5_p1 ;
  unsigned int var_wm831x_gpio_set_debounce_6_p1 ;
  unsigned int var_wm831x_gpio_set_debounce_6_p2 ;
  struct seq_file *var_group2 ;
  struct platform_device *var_group3 ;
  int tmp ;
  int ldv_s_wm831x_gpio_driver_platform_driver ;
  int tmp___0 ;
  int tmp___1 ;
  int __cil_tmp17 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = wm831x_gpio_init();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  ldv_s_wm831x_gpio_driver_platform_driver = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      {
      __cil_tmp17 = ldv_s_wm831x_gpio_driver_platform_driver == 0;
      if (! __cil_tmp17) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    if (tmp___0 == 0) {
      goto case_0;
    } else
    if (tmp___0 == 1) {
      goto case_1;
    } else
    if (tmp___0 == 2) {
      goto case_2;
    } else
    if (tmp___0 == 3) {
      goto case_3;
    } else
    if (tmp___0 == 4) {
      goto case_4;
    } else
    if (tmp___0 == 5) {
      goto case_5;
    } else
    if (tmp___0 == 6) {
      goto case_6;
    } else
    if (tmp___0 == 7) {
      goto case_7;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        wm831x_gpio_direction_in(var_group1, var_wm831x_gpio_direction_in_1_p1);
        }
        goto switch_break;
        case_1:
        {
        wm831x_gpio_get(var_group1, var_wm831x_gpio_get_2_p1);
        }
        goto switch_break;
        case_2:
        {
        wm831x_gpio_direction_out(var_group1, var_wm831x_gpio_direction_out_4_p1,
                                  var_wm831x_gpio_direction_out_4_p2);
        }
        goto switch_break;
        case_3:
        {
        wm831x_gpio_set(var_group1, var_wm831x_gpio_set_3_p1, var_wm831x_gpio_set_3_p2);
        }
        goto switch_break;
        case_4:
        {
        wm831x_gpio_to_irq(var_group1, var_wm831x_gpio_to_irq_5_p1);
        }
        goto switch_break;
        case_5:
        {
        wm831x_gpio_set_debounce(var_group1, var_wm831x_gpio_set_debounce_6_p1, var_wm831x_gpio_set_debounce_6_p2);
        }
        goto switch_break;
        case_6:
        {
        wm831x_gpio_dbg_show(var_group2, var_group1);
        }
        goto switch_break;
        case_7:
        if (ldv_s_wm831x_gpio_driver_platform_driver == 0) {
          {
          res_wm831x_gpio_probe_8 = wm831x_gpio_probe(var_group3);
          ldv_check_return_value(res_wm831x_gpio_probe_8);
          }
          if (res_wm831x_gpio_probe_8) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_wm831x_gpio_driver_platform_driver = 0;
        } else {
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  wm831x_gpio_exit();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int gpiochip_add(struct gpio_chip *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
const char *gpiochip_is_requested(struct gpio_chip *arg0, unsigned int arg1) {
  return (const char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int gpiochip_remove(struct gpio_chip *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_reg_read(struct wm831x *arg0, unsigned short arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int wm831x_set_bits(struct wm831x *arg0, unsigned short arg1, unsigned short arg2, unsigned short arg3) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
