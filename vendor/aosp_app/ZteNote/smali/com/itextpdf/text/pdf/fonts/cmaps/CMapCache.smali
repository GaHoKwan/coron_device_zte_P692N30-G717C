.class public Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;
.super Ljava/lang/Object;
.source "CMapCache.java"


# static fields
.field private static final cacheByteCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;",
            ">;"
        }
    .end annotation
.end field

.field private static final cacheCidByte:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;",
            ">;"
        }
    .end annotation
.end field

.field private static final cacheCidUni:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;",
            ">;"
        }
    .end annotation
.end field

.field private static final cacheUniCid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheUniCid:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidUni:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidByte:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheByteCid:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCachedCMapByteCid(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheByteCid:Ljava/util/HashMap;

    monitor-enter v3

    .line 107
    :try_start_0
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheByteCid:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    move-object v1, v0

    .line 108
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;

    .end local v1           #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;-><init>()V

    .line 111
    .restart local v1       #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapByteCid;
    new-instance v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V

    .line 112
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheByteCid:Ljava/util/HashMap;

    monitor-enter v3

    .line 113
    :try_start_1
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheByteCid:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    :cond_0
    return-object v1

    .line 108
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 114
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getCachedCMapCidByte(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidByte:Ljava/util/HashMap;

    monitor-enter v3

    .line 92
    :try_start_0
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidByte:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    move-object v1, v0

    .line 93
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;

    .end local v1           #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;-><init>()V

    .line 96
    .restart local v1       #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidByte;
    new-instance v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V

    .line 97
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidByte:Ljava/util/HashMap;

    monitor-enter v3

    .line 98
    :try_start_1
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidByte:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 101
    :cond_0
    return-object v1

    .line 93
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 99
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getCachedCMapCidUni(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    .local v1, cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidUni:Ljava/util/HashMap;

    monitor-enter v3

    .line 77
    :try_start_0
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidUni:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    move-object v1, v0

    .line 78
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;

    .end local v1           #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;-><init>()V

    .line 81
    .restart local v1       #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCidUni;
    new-instance v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V

    .line 82
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidUni:Ljava/util/HashMap;

    monitor-enter v3

    .line 83
    :try_start_1
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheCidUni:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 86
    :cond_0
    return-object v1

    .line 78
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 84
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getCachedCMapUniCid(Ljava/lang/String;)Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheUniCid:Ljava/util/HashMap;

    monitor-enter v3

    .line 62
    :try_start_0
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheUniCid:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    move-object v1, v0

    .line 63
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    if-nez v1, :cond_0

    .line 65
    new-instance v1, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;

    .end local v1           #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;
    invoke-direct {v1}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;-><init>()V

    .line 66
    .restart local v1       #cmap:Lcom/itextpdf/text/pdf/fonts/cmaps/CMapUniCid;
    new-instance v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;

    invoke-direct {v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CidResource;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapParserEx;->parseCid(Ljava/lang/String;Lcom/itextpdf/text/pdf/fonts/cmaps/AbstractCMap;Lcom/itextpdf/text/pdf/fonts/cmaps/CidLocation;)V

    .line 67
    sget-object v3, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheUniCid:Ljava/util/HashMap;

    monitor-enter v3

    .line 68
    :try_start_1
    sget-object v2, Lcom/itextpdf/text/pdf/fonts/cmaps/CMapCache;->cacheUniCid:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :cond_0
    return-object v1

    .line 63
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 69
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
