.class Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;
.super Ljava/lang/Object;
.source "YgpsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ygps/YgpsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "YgpsWakeLock"
.end annotation


# instance fields
.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/mediatek/ygps/YgpsActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2437
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->this$0:Lcom/mediatek/ygps/YgpsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2438
    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2439
    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2448
    const-string v1, "YGPS/Activity"

    const-string v2, "Acquiring cpu wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2449
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 2460
    :goto_0
    return-void

    .line 2453
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2456
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x10000001

    const-string v2, "YGPS/Activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2459
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method acquireScreenWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 2469
    const-string v1, "YGPS/Activity"

    const-string v2, "Acquiring screen wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 2481
    :goto_0
    return-void

    .line 2474
    :cond_0
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 2477
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x1000001a

    const-string v2, "YGPS/Activity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2480
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method releaseCpuWakeLock()V
    .locals 2

    .prologue
    .line 2496
    const-string v0, "YGPS/Activity"

    const-string v1, "Releasing cpu wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2497
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2498
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2501
    :cond_0
    return-void
.end method

.method releaseScreenWakeLock()V
    .locals 2

    .prologue
    .line 2487
    const-string v0, "YGPS/Activity"

    const-string v1, "Releasing wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2493
    :cond_0
    return-void
.end method
