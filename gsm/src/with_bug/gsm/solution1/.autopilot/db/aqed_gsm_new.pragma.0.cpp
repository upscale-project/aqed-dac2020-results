# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 155 "<built-in>" 3
# 1 "<command line>" 1






# 1 "/cad/xilinx/vivado/2018.2/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 157 "/cad/xilinx/vivado/2018.2/Vivado/2018.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow));

    void _ssdm_op_Return(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow));

    void _ssdm_Unroll(...) __attribute__ ((nothrow));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow));
    void _ssdm_Inline(...) __attribute__ ((nothrow));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow));

    void _ssdm_DataPack(...) __attribute__ ((nothrow));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow));

    void __xilinx_ip_top(...) __attribute__ ((nothrow));


}
# 8 "<command line>" 2
# 1 "<built-in>" 2
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp" 2
# 19 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 345 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 346 "/usr/include/features.h" 2 3 4
# 375 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 392 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 393 "/usr/include/sys/cdefs.h" 2 3 4
# 376 "/usr/include/features.h" 2 3 4
# 399 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4
# 10 "/usr/include/gnu/stubs.h" 3 4
# 1 "/usr/include/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/gnu/stubs.h" 2 3 4
# 400 "/usr/include/features.h" 2 3 4
# 28 "/usr/include/stdio.h" 2 3 4

extern "C" {




# 1 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
# 31 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 3 4
typedef __typeof__(((int*)0)-((int*)0)) ptrdiff_t;



typedef __typeof__(sizeof(int)) size_t;
# 34 "/usr/include/stdio.h" 2 3 4

# 1 "/usr/include/bits/types.h" 1 3 4
# 27 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;







typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
# 130 "/usr/include/bits/types.h" 3 4
# 1 "/usr/include/bits/typesizes.h" 1 3 4
# 131 "/usr/include/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef __quad_t *__qaddr_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;
# 36 "/usr/include/stdio.h" 2 3 4








struct _IO_FILE;



typedef struct _IO_FILE FILE;
# 64 "/usr/include/stdio.h" 3 4
typedef struct _IO_FILE __FILE;
# 74 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/libio.h" 1 3 4
# 32 "/usr/include/libio.h" 3 4
# 1 "/usr/include/_G_config.h" 1 3 4
# 15 "/usr/include/_G_config.h" 3 4
# 1 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stddef.h" 1 3 4
# 16 "/usr/include/_G_config.h" 2 3 4




# 1 "/usr/include/wchar.h" 1 3 4
# 82 "/usr/include/wchar.h" 3 4
typedef struct
{
  int __count;
  union
  {

    unsigned int __wch;



    char __wchb[4];
  } __value;
} __mbstate_t;
# 21 "/usr/include/_G_config.h" 2 3 4
typedef struct
{
  __off_t __pos;
  __mbstate_t __state;
} _G_fpos_t;
typedef struct
{
  __off64_t __pos;
  __mbstate_t __state;
} _G_fpos64_t;
# 33 "/usr/include/libio.h" 2 3 4
# 50 "/usr/include/libio.h" 3 4
# 1 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdarg.h" 1 3 4
# 30 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdarg.h" 3 4
typedef __builtin_va_list va_list;
# 48 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 51 "/usr/include/libio.h" 2 3 4
# 145 "/usr/include/libio.h" 3 4
struct _IO_jump_t; struct _IO_FILE;
# 155 "/usr/include/libio.h" 3 4
typedef void _IO_lock_t;





struct _IO_marker {
  struct _IO_marker *_next;
  struct _IO_FILE *_sbuf;



  int _pos;
# 178 "/usr/include/libio.h" 3 4
};


enum __codecvt_result
{
  __codecvt_ok,
  __codecvt_partial,
  __codecvt_error,
  __codecvt_noconv
};
# 246 "/usr/include/libio.h" 3 4
struct _IO_FILE {
  int _flags;




  char* _IO_read_ptr;
  char* _IO_read_end;
  char* _IO_read_base;
  char* _IO_write_base;
  char* _IO_write_ptr;
  char* _IO_write_end;
  char* _IO_buf_base;
  char* _IO_buf_end;

  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;



  int _flags2;

  __off_t _old_offset;



  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];



  _IO_lock_t *_lock;
# 294 "/usr/include/libio.h" 3 4
  __off64_t _offset;
# 303 "/usr/include/libio.h" 3 4
  void *__pad1;
  void *__pad2;
  void *__pad3;
  void *__pad4;
  size_t __pad5;

  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];

};





