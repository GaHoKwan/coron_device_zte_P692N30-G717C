.class Lcom/android/mms/data/CBMessage$Cache;
.super Ljava/lang/Object;
.source "CBMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/CBMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# static fields
.field private static sInstance:Lcom/android/mms/data/CBMessage$Cache;


# instance fields
.field private final mCache:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/CBMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 418
    new-instance v0, Lcom/android/mms/data/CBMessage$Cache;

    invoke-direct {v0}, Lcom/android/mms/data/CBMessage$Cache;-><init>()V

    sput-object v0, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    .line 428
    return-void
.end method

.method static dumpCache()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method static get(J)Lcom/android/mms/data/CBMessage;
    .locals 6
    .parameter "messageId"

    .prologue
    .line 435
    sget-object v3, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    monitor-enter v3

    .line 439
    :try_start_0
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->dumpCache()V

    .line 440
    sget-object v2, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v2, v2, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/CBMessage;

    .line 445
    .local v0, c:Lcom/android/mms/data/CBMessage;
    invoke-virtual {v0}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v4

    cmp-long v2, v4, p0

    if-nez v2, :cond_0

    .line 446
    monitor-exit v3

    .line 450
    .end local v0           #c:Lcom/android/mms/data/CBMessage;
    :goto_0
    return-object v0

    .line 449
    :cond_1
    monitor-exit v3

    .line 450
    const/4 v0, 0x0

    goto :goto_0

    .line 449
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getInstance()Lcom/android/mms/data/CBMessage$Cache;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    return-object v0
.end method

.method static keepOnly(Ljava/util/Set;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, messageIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v3, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    monitor-enter v3

    .line 509
    :try_start_0
    sget-object v2, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v2, v2, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 510
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/CBMessage;>;"
    const/4 v0, 0x0

    .line 511
    .local v0, c:Lcom/android/mms/data/CBMessage;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #c:Lcom/android/mms/data/CBMessage;
    check-cast v0, Lcom/android/mms/data/CBMessage;

    .line 513
    .restart local v0       #c:Lcom/android/mms/data/CBMessage;
    invoke-virtual {v0}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 514
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 517
    .end local v0           #c:Lcom/android/mms/data/CBMessage;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/CBMessage;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #c:Lcom/android/mms/data/CBMessage;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/data/CBMessage;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    return-void
.end method

.method static put(Lcom/android/mms/data/CBMessage;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 459
    sget-object v1, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    monitor-enter v1

    .line 470
    :try_start_0
    sget-object v0, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v0, v0, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache already contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    #getter for: Lcom/android/mms/data/CBMessage;->mThreadId:I
    invoke-static {p0}, Lcom/android/mms/data/CBMessage;->access$000(Lcom/android/mms/data/CBMessage;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 474
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v0, v0, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    return-void
.end method

.method static remove(J)V
    .locals 4
    .parameter "messageId"

    .prologue
    .line 483
    sget-object v2, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v2, v2, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/CBMessage;

    .line 484
    .local v0, c:Lcom/android/mms/data/CBMessage;
    invoke-virtual {v0}, Lcom/android/mms/data/CBMessage;->getMessageId()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_0

    .line 485
    sget-object v2, Lcom/android/mms/data/CBMessage$Cache;->sInstance:Lcom/android/mms/data/CBMessage$Cache;

    iget-object v2, v2, Lcom/android/mms/data/CBMessage$Cache;->mCache:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 489
    .end local v0           #c:Lcom/android/mms/data/CBMessage;
    :cond_1
    return-void
.end method
