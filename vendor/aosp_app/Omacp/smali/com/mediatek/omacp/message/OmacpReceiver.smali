.class public Lcom/mediatek/omacp/message/OmacpReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OmacpReceiver.java"


# static fields
.field private static final DEBUG:Z = true

.field static final STARTINGSERVICESYNC:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpReceiver"

.field private static sInstance:Lcom/mediatek/omacp/message/OmacpReceiver;

.field static sStartingService:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->STARTINGSERVICESYNC:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 89
    sget-object v2, Lcom/mediatek/omacp/message/OmacpReceiver;->STARTINGSERVICESYNC:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    sget-object v1, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 91
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 92
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    .line 94
    sget-object v1, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 96
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 97
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 98
    monitor-exit v2

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 106
    sget-object v1, Lcom/mediatek/omacp/message/OmacpReceiver;->STARTINGSERVICESYNC:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->sStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 112
    :cond_0
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/mediatek/omacp/message/OmacpReceiver;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->sInstance:Lcom/mediatek/omacp/message/OmacpReceiver;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/mediatek/omacp/message/OmacpReceiver;

    invoke-direct {v0}, Lcom/mediatek/omacp/message/OmacpReceiver;-><init>()V

    sput-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->sInstance:Lcom/mediatek/omacp/message/OmacpReceiver;

    .line 64
    :cond_0
    sget-object v0, Lcom/mediatek/omacp/message/OmacpReceiver;->sInstance:Lcom/mediatek/omacp/message/OmacpReceiver;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 70
    const-string v0, "Omacp/OmacpReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OmacpReceiver onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-class v0, Lcom/mediatek/omacp/message/OmacpReceiverService;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 74
    const-string v0, "result"

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    invoke-static {p1, p2}, Lcom/mediatek/omacp/message/OmacpReceiver;->beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V

    .line 76
    return-void
.end method
