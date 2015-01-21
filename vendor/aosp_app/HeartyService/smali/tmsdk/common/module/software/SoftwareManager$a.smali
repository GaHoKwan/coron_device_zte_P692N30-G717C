.class Ltmsdk/common/module/software/SoftwareManager$a;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/software/SoftwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field Bh:Z

.field Bi:Landroid/content/pm/PackageStats;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltmsdk/common/module/software/SoftwareManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 534
    invoke-direct {p0}, Ltmsdk/common/module/software/SoftwareManager$a;-><init>()V

    return-void
.end method


# virtual methods
.method public fR()Landroid/content/pm/PackageStats;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Ltmsdk/common/module/software/SoftwareManager$a;->Bi:Landroid/content/pm/PackageStats;

    return-object v0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 1
    .parameter "stats"
    .parameter "succeeded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    monitor-enter p0

    .line 547
    if-eqz p2, :cond_0

    .line 548
    :try_start_0
    iput-object p1, p0, Ltmsdk/common/module/software/SoftwareManager$a;->Bi:Landroid/content/pm/PackageStats;

    .line 550
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/common/module/software/SoftwareManager$a;->Bh:Z

    .line 551
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 552
    monitor-exit p0

    .line 553
    return-void

    .line 552
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
