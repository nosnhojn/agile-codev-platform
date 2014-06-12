
#ifndef XENV_LINUX_H
#define XENV_LINUX_H

#ifdef __cplusplus
extern "C" {
#endif


/***************************** Include Files *********************************/



#define XENV_MEM_COPY(DestPtr, SrcPtr, Bytes) \
    memcpy(DestPtr, SrcPtr, Bytes)

#define XENV_MEM_FILL(DestPtr, Data, Bytes) \
    memset(DestPtr, Data, Bytes)

typedef int XENV_TIME_STAMP;

#define XENV_TIME_STAMP_GET(StampPtr)

#define XENV_TIME_STAMP_DELTA_US(Stamp1Ptr, Stamp2Ptr)     (0)

#define XENV_TIME_STAMP_DELTA_MS(Stamp1Ptr, Stamp2Ptr)     (0)

#define XENV_USLEEP(delay)  udelay(delay)

#define XCACHE_ENABLE_DCACHE()    __enable_dcache()
#define XCACHE_DISABLE_DCACHE()   __disable_dcache()
#define XCACHE_ENABLE_ICACHE()    __enable_icache()
#define XCACHE_DISABLE_ICACHE()   __disable_icache()

#define XCACHE_INVALIDATE_DCACHE_RANGE(Addr, Len) invalidate_dcache_range((u32)(Addr), ((u32)(Addr)+(Len)))
#define XCACHE_FLUSH_DCACHE_RANGE(Addr, Len)      flush_dcache_range((u32)(Addr), ((u32)(Addr)+(Len)))

#define XCACHE_INVALIDATE_ICACHE_RANGE(Addr, Len) "XCACHE_INVALIDATE_ICACHE_RANGE unsupported"
#define XCACHE_FLUSH_ICACHE_RANGE(Addr, Len)      flush_icache_range(Addr, Len)

#define XCACHE_ENABLE_CACHE() \
    { XCACHE_ENABLE_DCACHE(); XCACHE_ENABLE_ICACHE(); }

#define XCACHE_DISABLE_CACHE()  \
    { XCACHE_DISABLE_DCACHE(); XCACHE_DISABLE_ICACHE(); }



#ifdef __cplusplus
}
#endif

#endif            /* end of protection macro */
