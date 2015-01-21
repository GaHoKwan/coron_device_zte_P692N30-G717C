.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheEntry;
    }
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x10

.field private static final TTL_NANOS:J = 0x77359400L


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 67
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "hostname"

    .prologue
    .line 75
    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v1, p1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    .line 77
    .local v0, entry:Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_0

    iget-wide v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 78
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    .line 82
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 2
    .parameter "hostname"
    .parameter "addresses"

    .prologue
    .line 90
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v1, p2}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "hostname"
    .parameter "detailMessage"

    .prologue
    .line 98
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v1, p2}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method
