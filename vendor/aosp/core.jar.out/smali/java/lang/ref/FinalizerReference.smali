.class public final Ljava/lang/ref/FinalizerReference;
.super Ljava/lang/ref/Reference;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/FinalizerReference$1;,
        Ljava/lang/ref/FinalizerReference$Sentinel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final LIST_LOCK:Ljava/lang/Object;

.field private static head:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field public static final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private next:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field private prev:Ljava/lang/ref/FinalizerReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/FinalizerReference",
            "<*>;"
        }
    .end annotation
.end field

.field private zombie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    .line 31
    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 43
    return-void
.end method

.method public static add(Ljava/lang/Object;)V
    .locals 3
    .parameter "referent"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 55
    .local v0, reference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v2, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 57
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 58
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 61
    :cond_0
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .line 62
    monitor-exit v2

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)V
    .locals 4
    .parameter "sentinel"

    .prologue
    .line 92
    sget-object v3, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 96
    :try_start_0
    sget-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    .local v0, r:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    :goto_0
    if-eqz v0, :cond_1

    .line 97
    iget-object v2, v0, Ljava/lang/ref/FinalizerReference;->referent:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 98
    move-object v1, v0

    .line 99
    .local v1, sentinelReference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    const/4 v2, 0x0

    iput-object v2, v1, Ljava/lang/ref/FinalizerReference;->referent:Ljava/lang/Object;

    .line 100
    iput-object p0, v1, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 101
    invoke-virtual {v1}, Ljava/lang/ref/FinalizerReference;->enqueueInternal()Z

    .line 102
    monitor-exit v3

    return-void

    .line 96
    .end local v1           #sentinelReference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<Ljava/lang/ref/FinalizerReference$Sentinel;>;"
    :cond_0
    iget-object v0, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    goto :goto_0

    .line 105
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "newly-created live Sentinel not on list!"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 105
    .end local v0           #r:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static finalizeAllEnqueued()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/lang/ref/FinalizerReference$Sentinel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>(Ljava/lang/ref/FinalizerReference$1;)V

    .line 87
    .local v0, sentinel:Ljava/lang/ref/FinalizerReference$Sentinel;
    invoke-static {v0}, Ljava/lang/ref/FinalizerReference;->enqueueSentinelReference(Ljava/lang/ref/FinalizerReference$Sentinel;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference$Sentinel;->awaitFinalization()V

    .line 89
    return-void
.end method

.method public static remove(Ljava/lang/ref/FinalizerReference;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/FinalizerReference",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, reference:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    sget-object v3, Ljava/lang/ref/FinalizerReference;->LIST_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 67
    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 68
    .local v0, next:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    iget-object v1, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 69
    .local v1, prev:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 70
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 71
    if-eqz v1, :cond_1

    .line 72
    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    .line 79
    :cond_0
    monitor-exit v3

    .line 80
    return-void

    .line 74
    :cond_1
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    goto :goto_0

    .line 79
    .end local v0           #next:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    .end local v1           #prev:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<*>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 50
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Ljava/lang/ref/FinalizerReference;,"Ljava/lang/ref/FinalizerReference<TT;>;"
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    return-object v0
.end method
