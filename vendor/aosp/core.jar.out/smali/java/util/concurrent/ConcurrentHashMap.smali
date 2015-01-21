.class public Ljava/util/concurrent/ConcurrentHashMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentHashMap$EntrySet;,
        Ljava/util/concurrent/ConcurrentHashMap$Values;,
        Ljava/util/concurrent/ConcurrentHashMap$KeySet;,
        Ljava/util/concurrent/ConcurrentHashMap$EntryIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$WriteThroughEntry;,
        Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,
        Ljava/util/concurrent/ConcurrentHashMap$Segment;,
        Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final MIN_SEGMENT_TABLE_CAPACITY:I = 0x2

.field static final RETRIES_BEFORE_LOCK:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final SBASE:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final SSHIFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final TBASE:J = 0x0L

#the value of this static final field might be set in the static constructor
.field private static final TSHIFT:I = 0x0

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

.field private static final serialVersionUID:J = 0x6499de129d87293dL


# instance fields
.field transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 1466
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v5

    sput-object v5, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    .line 1467
    const-class v3, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1468
    .local v3, tc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1469
    .local v1, sc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, v3}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    .line 1470
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v5

    int-to-long v5, v5

    sput-wide v5, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    .line 1471
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, v3}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I

    move-result v4

    .line 1472
    .local v4, ts:I
    sget-object v5, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v5, v1}, Lsun/misc/Unsafe;->arrayIndexScale(Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1476
    .local v2, ss:I
    add-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v2

    if-nez v5, :cond_0

    add-int/lit8 v5, v4, -0x1

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    .line 1477
    :cond_0
    new-instance v5, Ljava/lang/Error;

    const-string v6, "data type scale not a power of two"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1473
    .end local v1           #sc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #ss:I
    .end local v4           #ts:I
    :catch_0
    move-exception v0

    .line 1474
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1478
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #sc:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v2       #ss:I
    .restart local v4       #ts:I
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    sput v5, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    .line 1479
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x1f

    sput v5, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    .line 1480
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v1, 0x10

    .line 771
    const/high16 v0, 0x3f40

    invoke-direct {p0, v1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 772
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .line 763
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/high16 v0, 0x3f40

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 764
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .parameter "initialCapacity"
    .parameter "loadFactor"

    .prologue
    .line 750
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 751
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 9
    .parameter "initialCapacity"
    .parameter "loadFactor"
    .parameter "concurrencyLevel"

    .prologue
    .line 704
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 705
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-lez v6, :cond_0

    if-ltz p1, :cond_0

    if-gtz p3, :cond_1

    .line 706
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 707
    :cond_1
    const/high16 v6, 0x1

    if-le p3, v6, :cond_2

    .line 708
    const/high16 p3, 0x1

    .line 710
    :cond_2
    const/4 v4, 0x0

    .line 711
    .local v4, sshift:I
    const/4 v5, 0x1

    .line 712
    .local v5, ssize:I
    :goto_0
    if-ge v5, p3, :cond_3

    .line 713
    add-int/lit8 v4, v4, 0x1

    .line 714
    shl-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 716
    :cond_3
    rsub-int/lit8 v6, v4, 0x20

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    .line 717
    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    .line 718
    const/high16 v6, 0x4000

    if-le p1, v6, :cond_4

    .line 719
    const/high16 p1, 0x4000

    .line 720
    :cond_4
    div-int v0, p1, v5

    .line 721
    .local v0, c:I
    mul-int v6, v0, v5

    if-ge v6, p1, :cond_5

    .line 722
    add-int/lit8 v0, v0, 0x1

    .line 723
    :cond_5
    const/4 v1, 0x2

    .line 724
    .local v1, cap:I
    :goto_1
    if-ge v1, v0, :cond_6

    .line 725
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 727
    :cond_6
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    int-to-float v6, v1

    mul-float/2addr v6, p2

    float-to-int v7, v6

    new-array v6, v1, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    check-cast v6, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v2, p2, v7, v6}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(FI[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 730
    .local v2, s0:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    new-array v3, v5, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    check-cast v3, [Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 731
    .local v3, ss:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    sget-object v6, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v7, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    invoke-virtual {v6, v3, v7, v8, v2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 732
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 733
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    const/16 v2, 0x10

    const/high16 v1, 0x3f40

    .line 783
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 786
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 787
    return-void
.end method

.method private ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 17
    .parameter "k"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 641
    .local v2, ss:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    sget v1, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int v1, p1, v1

    int-to-long v13, v1

    sget-wide v15, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long v3, v13, v15

    .line 643
    .local v3, u:J
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .local v10, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v10, :cond_1

    .line 644
    const/4 v1, 0x0

    aget-object v9, v2, v1

    .line 645
    .local v9, proto:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget-object v1, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v7, v1

    .line 646
    .local v7, cap:I
    iget v8, v9, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 647
    .local v8, lf:F
    int-to-float v1, v7

    mul-float/2addr v1, v8

    float-to-int v12, v1

    .line 648
    .local v12, threshold:I
    new-array v11, v7, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    check-cast v11, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 649
    .local v11, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .restart local v10       #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v10, :cond_1

    .line 651
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-direct {v6, v8, v12, v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;-><init>(FI[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 653
    .local v6, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_0
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v1, v2, v3, v4}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    check-cast v10, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .restart local v10       #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v10, :cond_1

    .line 654
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    const/4 v5, 0x0

    move-object v10, v6

    invoke-virtual/range {v1 .. v6}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 659
    .end local v6           #s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .end local v7           #cap:I
    .end local v8           #lf:F
    .end local v9           #proto:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .end local v11           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v12           #threshold:I
    :cond_1
    return-object v10
.end method

.method static final entryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 5
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0
.end method

.method static final entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 6
    .parameter
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 679
    .local p0, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz p0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .local v0, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-nez v0, :cond_1

    .end local v0           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .restart local v0       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p1

    int-to-long v2, v2

    sget v4, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    shl-long/2addr v2, v4

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0
.end method

.method private static hash(I)I
    .locals 2
    .parameter "h"

    .prologue
    .line 239
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 240
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 241
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 242
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 243
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 244
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1433
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1436
    const/4 v0, 0x2

    .line 1437
    .local v0, cap:I
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1438
    .local v4, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 1439
    aget-object v3, v4, v1

    .line 1440
    .local v3, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 1441
    int-to-float v6, v0

    iget v7, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 1442
    new-array v6, v0, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    check-cast v6, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1438
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v3           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local v2, key:Ljava/lang/Object;,"TK;"
    .local v5, value:Ljava/lang/Object;,"TV;"
    :cond_1
    invoke-virtual {p0, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1448
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #value:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 1449
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    .line 1450
    .restart local v5       #value:Ljava/lang/Object;,"TV;"
    if-nez v2, :cond_1

    .line 1454
    return-void
.end method

.method static final segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 6
    .parameter
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 626
    .local p0, ss:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    sget v2, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int v2, p1, v2

    int-to-long v2, v2

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long v0, v2, v4

    .line 627
    .local v0, u:J
    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    goto :goto_0
.end method

.method private segmentForHash(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;
    .locals 6
    .parameter "h"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentHashMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v2, p1, v2

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v2, v3

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long v0, v2, v4

    .line 670
    .local v0, u:J
    sget-object v2, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-virtual {v2, v3, v0, v1}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    return-object v2
.end method

.method static final setEntryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 5
    .parameter
    .parameter "i"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;I",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p0, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local p2, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    int-to-long v1, p1

    sget v3, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    shl-long/2addr v1, v3

    sget-wide v3, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 227
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 8
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v7, 0x0

    .line 1400
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 1401
    invoke-direct {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1402
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1404
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1405
    .local v4, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v2, 0x0

    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_3

    .line 1406
    invoke-static {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v3

    .line 1407
    .local v3, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 1409
    :try_start_0
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1410
    .local v5, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 1412
    invoke-static {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->entryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3
    if-eqz v0, :cond_1

    .line 1413
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1414
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1412
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 1410
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1418
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #i:I
    .end local v5           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v6

    .restart local v1       #i:I
    .restart local v5       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 1405
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1421
    .end local v1           #i:I
    .end local v3           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .end local v5           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_3
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1422
    invoke-virtual {p1, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1423
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 1117
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 1118
    .local v2, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1119
    invoke-static {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 1120
    .local v1, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v1, :cond_0

    .line 1121
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->clear()V

    .line 1118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1123
    .end local v1           #s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 997
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 12
    .parameter "key"

    .prologue
    .line 911
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v1

    .line 912
    .local v1, h:I
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v7, v1, v7

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v7, v8

    sget v8, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int/2addr v7, v8

    int-to-long v7, v7

    sget-wide v9, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long v5, v7, v9

    .line 913
    .local v5, u:J
    sget-object v7, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-virtual {v7, v8, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .local v3, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v3, :cond_2

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v4, :cond_2

    .line 915
    sget-object v7, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v1

    int-to-long v8, v8

    sget v10, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    shl-long/2addr v8, v10

    sget-wide v10, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 917
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 919
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v2, k:Ljava/lang/Object;,"TK;"
    if-eq v2, p1, :cond_0

    iget v7, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 920
    :cond_0
    const/4 v7, 0x1

    .line 923
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return v7

    .line 917
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v2       #k:Ljava/lang/Object;,"TK;"
    .restart local v4       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 923
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 16
    .parameter "value"

    .prologue
    .line 939
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    if-nez p1, :cond_0

    .line 940
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 941
    :cond_0
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 942
    .local v9, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const-wide/16 v5, 0x0

    .line 943
    .local v5, previousSum:J
    const/4 v4, 0x0

    .line 945
    .local v4, lockCount:I
    const/4 v7, -0x1

    .line 946
    .local v7, retries:I
    :goto_0
    const-wide/16 v10, 0x0

    .line 947
    .local v10, sum:J
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    :try_start_0
    array-length v14, v9

    if-ge v3, v14, :cond_7

    .line 949
    const/4 v14, 0x2

    if-ne v7, v14, :cond_2

    .line 950
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v8

    .line 951
    .local v8, segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 952
    add-int/lit8 v4, v4, 0x1

    .line 958
    :cond_1
    iget-object v12, v8, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 959
    .local v12, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v12, :cond_3

    .line 960
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_6

    .line 962
    invoke-static {v12, v2}, Ljava/util/concurrent/ConcurrentHashMap;->entryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v1

    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3
    if-eqz v1, :cond_5

    .line 963
    iget-object v13, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 964
    .local v13, v:Ljava/lang/Object;,"TV;"
    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v14

    if-eqz v14, :cond_4

    .line 965
    const/4 v14, 0x1

    .line 976
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_c

    .line 977
    aget-object v15, v9, v3

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 976
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 954
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #i:I
    .end local v8           #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .end local v12           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v13           #v:Ljava/lang/Object;,"TV;"
    :cond_2
    :try_start_1
    invoke-static {v9, v3}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v8

    .line 955
    .restart local v8       #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v8, :cond_1

    .line 947
    :cond_3
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 962
    .restart local v1       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v2       #i:I
    .restart local v12       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v13       #v:Ljava/lang/Object;,"TV;"
    :cond_4
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_3

    .line 960
    .end local v13           #v:Ljava/lang/Object;,"TV;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 968
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_6
    iget v14, v8, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v14, v14

    add-long/2addr v10, v14

    goto :goto_5

    .line 971
    .end local v2           #i:I
    .end local v8           #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .end local v12           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_7
    if-ltz v7, :cond_8

    cmp-long v14, v10, v5

    if-eqz v14, :cond_9

    :cond_8
    if-lez v4, :cond_a

    .line 972
    :cond_9
    const/4 v14, 0x0

    .line 976
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v4, :cond_c

    .line 977
    aget-object v15, v9, v3

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 976
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 973
    :cond_a
    move-wide v5, v10

    .line 945
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 976
    :cond_b
    throw v14

    .line 972
    :cond_c
    return v14

    .line 976
    :catchall_0
    move-exception v14

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v4, :cond_b

    .line 977
    aget-object v15, v9, v3

    invoke-virtual {v15}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 976
    add-int/lit8 v3, v3, 0x1

    goto :goto_7
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1205
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$ValueIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 1184
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    .line 1185
    .local v0, es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    return-object v0

    .restart local v0       #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;

    .end local v0           #es:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->entrySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 883
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v1

    .line 884
    .local v1, h:I
    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v7, v1, v7

    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int/2addr v7, v8

    sget v8, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int/2addr v7, v8

    int-to-long v7, v7

    sget-wide v9, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long v5, v7, v9

    .line 885
    .local v5, u:J
    sget-object v7, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    invoke-virtual {v7, v8, v5, v6}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .local v3, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v3, :cond_2

    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .local v4, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v4, :cond_2

    .line 887
    sget-object v7, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v8, v1

    int-to-long v8, v8

    sget v10, Ljava/util/concurrent/ConcurrentHashMap;->TSHIFT:I

    shl-long/2addr v8, v10

    sget-wide v10, Ljava/util/concurrent/ConcurrentHashMap;->TBASE:J

    add-long/2addr v8, v10

    invoke-virtual {v7, v4, v8, v9}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 889
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 891
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v2, k:Ljava/lang/Object;,"TK;"
    if-eq v2, p1, :cond_0

    iget v7, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v7, v1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 892
    :cond_0
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 895
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    return-object v7

    .line 889
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v2       #k:Ljava/lang/Object;,"TK;"
    .restart local v4       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 895
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v4           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 10

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    .line 804
    const-wide/16 v3, 0x0

    .line 805
    .local v3, sum:J
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 806
    .local v2, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    array-length v6, v2

    if-ge v0, v6, :cond_3

    .line 807
    invoke-static {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 808
    .local v1, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v1, :cond_2

    .line 809
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v6, :cond_1

    .line 826
    .end local v1           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_0
    :goto_1
    return v5

    .line 811
    .restart local v1       #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_1
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 806
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v1           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_3
    cmp-long v6, v3, v8

    if-eqz v6, :cond_6

    .line 815
    const/4 v0, 0x0

    :goto_2
    array-length v6, v2

    if-ge v0, v6, :cond_5

    .line 816
    invoke-static {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 817
    .restart local v1       #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v1, :cond_4

    .line 818
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-nez v6, :cond_0

    .line 820
    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    int-to-long v6, v6

    sub-long/2addr v3, v6

    .line 815
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 823
    .end local v1           #seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_5
    cmp-long v6, v3, v8

    if-nez v6, :cond_0

    .line 826
    :cond_6
    const/4 v5, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1142
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    .line 1143
    .local v0, ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :goto_0
    return-object v0

    .restart local v0       #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeySet;

    .end local v0           #ks:Ljava/util/Set;,"Ljava/util/Set<TK;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->keySet:Ljava/util/Set;

    goto :goto_0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1195
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$KeyIterator;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1016
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_0

    .line 1017
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1018
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1019
    .local v0, hash:I
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v3, v0, v3

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int v1, v3, v4

    .line 1020
    .local v1, j:I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    sget v5, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int v5, v1, v5

    int-to-long v5, v5

    sget-wide v7, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .local v2, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v2, :cond_1

    .line 1022
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v2

    .line 1023
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v0, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, m:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1055
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1056
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1036
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    if-nez p2, :cond_0

    .line 1037
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1038
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1039
    .local v0, hash:I
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentShift:I

    ushr-int v3, v0, v3

    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segmentMask:I

    and-int v1, v3, v4

    .line 1040
    .local v1, j:I
    sget-object v3, Ljava/util/concurrent/ConcurrentHashMap;->UNSAFE:Lsun/misc/Unsafe;

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    sget v5, Ljava/util/concurrent/ConcurrentHashMap;->SSHIFT:I

    shl-int v5, v1, v5

    int-to-long v5, v5

    sget-wide v7, Ljava/util/concurrent/ConcurrentHashMap;->SBASE:J

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .local v2, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v2, :cond_1

    .line 1042
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v2

    .line 1043
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v0, p2, v3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    const/4 v2, 0x0

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1069
    .local v0, hash:I
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentForHash(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 1070
    .local v1, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v1, p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1079
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1081
    .local v0, hash:I
    if-eqz p2, :cond_0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentForHash(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .local v1, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v1           #s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 1106
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1107
    .local v0, hash:I
    if-nez p2, :cond_0

    .line 1108
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1109
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentForHash(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 1110
    .local v1, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 1091
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, oldValue:Ljava/lang/Object;,"TV;"
    .local p3, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->hash(I)I

    move-result v0

    .line 1092
    .local v0, hash:I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1093
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 1094
    :cond_1
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentForHash(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v1

    .line 1095
    .local v1, s:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1, v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 15

    .prologue
    .line 839
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    .line 840
    .local v6, segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;,"[Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    array-length v5, v6

    .line 842
    .local v5, segmentCount:I
    const-wide/16 v1, 0x0

    .line 843
    .local v1, previousSum:J
    const/4 v3, -0x1

    .local v3, retries:I
    :goto_0
    const/4 v11, 0x2

    if-ge v3, v11, :cond_4

    .line 844
    const-wide/16 v9, 0x0

    .line 845
    .local v9, sum:J
    const-wide/16 v7, 0x0

    .line 846
    .local v7, size:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_1

    .line 847
    invoke-static {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->segmentAt([Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v4

    .line 848
    .local v4, segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    if-eqz v4, :cond_0

    .line 849
    iget v11, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    int-to-long v11, v11

    add-long/2addr v9, v11

    .line 850
    iget v11, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 853
    .end local v4           #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_1
    cmp-long v11, v9, v1

    if-nez v11, :cond_3

    .line 854
    const/16 v11, 0x1f

    ushr-long v11, v7, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    long-to-int v11, v7

    .line 866
    .end local v9           #sum:J
    :goto_2
    return v11

    .line 854
    .restart local v9       #sum:J
    :cond_2
    const v11, 0x7fffffff

    goto :goto_2

    .line 855
    :cond_3
    move-wide v1, v9

    .line 843
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 858
    .end local v0           #i:I
    .end local v7           #size:J
    .end local v9           #sum:J
    :cond_4
    const-wide/16 v7, 0x0

    .line 859
    .restart local v7       #size:J
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    if-ge v0, v5, :cond_5

    .line 860
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->ensureSegment(I)Ljava/util/concurrent/ConcurrentHashMap$Segment;

    move-result-object v4

    .line 861
    .restart local v4       #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 862
    iget v11, v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 859
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 864
    .end local v4           #segment:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_6

    .line 865
    aget-object v11, v6, v0

    invoke-virtual {v11}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 864
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 866
    :cond_6
    const/16 v11, 0x1f

    ushr-long v11, v7, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_7

    long-to-int v11, v7

    goto :goto_2

    :cond_7
    const v11, 0x7fffffff

    goto :goto_2
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1163
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    .line 1164
    .local v0, vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :goto_0
    return-object v0

    .restart local v0       #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap$Values;

    .end local v0           #vs:Ljava/util/Collection;,"Ljava/util/Collection<TV;>;"
    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap$Values;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap;->values:Ljava/util/Collection;

    goto :goto_0
.end method