struct _IO_FILE_plus;

extern struct _IO_FILE_plus _IO_2_1_stdin_;
extern struct _IO_FILE_plus _IO_2_1_stdout_;
extern struct _IO_FILE_plus _IO_2_1_stderr_;
# 339 "/usr/include/libio.h" 3 4
typedef __ssize_t __io_read_fn (void *__cookie, char *__buf, size_t __nbytes);







typedef __ssize_t __io_write_fn (void *__cookie, const char *__buf,
     size_t __n);







typedef int __io_seek_fn (void *__cookie, __off64_t *__pos, int __w);


typedef int __io_close_fn (void *__cookie);




typedef __io_read_fn cookie_read_function_t;
typedef __io_write_fn cookie_write_function_t;
typedef __io_seek_fn cookie_seek_function_t;
typedef __io_close_fn cookie_close_function_t;


typedef struct
{
  __io_read_fn *read;
  __io_write_fn *write;
  __io_seek_fn *seek;
  __io_close_fn *close;
} _IO_cookie_io_functions_t;
typedef _IO_cookie_io_functions_t cookie_io_functions_t;

struct _IO_cookie_file;


extern void _IO_cookie_init (struct _IO_cookie_file *__cfile, int __read_write,
        void *__cookie, _IO_cookie_io_functions_t __fns);




extern "C" {


extern int __underflow (_IO_FILE *);
extern int __uflow (_IO_FILE *);
extern int __overflow (_IO_FILE *, int);
# 435 "/usr/include/libio.h" 3 4
extern int _IO_getc (_IO_FILE *__fp);
extern int _IO_putc (int __c, _IO_FILE *__fp);
extern int _IO_feof (_IO_FILE *__fp) throw ();
extern int _IO_ferror (_IO_FILE *__fp) throw ();

extern int _IO_peekc_locked (_IO_FILE *__fp);





extern void _IO_flockfile (_IO_FILE *) throw ();
extern void _IO_funlockfile (_IO_FILE *) throw ();
extern int _IO_ftrylockfile (_IO_FILE *) throw ();
# 465 "/usr/include/libio.h" 3 4
extern int _IO_vfscanf (_IO_FILE * __restrict, const char * __restrict,
   __gnuc_va_list, int *__restrict);
extern int _IO_vfprintf (_IO_FILE *__restrict, const char *__restrict,
    __gnuc_va_list);
extern __ssize_t _IO_padn (_IO_FILE *, int, __ssize_t);
extern size_t _IO_sgetn (_IO_FILE *, void *, size_t);

extern __off64_t _IO_seekoff (_IO_FILE *, __off64_t, int, int);
extern __off64_t _IO_seekpos (_IO_FILE *, __off64_t, int);

extern void _IO_free_backup_area (_IO_FILE *) throw ();
# 527 "/usr/include/libio.h" 3 4
}
# 75 "/usr/include/stdio.h" 2 3 4




typedef __gnuc_va_list va_list;
# 90 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;






typedef __off64_t off64_t;




typedef __ssize_t ssize_t;







typedef _G_fpos_t fpos_t;





typedef _G_fpos64_t fpos64_t;
# 164 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/bits/stdio_lim.h" 1 3 4
# 165 "/usr/include/stdio.h" 2 3 4



extern struct _IO_FILE *stdin;
extern struct _IO_FILE *stdout;
extern struct _IO_FILE *stderr;







extern int remove (const char *__filename) throw ();

extern int rename (const char *__old, const char *__new) throw ();




extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) throw ();
# 195 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 205 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile64 (void) ;



extern char *tmpnam (char *__s) throw () ;





extern char *tmpnam_r (char *__s) throw () ;
# 227 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     throw () __attribute__ ((__malloc__)) ;
# 237 "/usr/include/stdio.h" 3 4
extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 252 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 262 "/usr/include/stdio.h" 3 4
extern int fcloseall (void);
# 272 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 297 "/usr/include/stdio.h" 3 4
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes) ;
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) ;




