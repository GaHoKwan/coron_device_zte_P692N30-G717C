.class Ltmsdk/common/module/powersaving/BlueToothHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;
    }
.end annotation


# static fields
.field private static AL:Ltmsdk/common/module/powersaving/BlueToothHelper;


# instance fields
.field private AH:Landroid/bluetooth/BluetoothAdapter;

.field private AI:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private AJ:Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;

.field AK:Z

.field private AM:Landroid/content/BroadcastReceiver;

.field private Tag:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private zp:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "BlueToothHelper"

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->Tag:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AK:Z

    .line 94
    new-instance v0, Ltmsdk/common/module/powersaving/BlueToothHelper$1;

    invoke-direct {v0, p0}, Ltmsdk/common/module/powersaving/BlueToothHelper$1;-><init>(Ltmsdk/common/module/powersaving/BlueToothHelper;)V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AM:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mContext:Landroid/content/Context;

    .line 52
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AH:Landroid/bluetooth/BluetoothAdapter;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AI:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method static synthetic a(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AI:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic c(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AJ:Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;

    return-object v0
.end method

.method static synthetic d(Ltmsdk/common/module/powersaving/BlueToothHelper;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Ltmsdk/common/module/powersaving/BlueToothHelper;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static declared-synchronized q(Landroid/content/Context;)Ltmsdk/common/module/powersaving/BlueToothHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    const-class v1, Ltmsdk/common/module/powersaving/BlueToothHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AL:Ltmsdk/common/module/powersaving/BlueToothHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ltmsdk/common/module/powersaving/BlueToothHelper;

    invoke-direct {v0, p0}, Ltmsdk/common/module/powersaving/BlueToothHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AL:Ltmsdk/common/module/powersaving/BlueToothHelper;

    .line 47
    :cond_0
    sget-object v0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AL:Ltmsdk/common/module/powersaving/BlueToothHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;)I
    .locals 3
    .parameter "observer"

    .prologue
    .line 71
    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AH:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AH:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x1

    .line 91
    :goto_0
    return v1

    .line 73
    :cond_1
    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AH:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const/4 v1, 0x2

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 80
    .local v0, intent:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AM:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AH:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 90
    iput-object p1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->AJ:Ltmsdk/common/module/powersaving/BlueToothHelper$BlueToothObserver;

    .line 91
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public a(Ltmsdk/common/module/powersaving/PowerSavingConfig;)V
    .locals 4
    .parameter "config"

    .prologue
    .line 123
    iget-boolean v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->zp:Z

    if-eqz v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    .line 127
    new-instance v0, Ltmsdk/common/module/powersaving/BlueToothHelper$2;

    invoke-direct {v0, p0, p1}, Ltmsdk/common/module/powersaving/BlueToothHelper$2;-><init>(Ltmsdk/common/module/powersaving/BlueToothHelper;Ltmsdk/common/module/powersaving/PowerSavingConfig;)V

    iput-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    .line 175
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->zp:Z

    goto :goto_0
.end method

.method public fN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 183
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 186
    :cond_0
    iput-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mHandler:Landroid/os/Handler;

    .line 187
    iput-object v2, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->mRunnable:Ljava/lang/Runnable;

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltmsdk/common/module/powersaving/BlueToothHelper;->zp:Z

    .line 189
    return-void
.end method
