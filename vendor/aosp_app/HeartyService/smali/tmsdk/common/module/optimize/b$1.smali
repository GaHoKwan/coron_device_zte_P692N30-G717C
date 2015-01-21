.class Ltmsdk/common/module/optimize/b$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/optimize/b;->clearAllCacheData()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zS:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic zT:Ljava/lang/Object;

.field final synthetic zU:Ltmsdk/common/module/optimize/b;


# direct methods
.method constructor <init>(Ltmsdk/common/module/optimize/b;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 604
    iput-object p1, p0, Ltmsdk/common/module/optimize/b$1;->zU:Ltmsdk/common/module/optimize/b;

    iput-object p2, p0, Ltmsdk/common/module/optimize/b$1;->zS:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Ltmsdk/common/module/optimize/b$1;->zT:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    iget-object v0, p0, Ltmsdk/common/module/optimize/b$1;->zS:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 609
    iget-object v1, p0, Ltmsdk/common/module/optimize/b$1;->zT:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/b$1;->zT:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 611
    monitor-exit v1

    .line 612
    return-void

    .line 611
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