extern FILE *fdopen (int __fd, const char *__modes) throw () ;





extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     _IO_cookie_io_functions_t __io_funcs) throw () ;




extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  throw () ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) throw () ;






extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) throw ();



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) throw ();





extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) throw ();


extern void setlinebuf (FILE *__stream) throw ();
# 356 "/usr/include/stdio.h" 3 4
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) throw ();





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) throw ();





extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 3, 0)));






extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__printf__, 2, 0))) ;
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3))) ;




extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
# 425 "/usr/include/stdio.h" 3 4
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) throw ();
# 471 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     throw () __attribute__ ((__format__ (__scanf__, 2, 0)));
# 531 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);
# 550 "/usr/include/stdio.h" 3 4
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 561 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 573 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 594 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);
# 622 "/usr/include/stdio.h" 3 4
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
          ;
# 638 "/usr/include/stdio.h" 3 4
extern char *gets (char *__s) __attribute__ ((__deprecated__));
# 649 "/usr/include/stdio.h" 3 4
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) ;
# 665 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
          size_t *__restrict __n, int __delimiter,
          FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
        size_t *__restrict __n, int __delimiter,
        FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
       size_t *__restrict __n,
       FILE *__restrict __stream) ;
# 689 "/usr/include/stdio.h" 3 4
extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 726 "/usr/include/stdio.h" 3 4
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream);
# 737 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);
# 749 "/usr/include/stdio.h" 3 4
extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 773 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 798 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 818 "/usr/include/stdio.h" 3 4
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence);
extern __off64_t ftello64 (FILE *__stream) ;
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos);
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos);




extern void clearerr (FILE *__stream) throw ();

extern int feof (FILE *__stream) throw () ;

extern int ferror (FILE *__stream) throw () ;




extern void clearerr_unlocked (FILE *__stream) throw ();
extern int feof_unlocked (FILE *__stream) throw () ;
extern int ferror_unlocked (FILE *__stream) throw () ;
# 846 "/usr/include/stdio.h" 3 4
extern void perror (const char *__s);







# 1 "/usr/include/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];


extern int _sys_nerr;
extern const char *const _sys_errlist[];
# 854 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) throw () ;




extern int fileno_unlocked (FILE *__stream) throw () ;
# 873 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) throw ();





extern char *cuserid (char *__s);




struct obstack;


extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     throw () __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     throw () __attribute__ ((__format__ (__printf__, 2, 0)));







extern void flockfile (FILE *__stream) throw ();



extern int ftrylockfile (FILE *__stream) throw () ;


extern void funlockfile (FILE *__stream) throw ();
# 943 "/usr/include/stdio.h" 3 4
}
# 20 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp" 2
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 1
# 27 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/private.h" 1
# 30 "../../../../../pool0/Saranyu/gsm/cpp_bug4/private.h"
typedef short word;
typedef long longword;
# 28 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 2
# 1 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c" 1
# 34 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c"
word
gsm_add (word a, word b)
{
  longword sum;
  sum = (longword) a + (longword) b;
  return ((sum) < ((-32767)-1) ? ((-32767)-1) : (sum) > ( 32767) ? ( 32767): (sum));
}

word
gsm_mult (word a, word b)
{
  if (a == ((-32767)-1) && b == ((-32767)-1))
    return ( 32767);
  else
    return (((longword) a * (longword) b) >> (15));
}

word
gsm_mult_r (word a, word b)
{
  longword prod;
  if (b == ((-32767)-1) && a == ((-32767)-1))
    return ( 32767);
  else
    {
      prod = (longword) a *(longword) b + 16384;
      prod >>= 15;
      return prod & 0xFFFF;
    }
}

word
gsm_abs (word a)
{
  return a < 0 ? (a == ((-32767)-1) ? ( 32767) : -a) : a;
}

const unsigned char bitoff[256] = {
  8, 7, 6, 6, 5, 5, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4,
  3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
};

