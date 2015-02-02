.class Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;
.super Ljava/lang/Object;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WakeLock"
.end annotation


# instance fields
.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 853
    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 854
    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method acquire(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->acquireScreenWakeLock(Landroid/content/Context;)V

    .line 907
    return-void
.end method

.method acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 863
    const-string v1, "EM/CpuStressTestService"

    const-string v2, "Acquiring cpu wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 871
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x10000001

    const-string v2, "EM/CpuStressTestService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 874
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 884
    const-string v1, "EM/CpuStressTestService"

    const-string v2, "Acquiring screen wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 896
    :goto_0
    return-void

    .line 889
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 892
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v2, "EM/CpuStressTestService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 895
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 916
    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 920
    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 922
    :cond_1
    return-void
.end method
