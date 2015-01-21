.class public Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;
.super Landroid/app/Service;
.source "EMWakeLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;
    }
.end annotation


# static fields
.field private static final ID_FORE_GROUND_NOTIF:I = 0xb

.field private static final TAG:Ljava/lang/String; = "EMWakeLockService"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService$LocalBinder;-><init>(Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mBinder:Landroid/os/IBinder;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 26
    return-void
.end method

.method private buildNotification(Ljava/lang/Class;)Landroid/app/Notification;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v5, 0x0

    .line 82
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "No Sleep Mode is Enabled"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const-string v4, "Click Here to Switch No Sleep Mode"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 86
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 88
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public acquire(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 70
    const/16 v0, 0xb

    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->buildNotification(Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 72
    :cond_0
    return-void
.end method

.method public acquire(Ljava/lang/Class;J)V
    .locals 2
    .parameter
    .parameter "milliSec"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, targetClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/app/Activity;>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 77
    const/16 v0, 0xb

    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->buildNotification(Ljava/lang/Class;)Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 79
    :cond_0
    return-void
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 35
    const-string v0, "EMWakeLockService"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "EMWakeLockService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 43
    const-string v0, "EMWakeLockService"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 48
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/nonsleep/EMWakeLockService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 65
    :cond_0
    return-void
.end method
