.class final Ljava/util/concurrent/ConcurrentHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final MAX_SCAN_RETRIES:I = 0x0

.field private static final serialVersionUID:J = 0x1f364c905893293dL


# instance fields
.field transient count:I

.field final loadFactor:F

.field transient modCount:I

.field volatile transient table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field transient threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    if-le v1, v0, :cond_0

    const/16 v0, 0x40

    :cond_0
    sput v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->MAX_SCAN_RETRIES:I

    return-void
.end method

.method constructor <init>(FI[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 0
    .parameter "lf"
    .parameter "threshold"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p3, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 328
    iput p1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    .line 329
    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 330
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 331
    return-void
.end method

.method private rehash(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    .locals 23
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 399
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v17, v0

    .line 400
    .local v17, oldTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .line 401
    .local v16, oldCapacity:I
    shl-int/lit8 v12, v16, 0x1

    .line 402
    .local v12, newCapacity:I
    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->loadFactor:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    .line 403
    new-array v13, v12, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    check-cast v13, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 405
    .local v13, newTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    add-int/lit8 v19, v12, -0x1

    .line 406
    .local v19, sizeMask:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v5, v0, :cond_4

    .line 407
    aget-object v3, v17, v5

    .line 408
    .local v3, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eqz v3, :cond_0

    .line 409
    iget-object v14, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 410
    .local v14, next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget v0, v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v21, v0

    and-int v6, v21, v19

    .line 411
    .local v6, idx:I
    if-nez v14, :cond_1

    .line 412
    aput-object v3, v13, v6

    .line 406
    .end local v6           #idx:I
    .end local v14           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 414
    .restart local v6       #idx:I
    .restart local v14       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    move-object v10, v3

    .line 415
    .local v10, lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move v9, v6

    .line 416
    .local v9, lastIdx:I
    move-object v8, v14

    .line 417
    .local v8, last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v8, :cond_3

    .line 419
    iget v0, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v21, v0

    and-int v7, v21, v19

    .line 420
    .local v7, k:I
    if-eq v7, v9, :cond_2

    .line 421
    move v9, v7

    .line 422
    move-object v10, v8

    .line 418
    :cond_2
    iget-object v8, v8, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_1

    .line 425
    .end local v7           #k:I
    :cond_3
    aput-object v10, v13, v9

    .line 427
    move-object/from16 v18, v3

    .local v18, p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_2
    move-object/from16 v0, v18

    if-eq v0, v10, :cond_0

    .line 428
    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 429
    .local v20, v:Ljava/lang/Object;,"TV;"
    move-object/from16 v0, v18

    iget v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    .line 430
    .local v4, h:I
    and-int v7, v4, v19

    .line 431
    .restart local v7       #k:I
    aget-object v11, v13, v7

    .line 432
    .local v11, n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    new-instance v21, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v4, v1, v2, v11}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    aput-object v21, v13, v7

    .line 427
    move-object/from16 v0, v18

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-object/from16 v18, v0

    goto :goto_2

    .line 437
    .end local v3           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #h:I
    .end local v6           #idx:I
    .end local v7           #k:I
    .end local v8           #last:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v9           #lastIdx:I
    .end local v10           #lastRun:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v11           #n:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v14           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v18           #p:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v20           #v:Ljava/lang/Object;,"TV;"
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    move/from16 v21, v0

    and-int v15, v21, v19

    .line 438
    .local v15, nodeIndex:I
    aget-object v21, v13, v15

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->setNext(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 439
    aput-object p1, v13, v15

    .line 440
    move-object/from16 v0, p0

    iput-object v13, v0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 441
    return-void
.end method

.method private scanAndLock(Ljava/lang/Object;I)V
    .locals 5
    .parameter "key"
    .parameter "hash"

    .prologue
    .line 493
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v2

    .line 494
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v0, v2

    .line 495
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v3, -0x1

    .line 496
    .local v3, retries:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v4

    if-nez v4, :cond_4

    .line 498
    if-gez v3, :cond_3

    .line 499
    if-eqz v0, :cond_1

    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 500
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 504
    :cond_3
    add-int/lit8 v3, v3, 0x1

    sget v4, Ljava/util/concurrent/ConcurrentHashMap$Segment;->MAX_SCAN_RETRIES:I

    if-le v3, v4, :cond_5

    .line 505
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 514
    :cond_4
    return-void

    .line 508
    :cond_5
    and-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_0

    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v1

    .local v1, f:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eq v1, v2, :cond_0

    .line 510
    move-object v2, v1

    move-object v0, v1

    .line 511
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private scanAndLockForPut(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 6
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v2

    .line 455
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v0, v2

    .line 456
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 457
    .local v3, node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v4, -0x1

    .line 458
    .local v4, retries:I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v5

    if-nez v5, :cond_5

    .line 460
    if-gez v4, :cond_4

    .line 461
    if-nez v0, :cond_2

    .line 462
    if-nez v3, :cond_1

    .line 463
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .end local v3           #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v5, 0x0

    invoke-direct {v3, p2, p1, p3, v5}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 464
    .restart local v3       #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 466
    :cond_2
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 467
    const/4 v4, 0x0

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    goto :goto_0

    .line 471
    :cond_4
    add-int/lit8 v4, v4, 0x1

    sget v5, Ljava/util/concurrent/ConcurrentHashMap$Segment;->MAX_SCAN_RETRIES:I

    if-le v4, v5, :cond_6

    .line 472
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 481
    :cond_5
    return-object v3

    .line 475
    :cond_6
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_0

    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v1

    .local v1, f:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    if-eq v1, v2, :cond_0

    .line 477
    move-object v2, v1

    move-object v0, v1

    .line 478
    const/4 v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method final clear()V
    .locals 3

    .prologue
    .line 601
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->lock()V

    .line 603
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 604
    .local v1, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 605
    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->setEntryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_0
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 607
    const/4 v2, 0x0

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 609
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 611
    return-void

    .line 609
    .end local v0           #i:I
    .end local v1           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v2
.end method

.method final put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11
    .parameter
    .parameter "hash"
    .parameter
    .parameter "onlyIfAbsent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .prologue
    .line 334
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x0

    .line 338
    .local v5, node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    :try_start_0
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 339
    .local v8, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    and-int v3, v9, p2

    .line 340
    .local v3, index:I
    invoke-static {v8, v3}, Ljava/util/concurrent/ConcurrentHashMap;->entryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v2

    .line 341
    .local v2, first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v1, v2

    .line 342
    .local v1, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_1
    if-eqz v1, :cond_4

    .line 344
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v4, k:Ljava/lang/Object;,"TK;"
    if-eq v4, p1, :cond_0

    iget v9, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v9, p2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 346
    :cond_0
    iget-object v7, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 347
    .local v7, oldValue:Ljava/lang/Object;,"TV;"
    if-nez p4, :cond_1

    .line 348
    iput-object p3, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 349
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    .end local v4           #k:Ljava/lang/Object;,"TK;"
    .end local v5           #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v7           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_1
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 374
    return-object v7

    .line 334
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v8           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->scanAndLockForPut(Ljava/lang/Object;ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v5

    goto :goto_0

    .line 353
    .restart local v1       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v2       #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v3       #index:I
    .restart local v4       #k:Ljava/lang/Object;,"TK;"
    .restart local v5       #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v8       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_3
    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 354
    goto :goto_1

    .line 356
    .end local v4           #k:Ljava/lang/Object;,"TK;"
    :cond_4
    if-eqz v5, :cond_5

    .line 357
    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->setNext(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 360
    .end local v5           #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_3
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v0, v9, 0x1

    .line 361
    .local v0, c:I
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->threshold:I

    if-le v0, v9, :cond_6

    array-length v9, v8

    const/high16 v10, 0x4000

    if-ge v9, v10, :cond_6

    .line 362
    invoke-direct {p0, v5}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->rehash(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 365
    :goto_4
    iget v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 366
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    .line 367
    const/4 v7, 0x0

    .line 368
    .restart local v7       #oldValue:Ljava/lang/Object;,"TV;"
    goto :goto_2

    .line 359
    .end local v0           #c:I
    .end local v7           #oldValue:Ljava/lang/Object;,"TV;"
    .restart local v5       #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_5
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    invoke-direct {v6, p2, p1, p3, v2}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .end local v5           #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .local v6, node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    move-object v5, v6

    .local v5, node:Ljava/lang/Object;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    goto :goto_3

    .line 364
    .end local v5           #node:Ljava/lang/Object;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v6           #node:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v0       #c:I
    :cond_6
    invoke-static {v8, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->setEntryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 372
    .end local v0           #c:I
    .end local v1           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v2           #first:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v3           #index:I
    .end local v8           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :catchall_0
    move-exception v9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v9
.end method

.method final remove(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .parameter "key"
    .parameter "hash"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 520
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v8

    if-nez v8, :cond_0

    .line 521
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->scanAndLock(Ljava/lang/Object;I)V

    .line 522
    :cond_0
    const/4 v4, 0x0

    .line 524
    .local v4, oldValue:Ljava/lang/Object;,"TV;"
    :try_start_0
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 525
    .local v6, tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    and-int v1, v8, p2

    .line 526
    .local v1, index:I
    invoke-static {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->entryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .line 527
    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    const/4 v5, 0x0

    .line 528
    .local v5, pred:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 530
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 531
    .local v3, next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v2, k:Ljava/lang/Object;,"TK;"
    if-eq v2, p1, :cond_1

    iget v8, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v8, p2, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 533
    :cond_1
    iget-object v7, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 534
    .local v7, v:Ljava/lang/Object;,"TV;"
    if-eqz p3, :cond_2

    if-eq p3, v7, :cond_2

    invoke-virtual {p3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 535
    :cond_2
    if-nez v5, :cond_4

    .line 536
    invoke-static {v6, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->setEntryAt([Ljava/util/concurrent/ConcurrentHashMap$HashEntry;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;)V

    .line 539
    :goto_1
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    .line 540
    iget v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    move-object v4, v7

    .line 549
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v3           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v4           #oldValue:Ljava/lang/Object;,"TV;"
    .end local v7           #v:Ljava/lang/Object;,"TV;"
    :cond_3
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 551
    return-object v4

    .line 538
    .restart local v2       #k:Ljava/lang/Object;,"TK;"
    .restart local v3       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v4       #oldValue:Ljava/lang/Object;,"TV;"
    .restart local v7       #v:Ljava/lang/Object;,"TV;"
    :cond_4
    :try_start_1
    invoke-virtual {v5, v3}, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->setNext(Ljava/util/concurrent/ConcurrentHashMap$HashEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 549
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #index:I
    .end local v2           #k:Ljava/lang/Object;,"TK;"
    .end local v3           #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v5           #pred:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v6           #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v7           #v:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v8

    .line 545
    .restart local v0       #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v1       #index:I
    .restart local v2       #k:Ljava/lang/Object;,"TK;"
    .restart local v3       #next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v5       #pred:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .restart local v6       #tab:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"[Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :cond_5
    move-object v5, v0

    .line 546
    move-object v0, v3

    .line 547
    goto :goto_0
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, value:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 580
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->scanAndLock(Ljava/lang/Object;I)V

    .line 581
    :cond_0
    const/4 v2, 0x0

    .line 584
    .local v2, oldValue:Ljava/lang/Object;,"TV;"
    :try_start_0
    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 586
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v1, k:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_1

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v3, p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 588
    :cond_1
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 589
    iput-object p3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 590
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    .end local v2           #oldValue:Ljava/lang/Object;,"TV;"
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 597
    return-object v2

    .line 584
    .restart local v1       #k:Ljava/lang/Object;,"TK;"
    .restart local v2       #oldValue:Ljava/lang/Object;,"TV;"
    :cond_3
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 595
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    .end local v2           #oldValue:Ljava/lang/Object;,"TV;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v3
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .parameter "hash"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p3, oldValue:Ljava/lang/Object;,"TV;"
    .local p4, newValue:Ljava/lang/Object;,"TV;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->tryLock()Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->scanAndLock(Ljava/lang/Object;I)V

    .line 557
    :cond_0
    const/4 v2, 0x0

    .line 560
    .local v2, replaced:Z
    :try_start_0
    invoke-static {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->entryForHash(Ljava/util/concurrent/ConcurrentHashMap$Segment;I)Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    move-result-object v0

    .local v0, e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 562
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    .local v1, k:Ljava/lang/Object;,"TK;"
    if-eq v1, p1, :cond_1

    iget v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    if-ne v3, p2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 564
    :cond_1
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    iput-object p4, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    .line 566
    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/concurrent/ConcurrentHashMap$Segment;->modCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    const/4 v2, 0x1

    .line 573
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    .line 575
    return v2

    .line 560
    .restart local v1       #k:Ljava/lang/Object;,"TK;"
    :cond_3
    :try_start_1
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 573
    .end local v0           #e:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;,"Ljava/util/concurrent/ConcurrentHashMap$HashEntry<TK;TV;>;"
    .end local v1           #k:Ljava/lang/Object;,"TK;"
    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$Segment;->unlock()V

    throw v3
.end method
