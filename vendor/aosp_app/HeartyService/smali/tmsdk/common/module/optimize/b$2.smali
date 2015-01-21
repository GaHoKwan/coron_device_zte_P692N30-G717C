.class Ltmsdk/common/module/optimize/b$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/optimize/b;->getAppPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qa:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic zT:Ljava/lang/Object;

.field final synthetic zU:Ltmsdk/common/module/optimize/b;


# direct methods
.method constructor <init>(Ltmsdk/common/module/optimize/b;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Ltmsdk/common/module/optimize/b$2;->zU:Ltmsdk/common/module/optimize/b;

    iput-object p2, p0, Ltmsdk/common/module/optimize/b$2;->qa:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Ltmsdk/common/module/optimize/b$2;->zT:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .parameter "pStats"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v0, p0, Ltmsdk/common/module/optimize/b$2;->qa:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 650
    iget-object v1, p0, Ltmsdk/common/module/optimize/b$2;->zT:Ljava/lang/Object;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Ltmsdk/common/module/optimize/b$2;->zT:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 652
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