word
gsm_norm (longword a)
# 110 "../../../../../pool0/Saranyu/gsm/cpp_bug4/add.c"
{

  if (a < 0)
    {
      if (a <= -1073741824)
 return 0;
      a = ~a;
    }

  return a & 0xffff0000 ?
    (a & 0xff000000 ? -1 + bitoff[0xFF & (a >> 24)] :
     7 + bitoff[0xFF & (a >> 16)])
    : (a & 0xff00 ? 15 + bitoff[0xFF & (a >> 8)] : 23 + bitoff[0xFF & a]);
}

word
gsm_div (word num, word denum)
{
  longword L_num;
  longword L_denum;
  word div;
  int k;

  L_num = num;
  L_denum = denum;
  div = 0;
  k = 15;





  if (num == 0)
    return 0;

  while (k--)
    {
      div <<= 1;
      L_num <<= 1;

      if (L_num >= L_denum)
 {
   L_num -= L_denum;
   div++;
 }
    }

  return div;
}
# 29 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c" 2
# 39 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
void
Autocorrelation (word * s ,
   longword * L_ACF )




{
  register int k, i;

  word temp;
  word smax;
  word scalauto, n;
  word *sp;
  word sl;



  smax = 0;
  for (k = 0; k <= (4 -1); k++)
    {
#pragma HLS PIPELINE
 temp = gsm_abs(s[k]);
      if (temp > smax)
 smax = temp;
    }



  if (smax == 0)
    scalauto = 0;
  else
    scalauto = 4 - gsm_norm ((longword) smax << 16);

  if (scalauto > 0 && scalauto <= 4)
    {
      n = scalauto;
      for (k = 0; k <= (4 -1); k++)
#pragma HLS UNROLL
 s[k] = gsm_mult_r(s[k], 16384 >> (n - 1));
    }



  {
    sp = s;
    sl = *sp;
# 159 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
  }


  if (scalauto > 0)

    for (k = (4 -1); k >= 0; k--)
#pragma HLS UNROLL
 *s++ <<= scalauto;
}



void
Reflection_coefficients (longword * L_ACF ,
    register word * r )
{
  register int i, m, n;
  register word temp;
  word ACF[9];
  word P[9];
  word K[9];




  if (L_ACF[0] == 0)
#pragma HLS PIPELINE
 {
      for (i = 8; i > 0; i--)
 *r++ = 0;
      return;
    }

  temp = gsm_norm (L_ACF[0]);
  for (i = 0; i <= 8; i++)
#pragma HLS PIPELINE
 ACF[i] = ((L_ACF[i] << temp) >> (16));




  for (i = 1; i <= 7; i++)
#pragma HLS PIPELINE
 K[i] = ACF[i];
  for (i = 0; i <= 8; i++)
#pragma HLS PIPELINE
 P[i] = ACF[i];



  for (n = 1; n <= 8; n++, r++)
#pragma HLS PIPELINE
 {

      temp = P[1];
      temp = gsm_abs(temp);
      if (P[0] < temp)
 {
   for (i = n; i <= 8; i++)
     *r++ = 0;
   return;
 }

      *r = gsm_div (temp, P[0]);

      if (P[1] > 0)
 *r = -*r;
      if (n == 8)
 return;



      temp = gsm_mult_r(P[1], *r);
      P[0] = gsm_add(P[0], temp);

      for (m = 1; m <= 8 - n; m++)
 {
   temp = gsm_mult_r(K[m], *r);
   P[m] = gsm_add(P[m + 1], temp);

   temp = gsm_mult_r(P[m + 1], *r);
   K[m] = gsm_add(K[m], temp);
 }
    }
}



void
Transformation_to_Log_Area_Ratios (register word * r )







{
  register word temp;
  register int i;




  for (i = 1; i <= 8; i++, r++)
#pragma HLS PIPELINE
 {

      temp = *r;
      temp = gsm_abs(temp);

      if (temp < 22118)
 {
   temp >>= 1;
 }
      else if (temp < 31130)
 {
   temp -= 11059;
 }
      else
 {
   temp -= 26112;
   temp <<= 2;
 }

      *r = *r < 0 ? -temp : temp;
    }
}



