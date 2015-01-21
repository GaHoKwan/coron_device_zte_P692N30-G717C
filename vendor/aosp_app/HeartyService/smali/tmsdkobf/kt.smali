.class public abstract Ltmsdkobf/kt;
.super Ltmsdkobf/kl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltmsdkobf/kl;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final yK:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    .local p0, this:Ltmsdkobf/kt;,"Ltmsdkobf/kt<TT;>;"
    invoke-direct {p0}, Ltmsdkobf/kl;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Ltmsdkobf/kt;->yK:Ljava/util/concurrent/Semaphore;

    return-void
.end method


# virtual methods
.method public final a(Ltmsdkobf/km;)V
    .locals 2
    .parameter "loop"

    .prologue
    .line 68
    .local p0, this:Ltmsdkobf/kt;,"Ltmsdkobf/kt<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ltmsdkobf/kt;->a(Ltmsdkobf/km;J)V

    .line 69
    return-void
.end method

.method public final a(Ltmsdkobf/km;J)V
    .locals 3
    .parameter "loop"
    .parameter "timeOut"

    .prologue
    .line 82
    .local p0, this:Ltmsdkobf/kt;,"Ltmsdkobf/kt<TT;>;"
    invoke-interface {p1, p0}, Ltmsdkobf/km;->a(Ltmsdkobf/ko;)V

    .line 84
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 85
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/kt;->yK:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Ltmsdkobf/kt;->yK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Ltmsdkobf/kt;->cC()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ltmsdkobf/kt;->mData:Ljava/lang/Object;

    .line 91
    const-string v1, "synctask"

    invoke-static {v1, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract cC()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract cD()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, this:Ltmsdkobf/kt;,"Ltmsdkobf/kt<TT;>;"
    iget-object v0, p0, Ltmsdkobf/kt;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 34
    .local p0, this:Ltmsdkobf/kt;,"Ltmsdkobf/kt<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Ltmsdkobf/kt;->cD()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/kt;->mData:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    iget-object v0, p0, Ltmsdkobf/kt;->yK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 38
    return-void

    .line 36
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ltmsdkobf/kt;->yK:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method
