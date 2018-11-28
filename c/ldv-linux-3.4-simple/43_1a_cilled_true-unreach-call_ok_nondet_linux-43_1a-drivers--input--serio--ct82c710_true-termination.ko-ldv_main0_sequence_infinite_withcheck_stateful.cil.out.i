extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
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
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
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
struct pt_regs;
struct pt_regs;
struct page;
struct page;
struct task_struct;
struct task_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_2180_13 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2195_14 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2196_12 {
   struct __anonstruct_ldv_2180_13 ldv_2180 ;
   struct __anonstruct_ldv_2195_14 ldv_2195 ;
};
struct desc_struct {
   union __anonunion_ldv_2196_12 ldv_2196 ;
};
struct gate_struct64 {
   u16 offset_low ;
   u16 segment ;
   unsigned char ist : 3 ;
   unsigned char zero0 : 5 ;
   unsigned char type : 5 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   u16 offset_middle ;
   u32 offset_high ;
   u32 zero1 ;
};
typedef struct gate_struct64 gate_desc;
struct desc_ptr {
   unsigned short size ;
   unsigned long address ;
};
struct file;
struct file;
struct thread_struct;
struct thread_struct;
struct tss_struct;
struct tss_struct;
struct pv_cpu_ops {
   unsigned long (*get_debugreg)(int ) ;
   void (*set_debugreg)(int , unsigned long ) ;
   void (*clts)(void) ;
   unsigned long (*read_cr0)(void) ;
   void (*write_cr0)(unsigned long ) ;
   unsigned long (*read_cr4_safe)(void) ;
   unsigned long (*read_cr4)(void) ;
   void (*write_cr4)(unsigned long ) ;
   unsigned long (*read_cr8)(void) ;
   void (*write_cr8)(unsigned long ) ;
   void (*load_tr_desc)(void) ;
   void (*load_gdt)(struct desc_ptr const * ) ;
   void (*load_idt)(struct desc_ptr const * ) ;
   void (*store_gdt)(struct desc_ptr * ) ;
   void (*store_idt)(struct desc_ptr * ) ;
   void (*set_ldt)(void const * , unsigned int ) ;
   unsigned long (*store_tr)(void) ;
   void (*load_tls)(struct thread_struct * , unsigned int ) ;
   void (*load_gs_index)(unsigned int ) ;
   void (*write_ldt_entry)(struct desc_struct * , int , void const * ) ;
   void (*write_gdt_entry)(struct desc_struct * , int , void const * , int ) ;
   void (*write_idt_entry)(gate_desc * , int , gate_desc const * ) ;
   void (*alloc_ldt)(struct desc_struct * , unsigned int ) ;
   void (*free_ldt)(struct desc_struct * , unsigned int ) ;
   void (*load_sp0)(struct tss_struct * , struct thread_struct * ) ;
   void (*set_iopl_mask)(unsigned int ) ;
   void (*wbinvd)(void) ;
   void (*io_delay)(void) ;
   void (*cpuid)(unsigned int * , unsigned int * , unsigned int * , unsigned int * ) ;
   u64 (*read_msr)(unsigned int , int * ) ;
   int (*rdmsr_regs)(u32 * ) ;
   int (*write_msr)(unsigned int , unsigned int , unsigned int ) ;
   int (*wrmsr_regs)(u32 * ) ;
   u64 (*read_tsc)(void) ;
   u64 (*read_pmc)(int ) ;
   unsigned long long (*read_tscp)(unsigned int * ) ;
   void (*irq_enable_sysexit)(void) ;
   void (*usergs_sysret64)(void) ;
   void (*usergs_sysret32)(void) ;
   void (*iret)(void) ;
   void (*swapgs)(void) ;
   void (*start_context_switch)(struct task_struct * ) ;
   void (*end_context_switch)(struct task_struct * ) ;
};
struct arch_spinlock;
struct arch_spinlock;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2824_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2824_19 ldv_2824 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct static_key;
struct x86_hw_tss {
   u32 reserved1 ;
   u64 sp0 ;
   u64 sp1 ;
   u64 sp2 ;
   u64 reserved2 ;
   u64 ist[7U] ;
   u32 reserved3 ;
   u32 reserved4 ;
   u16 reserved5 ;
   u16 io_bitmap_base ;
};
struct tss_struct {
   struct x86_hw_tss x86_tss ;
   unsigned long io_bitmap[1025U] ;
   unsigned long stack[64U] ;
};
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5180_24 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5186_25 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5187_23 {
   struct __anonstruct_ldv_5180_24 ldv_5180 ;
   struct __anonstruct_ldv_5186_25 ldv_5186 ;
};
union __anonunion_ldv_5196_26 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5187_23 ldv_5187 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5196_26 ldv_5196 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct work_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
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
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
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
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13363_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13363_134 ldv_13363 ;
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
struct static_key {
   atomic_t enabled ;
};
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
                    size_t ) ;
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
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
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
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
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
   struct kmem_cache_node *node[1024U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
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
struct device_private;
struct device_private;
struct device_driver;
struct device_driver;
struct driver_private;
struct driver_private;
struct class;
struct class;
struct subsys_private;
struct subsys_private;
struct bus_type;
struct bus_type;
struct device_node;
struct device_node;
struct iommu_ops;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
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
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
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
   void (*release)(struct device * ) ;
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
   unsigned char active : 1 ;
};
typedef unsigned long kernel_ulong_t;
struct serio_device_id {
   __u8 type ;
   __u8 extra ;
   __u8 id ;
   __u8 proto ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct serio_driver;
struct serio {
   void *port_data ;
   char name[32U] ;
   char phys[32U] ;
   bool manual_bind ;
   struct serio_device_id id ;
   spinlock_t lock ;
   int (*write)(struct serio * , unsigned char ) ;
   int (*open)(struct serio * ) ;
   void (*close)(struct serio * ) ;
   int (*start)(struct serio * ) ;
   void (*stop)(struct serio * ) ;
   struct serio *parent ;
   struct list_head child_node ;
   struct list_head children ;
   unsigned int depth ;
   struct serio_driver *drv ;
   struct mutex drv_mutex ;
   struct device dev ;
   struct list_head node ;
};
struct serio_driver {
   char const *description ;
   struct serio_device_id const *id_table ;
   bool manual_bind ;
   void (*write_wakeup)(struct serio * ) ;
   irqreturn_t (*interrupt)(struct serio * , unsigned char , unsigned int ) ;
   int (*connect)(struct serio * , struct serio_driver * ) ;
   int (*reconnect)(struct serio * ) ;
   void (*disconnect)(struct serio * ) ;
   void (*cleanup)(struct serio * ) ;
   struct device_driver driver ;
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
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern struct pv_cpu_ops pv_cpu_ops ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static void slow_down_io(void)
{ unsigned long __cil_tmp1 ;
  void (*__cil_tmp2)(void) ;
  {
  {
  __cil_tmp1 = (unsigned long )(& pv_cpu_ops) + 216;
  __cil_tmp2 = *((void (**)(void))__cil_tmp1);
  (*__cil_tmp2)();
  }
  return;
}
}
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{ unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outb_p(unsigned char value , int port )
{ int __cil_tmp3 ;
  unsigned char __cil_tmp4 ;
  {
  {
  __cil_tmp3 = (int )value;
  __cil_tmp4 = (unsigned char )__cil_tmp3;
  outb(__cil_tmp4, port);
  slow_down_io();
  }
  return;
}
}
__inline static unsigned char inb_p(int port )
{ unsigned char value ;
  unsigned char tmp ;
  {
  {
  tmp = inb(port);
  value = tmp;
  slow_down_io();
  }
  return (value);
}
}
extern struct module __this_module ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern void *__VERIFIER_nondet_pointer(void) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern void __const_udelay(unsigned long ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{ int tmp ;
  irqreturn_t (*__cil_tmp7)(int , void * ) ;
  {
  {
  __cil_tmp7 = (irqreturn_t (*)(int , void * ))0;
  tmp = request_threaded_irq(irq, handler, __cil_tmp7, flags, name, dev);
  }
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern irqreturn_t serio_interrupt(struct serio * , unsigned char , unsigned int ) ;
extern void __serio_register_port(struct serio * , struct module * ) ;
extern void serio_unregister_port(struct serio * ) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add_resources(struct platform_device * , struct resource const * ,
                                         unsigned int ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
static struct serio *ct82c710_port ;
static struct platform_device *ct82c710_device ;
static struct resource ct82c710_iores ;
static irqreturn_t ct82c710_interrupt(int cpl , void *dev_id )
{ unsigned char tmp ;
  irqreturn_t tmp___0 ;
  struct resource *__cil_tmp5 ;
  resource_size_t __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  unsigned char __cil_tmp9 ;
  {
  {
  __cil_tmp5 = & ct82c710_iores;
  __cil_tmp6 = *((resource_size_t *)__cil_tmp5);
  __cil_tmp7 = (int )__cil_tmp6;
  tmp = inb(__cil_tmp7);
  __cil_tmp8 = (int )tmp;
  __cil_tmp9 = (unsigned char )__cil_tmp8;
  tmp___0 = serio_interrupt(ct82c710_port, __cil_tmp9, 0U);
  }
  return (tmp___0);
}
}
static int ct82c170_wait(void)
{ int timeout ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  struct resource *__cil_tmp4 ;
  resource_size_t __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  struct resource *__cil_tmp11 ;
  resource_size_t __cil_tmp12 ;
  int __cil_tmp13 ;
  struct resource *__cil_tmp14 ;
  resource_size_t __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  {
  timeout = 60000;
  goto ldv_17002;
  ldv_17001:
  {
  __cil_tmp4 = & ct82c710_iores;
  __cil_tmp5 = *((resource_size_t *)__cil_tmp4);
  __cil_tmp6 = (unsigned int )__cil_tmp5;
  __cil_tmp7 = __cil_tmp6 + 1U;
  __cil_tmp8 = (int )__cil_tmp7;
  tmp = inb_p(__cil_tmp8);
  }
  {
  __cil_tmp9 = (int )tmp;
  __cil_tmp10 = __cil_tmp9 & 2;
  if (__cil_tmp10 != 0) {
    {
    __cil_tmp11 = & ct82c710_iores;
    __cil_tmp12 = *((resource_size_t *)__cil_tmp11);
    __cil_tmp13 = (int )__cil_tmp12;
    inb_p(__cil_tmp13);
    }
  } else {
  }
  }
  {
  __const_udelay(4295UL);
  timeout = timeout - 1;
  }
  ldv_17002:
  {
  __cil_tmp14 = & ct82c710_iores;
  __cil_tmp15 = *((resource_size_t *)__cil_tmp14);
  __cil_tmp16 = (unsigned int )__cil_tmp15;
  __cil_tmp17 = __cil_tmp16 + 1U;
  __cil_tmp18 = (int )__cil_tmp17;
  tmp___0 = inb(__cil_tmp18);
  }
  {
  __cil_tmp19 = (int )tmp___0;
  __cil_tmp20 = __cil_tmp19 & 7;
  if (__cil_tmp20 != 5) {
    if (timeout != 0) {
      goto ldv_17001;
    } else {
      goto ldv_17003;
    }
  } else {
    goto ldv_17003;
  }
  }
  ldv_17003: ;
  return (timeout == 0);
}
}
static void ct82c710_close(struct serio *serio )
{ int tmp ;
  unsigned char tmp___0 ;
  int tmp___1 ;
  struct resource *__cil_tmp5 ;
  resource_size_t __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned char __cil_tmp12 ;
  struct resource *__cil_tmp13 ;
  resource_size_t __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  int __cil_tmp17 ;
  void *__cil_tmp18 ;
  {
  {
  tmp = ct82c170_wait();
  }
  if (tmp != 0) {
    {
    printk("<4>ct82c710.c: Device busy in close()\n");
    }
  } else {
  }
  {
  __cil_tmp5 = & ct82c710_iores;
  __cil_tmp6 = *((resource_size_t *)__cil_tmp5);
  __cil_tmp7 = (unsigned int )__cil_tmp6;
  __cil_tmp8 = __cil_tmp7 + 1U;
  __cil_tmp9 = (int )__cil_tmp8;
  tmp___0 = inb_p(__cil_tmp9);
  __cil_tmp10 = (int )tmp___0;
  __cil_tmp11 = __cil_tmp10 & 111;
  __cil_tmp12 = (unsigned char )__cil_tmp11;
  __cil_tmp13 = & ct82c710_iores;
  __cil_tmp14 = *((resource_size_t *)__cil_tmp13);
  __cil_tmp15 = (unsigned int )__cil_tmp14;
  __cil_tmp16 = __cil_tmp15 + 1U;
  __cil_tmp17 = (int )__cil_tmp16;
  outb_p(__cil_tmp12, __cil_tmp17);
  tmp___1 = ct82c170_wait();
  }
  if (tmp___1 != 0) {
    {
    printk("<4>ct82c710.c: Device busy in close()\n");
    }
  } else {
  }
  {
  __cil_tmp18 = (void *)0;
  free_irq(12U, __cil_tmp18);
  }
  return;
}
}
static int ct82c710_open(struct serio *serio )
{ unsigned char status ;
  int err ;
  int tmp ;
  void *__cil_tmp5 ;
  struct resource *__cil_tmp6 ;
  resource_size_t __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned char __cil_tmp14 ;
  struct resource *__cil_tmp15 ;
  resource_size_t __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  int __cil_tmp22 ;
  unsigned char __cil_tmp23 ;
  struct resource *__cil_tmp24 ;
  resource_size_t __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned char __cil_tmp32 ;
  struct resource *__cil_tmp33 ;
  resource_size_t __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned char __cil_tmp41 ;
  struct resource *__cil_tmp42 ;
  resource_size_t __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  int __cil_tmp46 ;
  void *__cil_tmp47 ;
  {
  {
  __cil_tmp5 = (void *)0;
  err = request_irq(12U, & ct82c710_interrupt, 0UL, "ct82c710", __cil_tmp5);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  __cil_tmp6 = & ct82c710_iores;
  __cil_tmp7 = *((resource_size_t *)__cil_tmp6);
  __cil_tmp8 = (unsigned int )__cil_tmp7;
  __cil_tmp9 = __cil_tmp8 + 1U;
  __cil_tmp10 = (int )__cil_tmp9;
  status = inb_p(__cil_tmp10);
  __cil_tmp11 = (unsigned int )status;
  __cil_tmp12 = __cil_tmp11 | 136U;
  status = (unsigned char )__cil_tmp12;
  __cil_tmp13 = (int )status;
  __cil_tmp14 = (unsigned char )__cil_tmp13;
  __cil_tmp15 = & ct82c710_iores;
  __cil_tmp16 = *((resource_size_t *)__cil_tmp15);
  __cil_tmp17 = (unsigned int )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 1U;
  __cil_tmp19 = (int )__cil_tmp18;
  outb_p(__cil_tmp14, __cil_tmp19);
  __cil_tmp20 = (unsigned int )status;
  __cil_tmp21 = __cil_tmp20 & 247U;
  status = (unsigned char )__cil_tmp21;
  __cil_tmp22 = (int )status;
  __cil_tmp23 = (unsigned char )__cil_tmp22;
  __cil_tmp24 = & ct82c710_iores;
  __cil_tmp25 = *((resource_size_t *)__cil_tmp24);
  __cil_tmp26 = (unsigned int )__cil_tmp25;
  __cil_tmp27 = __cil_tmp26 + 1U;
  __cil_tmp28 = (int )__cil_tmp27;
  outb_p(__cil_tmp23, __cil_tmp28);
  __cil_tmp29 = (unsigned int )status;
  __cil_tmp30 = __cil_tmp29 | 16U;
  status = (unsigned char )__cil_tmp30;
  __cil_tmp31 = (int )status;
  __cil_tmp32 = (unsigned char )__cil_tmp31;
  __cil_tmp33 = & ct82c710_iores;
  __cil_tmp34 = *((resource_size_t *)__cil_tmp33);
  __cil_tmp35 = (unsigned int )__cil_tmp34;
  __cil_tmp36 = __cil_tmp35 + 1U;
  __cil_tmp37 = (int )__cil_tmp36;
  outb_p(__cil_tmp32, __cil_tmp37);
  }
  goto ldv_17013;
  ldv_17012:
  {
  printk("<3>ct82c710: Device busy in open()\n");
  __cil_tmp38 = (unsigned int )status;
  __cil_tmp39 = __cil_tmp38 & 111U;
  status = (unsigned char )__cil_tmp39;
  __cil_tmp40 = (int )status;
  __cil_tmp41 = (unsigned char )__cil_tmp40;
  __cil_tmp42 = & ct82c710_iores;
  __cil_tmp43 = *((resource_size_t *)__cil_tmp42);
  __cil_tmp44 = (unsigned int )__cil_tmp43;
  __cil_tmp45 = __cil_tmp44 + 1U;
  __cil_tmp46 = (int )__cil_tmp45;
  outb_p(__cil_tmp41, __cil_tmp46);
  __cil_tmp47 = (void *)0;
  free_irq(12U, __cil_tmp47);
  }
  return (-16);
  ldv_17013:
  {
  tmp = ct82c170_wait();
  }
  if (tmp != 0) {
    goto ldv_17012;
  } else {
    goto ldv_17014;
  }
  ldv_17014: ;
  return (0);
}
}
static int ct82c710_write(struct serio *port , unsigned char c )
{ int tmp ;
  int __cil_tmp4 ;
  unsigned char __cil_tmp5 ;
  struct resource *__cil_tmp6 ;
  resource_size_t __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  {
  tmp = ct82c170_wait();
  }
  if (tmp != 0) {
    return (-1);
  } else {
  }
  {
  __cil_tmp4 = (int )c;
  __cil_tmp5 = (unsigned char )__cil_tmp4;
  __cil_tmp6 = & ct82c710_iores;
  __cil_tmp7 = *((resource_size_t *)__cil_tmp6);
  __cil_tmp8 = (int )__cil_tmp7;
  outb_p(__cil_tmp5, __cil_tmp8);
  }
  return (0);
}
}
static int ct82c710_detect(void)
{ unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned int __cil_tmp3 ;
  struct resource *__cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct resource *__cil_tmp8 ;
  resource_size_t __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  {
  {
  outb_p((unsigned char)85, 762);
  outb_p((unsigned char)170, 1018);
  outb_p((unsigned char)54, 1018);
  outb_p((unsigned char)228, 1018);
  outb_p((unsigned char)27, 762);
  outb_p((unsigned char)15, 912);
  tmp = inb_p(913);
  }
  {
  __cil_tmp3 = (unsigned int )tmp;
  if (__cil_tmp3 != 228U) {
    return (-19);
  } else {
  }
  }
  {
  outb_p((unsigned char)13, 912);
  tmp___0 = inb_p(913);
  __cil_tmp4 = & ct82c710_iores;
  __cil_tmp5 = (int )tmp___0;
  __cil_tmp6 = __cil_tmp5 << 2;
  *((resource_size_t *)__cil_tmp4) = (resource_size_t )__cil_tmp6;
  __cil_tmp7 = (unsigned long )(& ct82c710_iores) + 8;
  __cil_tmp8 = & ct82c710_iores;
  __cil_tmp9 = *((resource_size_t *)__cil_tmp8);
  *((resource_size_t *)__cil_tmp7) = __cil_tmp9 + 1ULL;
  __cil_tmp10 = (unsigned long )(& ct82c710_iores) + 24;
  *((unsigned long *)__cil_tmp10) = 256UL;
  outb_p((unsigned char)15, 912);
  outb_p((unsigned char)15, 913);
  }
  return (0);
}
}
static int ct82c710_probe(struct platform_device *dev )
{ void *tmp ;
  struct serio *__cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  char (*__cil_tmp20)[32U] ;
  char *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  char (*__cil_tmp24)[32U] ;
  char *__cil_tmp25 ;
  struct resource *__cil_tmp26 ;
  resource_size_t __cil_tmp27 ;
  struct resource *__cil_tmp28 ;
  resource_size_t __cil_tmp29 ;
  {
  {
  tmp = kzalloc(1584UL, 208U);
  ct82c710_port = (struct serio *)tmp;
  }
  {
  __cil_tmp3 = (struct serio *)0;
  __cil_tmp4 = (unsigned long )__cil_tmp3;
  __cil_tmp5 = (unsigned long )ct82c710_port;
  if (__cil_tmp5 == __cil_tmp4) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp6 = (unsigned long )ct82c710_port;
  __cil_tmp7 = __cil_tmp6 + 73;
  *((__u8 *)__cil_tmp7) = (__u8 )1U;
  __cil_tmp8 = (unsigned long )ct82c710_port;
  __cil_tmp9 = __cil_tmp8 + 416;
  __cil_tmp10 = (unsigned long )dev;
  __cil_tmp11 = __cil_tmp10 + 16;
  *((struct device **)__cil_tmp9) = (struct device *)__cil_tmp11;
  __cil_tmp12 = (unsigned long )ct82c710_port;
  __cil_tmp13 = __cil_tmp12 + 160;
  *((int (**)(struct serio * ))__cil_tmp13) = & ct82c710_open;
  __cil_tmp14 = (unsigned long )ct82c710_port;
  __cil_tmp15 = __cil_tmp14 + 168;
  *((void (**)(struct serio * ))__cil_tmp15) = & ct82c710_close;
  __cil_tmp16 = (unsigned long )ct82c710_port;
  __cil_tmp17 = __cil_tmp16 + 152;
  *((int (**)(struct serio * , unsigned char ))__cil_tmp17) = & ct82c710_write;
  __cil_tmp18 = (unsigned long )ct82c710_port;
  __cil_tmp19 = __cil_tmp18 + 8;
  __cil_tmp20 = (char (*)[32U])__cil_tmp19;
  __cil_tmp21 = (char *)__cil_tmp20;
  strlcpy(__cil_tmp21, "C&T 82c710 mouse port", 32UL);
  __cil_tmp22 = (unsigned long )ct82c710_port;
  __cil_tmp23 = __cil_tmp22 + 40;
  __cil_tmp24 = (char (*)[32U])__cil_tmp23;
  __cil_tmp25 = (char *)__cil_tmp24;
  __cil_tmp26 = & ct82c710_iores;
  __cil_tmp27 = *((resource_size_t *)__cil_tmp26);
  snprintf(__cil_tmp25, 32UL, "isa%16llx/serio0", __cil_tmp27);
  __serio_register_port(ct82c710_port, & __this_module);
  __cil_tmp28 = & ct82c710_iores;
  __cil_tmp29 = *((resource_size_t *)__cil_tmp28);
  printk("<6>serio: C&T 82c710 mouse port at %#llx irq %d\n", __cil_tmp29, 12);
  }
  return (0);
}
}
static int ct82c710_remove(struct platform_device *dev )
{
  {
  {
  serio_unregister_port(ct82c710_port);
  }
  return (0);
}
}
static struct platform_driver ct82c710_driver = {& ct82c710_probe, & ct82c710_remove, (void (*)(struct platform_device * ))0, (int (*)(struct platform_device * ,
                                                                                          pm_message_t ))0,
    (int (*)(struct platform_device * ))0, {"ct82c710", (struct bus_type *)0, & __this_module,
                                            (char const *)0, (_Bool)0, (struct of_device_id const *)0,
                                            (int (*)(struct device * ))0, (int (*)(struct device * ))0,
                                            (void (*)(struct device * ))0, (int (*)(struct device * ,
                                                                                    pm_message_t ))0,
                                            (int (*)(struct device * ))0, (struct attribute_group const **)0,
                                            (struct dev_pm_ops const *)0, (struct driver_private *)0},
    (struct platform_device_id const *)0};
static int ct82c710_init(void)
{ int error ;
  struct platform_device *__cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct resource const *__cil_tmp5 ;
  {
  {
  error = ct82c710_detect();
  }
  if (error != 0) {
    return (error);
  } else {
  }
  {
  error = platform_driver_register(& ct82c710_driver);
  }
  if (error != 0) {
    return (error);
  } else {
  }
  {
  ct82c710_device = platform_device_alloc("ct82c710", -1);
  }
  {
  __cil_tmp2 = (struct platform_device *)0;
  __cil_tmp3 = (unsigned long )__cil_tmp2;
  __cil_tmp4 = (unsigned long )ct82c710_device;
  if (__cil_tmp4 == __cil_tmp3) {
    error = -12;
    goto err_unregister_driver;
  } else {
  }
  }
  {
  __cil_tmp5 = (struct resource const *)(& ct82c710_iores);
  error = platform_device_add_resources(ct82c710_device, __cil_tmp5, 1U);
  }
  if (error != 0) {
    goto err_free_device;
  } else {
  }
  {
  error = platform_device_add(ct82c710_device);
  }
  if (error != 0) {
    goto err_free_device;
  } else {
  }
  return (0);
  err_free_device:
  {
  platform_device_put(ct82c710_device);
  }
  err_unregister_driver:
  {
  platform_driver_unregister(& ct82c710_driver);
  }
  return (error);
}
}
static void ct82c710_exit(void)
{
  {
  {
  platform_device_unregister(ct82c710_device);
  platform_driver_unregister(& ct82c710_driver);
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct platform_device *var_group1 ;
  int res_ct82c710_probe_6 ;
  int var_ct82c710_interrupt_0_p0 ;
  void *var_ct82c710_interrupt_0_p1 ;
  int ldv_s_ct82c710_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  ldv_s_ct82c710_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = ct82c710_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_17072;
  ldv_17071:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_ct82c710_driver_platform_driver == 0) {
        {
        res_ct82c710_probe_6 = ct82c710_probe(var_group1);
        ldv_check_return_value(res_ct82c710_probe_6);
        }
        if (res_ct82c710_probe_6 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_ct82c710_driver_platform_driver = 0;
      } else {
      }
      goto ldv_17068;
      case_1:
      {
      LDV_IN_INTERRUPT = 2;
      ct82c710_interrupt(var_ct82c710_interrupt_0_p0, var_ct82c710_interrupt_0_p1);
      LDV_IN_INTERRUPT = 1;
      }
      goto ldv_17068;
      switch_default: ;
      goto ldv_17068;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_17068: ;
  ldv_17072:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_17071;
  } else
  if (ldv_s_ct82c710_driver_platform_driver != 0) {
    goto ldv_17071;
  } else {
    goto ldv_17073;
  }
  ldv_17073: ;
  ldv_module_exit:
  {
  ct82c710_exit();
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = __VERIFIER_nondet_pointer();
  }
  return (tmp);
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __serio_register_port(struct serio *arg0, struct module *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void ldv_check_final_state() {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void *external_alloc(void);
struct page *ldv_some_page() {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int platform_device_add_resources(struct platform_device *arg0, const struct resource *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return (struct platform_device *)external_alloc();
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
irqreturn_t serio_interrupt(struct serio *arg0, unsigned char arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void serio_unregister_port(struct serio *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