void
Quantization_and_coding (register word * LAR )
{
  register word temp;
# 314 "../../../../../pool0/Saranyu/gsm/cpp_bug4/lpc.c"
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 0); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>31 ? 31 - -32 : (temp<-32 ? 0 : temp - -32); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, 2048); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;
  temp = gsm_mult(20480, *LAR); temp = gsm_add(temp, -2560); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>15 ? 15 - -16 : (temp<-16 ? 0 : temp - -16); LAR++;;

  temp = gsm_mult(13964, *LAR); temp = gsm_add(temp, 94); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
  temp = gsm_mult(15360, *LAR); temp = gsm_add(temp, -1792); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>7 ? 7 - -8 : (temp<-8 ? 0 : temp - -8); LAR++;;
  temp = gsm_mult(8534, *LAR); temp = gsm_add(temp, -341); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;
  temp = gsm_mult(9036, *LAR); temp = gsm_add(temp, -1144); temp = gsm_add(temp, 256); temp = ((temp) >> (9)); *LAR = temp>3 ? 3 - -4 : (temp<-4 ? 0 : temp - -4); LAR++;;


}

void
Gsm_LPC_Analysis (word * s ,
    word * LARc )
{
  longword L_ACF[9];

  Autocorrelation (s, L_ACF);
  Reflection_coefficients (L_ACF, LARc);
  Transformation_to_Log_Area_Ratios (LARc);
  Quantization_and_coding (LARc);
}
# 21 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp" 2

# 1 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 1 3
# 33 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/bits/wchar.h" 1 3 4
# 22 "/usr/include/bits/wchar.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 23 "/usr/include/bits/wchar.h" 2 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 28 "/usr/include/stdint.h" 2 3 4








typedef signed char int8_t;
typedef short int int16_t;
typedef int int32_t;

typedef long int int64_t;







typedef unsigned char uint8_t;
typedef unsigned short int uint16_t;

typedef unsigned int uint32_t;



typedef unsigned long int uint64_t;
# 65 "/usr/include/stdint.h" 3 4
typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef int int_least32_t;

typedef long int int_least64_t;






typedef unsigned char uint_least8_t;
typedef unsigned short int uint_least16_t;
typedef unsigned int uint_least32_t;

typedef unsigned long int uint_least64_t;
# 90 "/usr/include/stdint.h" 3 4
typedef signed char int_fast8_t;

typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
# 103 "/usr/include/stdint.h" 3 4
typedef unsigned char uint_fast8_t;

typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
# 119 "/usr/include/stdint.h" 3 4
typedef long int intptr_t;


typedef unsigned long int uintptr_t;
# 134 "/usr/include/stdint.h" 3 4
typedef long int intmax_t;
typedef unsigned long int uintmax_t;
# 34 "/hd/cad/xilinx/vivado/2018.2/Vivado/2018.2/lnx64/tools/clang/bin/../lib/clang/3.1/include/stdint.h" 2 3
# 23 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp" 2
# 33 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
const word inData[4] =
  { 81, 10854, 1893, -10291
# 58 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
};

const word outData[4] =
  { 80, 10848, 1888, -10288
# 85 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
};

const word outLARc[8] = { 32, 33, 22, 13, 7, 5, 3, 2 };


int
gsm ()
{
  int i;
  int main_result;
  word so[4];
  word LARc[8];
      main_result = 0;

      for (i = 0; i < 4; i++)
 so[i] = inData[i];

      Gsm_LPC_Analysis (so, LARc);

      for (i = 0; i < 4; i++)
 main_result += (so[i] != outData[i]);
      for (i = 0; i < 8; i++)
 main_result += (LARc[i] != outLARc[i]);

      printf ("Result:%d\n", main_result);
      return main_result;
    }


struct st{
word orig_val[4]={0}; word * acc_out1; word orig_out1[4]={0}; longword orig_out2[8] = {0}; word dup_out1[4]={0}; word dup_out2[8] = {0}; uint16_t orig_in=0xFFFF; word orig_out[4]={0}; bool orig_issued=0; bool dup_issued=0; uint16_t dup_in=0xFFFF; uint16_t in_count=0; uint16_t out_count=0; bool orig_done=0; bool dup_done=0; bool qed_done; bool qed_check; bool index;};

st state;

struct out1{
  uint8_t num_out;
};

struct out2{
  bool qed_done;
  bool qed_check;
  bool orig_done;
  uint8_t check1;
  uint8_t check2;

};



struct out3{
  bool qed_done;
  bool qed_check;
  bool orig_issued;
  bool orig_done;
  uint8_t check1;
  uint8_t check2;
  word bmc_in[2*4];
  word LARc_out[2*8];

};


