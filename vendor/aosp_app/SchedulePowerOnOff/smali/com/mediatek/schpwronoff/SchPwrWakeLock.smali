.class Lcom/mediatek/schpwronoff/SchPwrWakeLock;
.super Ljava/lang/Object;
.source "SchPwrWakeLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SchPwrWakeLock"

.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 54
    const-string v1, "SchPwrWakeLock"

    const-string v2, "Acquiring screen on and cpu wake lock"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 60
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "SchPwrOnOff"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    sget-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 66
    const/4 v1, 0x1

    const-string v2, "ShutdownActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 67
    sget-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 68
    sget-object v1, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuWakeLock()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    sget-object v0, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 73
    const-string v0, "SchPwrWakeLock"

    const-string v1, "Releasing screen on wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 75
    sput-object v2, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sScreenOnWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 77
    :cond_0
    sget-object v0, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 78
    const-string v0, "SchPwrWakeLock"

    const-string v1, "Releasing cpu wake lock"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 80
    sput-object v2, Lcom/mediatek/schpwronoff/SchPwrWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 82
    :cond_1
    return-void
.end method