out1 aqed_in (word *bmc_in, bool orig, bool dup) {

     int i;

      bool issue_orig = ((orig) && (!state.orig_issued));

      bool issue_dup = ((dup) && (!state.dup_issued) && (state.orig_issued));

      if (issue_orig){
         state.orig_issued =1;
         state.orig_in =state.in_count;
         state.orig_val[0] = *(bmc_in);
         state.orig_val[1] = *(bmc_in + 1);
         state.orig_val[2] = *(bmc_in + 2);
         state.orig_val[3] = *(bmc_in + 3);
# 170 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
      }

      if (issue_dup){
         state.dup_issued = ((state.orig_val[0] == *(bmc_in)) && (state.orig_val[1] == *(bmc_in + 1)) &&
                             (state.orig_val[2] == *(bmc_in + 2)) && (state.orig_val[3] == *(bmc_in + 3)));
         if(state.dup_issued) {
               state.dup_in =state.in_count;
         }
      }
       state.in_count =state.in_count + 1;
       out1 o1;
       o1.num_out = 0;

   return o1;
}

out2 aqed_out (word *acc_out, word *acc_out2) {


   int check1 = 0;
   int check2 = 0;
   int i;
   state.orig_done = state.orig_issued && (state.out_count>= state.orig_in);
   if (state.orig_issued && (state.out_count == state.orig_in)){
        state.acc_out1 = acc_out;
   }
   if (state.orig_issued && state.dup_issued && (state.out_count == state.dup_in) && !state.qed_done){
        state.qed_done = 1;

         state.orig_out1[0] = *(state.acc_out1);
         state.orig_out1[1] = *(state.acc_out1 + 1);
         state.orig_out1[2] = *(state.acc_out1 + 2);
         state.orig_out1[3] = *(state.acc_out1 + 3);







         state.dup_out1[0] = *(acc_out);
         state.dup_out1[1] = *(acc_out + 1);
         state.dup_out1[2] = *(acc_out + 2);
         state.dup_out1[3] = *(acc_out + 3);






         state.qed_check = ((state.orig_out1[0] == state.dup_out1[0]) && (state.orig_out1[1] == state.dup_out1[1]) &&
                             (state.orig_out1[2] == state.dup_out1[2]) && (state.orig_out1[3] == state.dup_out1[3]) );



   }
   if (state.out_count > state.dup_in){
        state.qed_done = 1;
   }
   state.out_count =state.out_count + 1;
   out2 o2;
   o2.qed_done = state.qed_done;
   o2.qed_check = state.qed_check;
   o2.check1 = check1;
   o2.check2 = check2;

   return o2;
}


void increment (word *a, word *b){
   int i;

       for (i = 0; i <= 4; i++){
#pragma HLS PIPELINE
 a[i] = a[i] + i;
        }
        for (i = 0; i < 8; i++){
#pragma HLS PIPELINE
 b[i] = a[i] + a[i];
        }
}

word bmc_in[2*4];

word LARc_out[2*8];




uint8_t mem_num = 0;

#pragma design top
out3 aqed_top (bool orig, bool dup) {

out1 o1;
#pragma HLS data_pack variable=&o1
out2 o2;
#pragma HLS data_pack variable=&o2
out3 o3;
#pragma HLS data_pack variable=&o3

word *inData;
word *outLARc;

word *inData_o;
word *outLARc_o;




inData = &bmc_in[(state.index)*4];
outLARc = &LARc_out[(state.index)*8];

inData_o = &bmc_in[0];
outLARc_o = &LARc_out[0];
# 294 "../../../../../pool0/Saranyu/gsm/cpp_bug4/aqed_gsm_new.cpp"
o1 = aqed_in(inData, orig, dup);

Gsm_LPC_Analysis(inData, outLARc);



o2 = aqed_out(inData, outLARc);

if (state.index == 1){
    state.index = 0;}
else {
    state.index = 1;}

o3.qed_done = o2.qed_done;
o3.qed_check = o2.qed_check;
o3.orig_issued = state.orig_issued;
o3.orig_done = state.orig_done;
o3.check1 = o2.check1;
o3.check2 = o2.check2;


return o3;

}
