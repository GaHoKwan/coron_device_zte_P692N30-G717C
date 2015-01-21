.class public Lcom/mediatek/bluetooth/BluetoothApplication;
.super Landroid/app/Application;
.source "BluetoothApplication.java"


# static fields
.field private static final ADVANCED_SERVICE_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.AdvancedService"

.field private static final DBG:Z = true

.field private static final PRXM_ENTRY_CLASS:Ljava/lang/String; = "com.mediatek.bluetooth.prx.monitor.PrxmDeviceMgmtActivity"

.field private static final TAG:Ljava/lang/String; = "BluetoothApplication"

.field private static sRefCount:I


# instance fields
.field private mReceiver:Lcom/mediatek/bluetooth/BluetoothReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    .line 50
    const-string v0, "BluetoothApplication"

    const-string v1, "Loading JNI Library"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 56
    const-class v1, Lcom/mediatek/bluetooth/BluetoothApplication;

    monitor-enter v1

    .line 57
    :try_start_0
    sget v0, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    .line 58
    const-string v0, "BluetoothApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Constructed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    monitor-exit v1

    .line 61
    return-void

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enableProfEntry(Ljava/lang/String;)V
    .locals 7
    .parameter "profileId"

    .prologue
    const/4 v4, 0x1

    .line 108
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 110
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    .line 112
    .local v1, enableFlag:I
    const-string v5, "profile_supported_prxm"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 115
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v5, "com.mediatek.bluetooth.prx.monitor.PrxmDeviceMgmtActivity"

    invoke-direct {v0, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    .local v0, compName:Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/bluetooth/ConfigHelper;->checkSupportedProfiles(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v1, v4

    .line 119
    :goto_0
    const-string v4, "BluetoothApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proximity Profile Entry enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0           #compName:Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return-void

    .line 116
    .restart local v0       #compName:Landroid/content/ComponentName;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 121
    .end local v0           #compName:Landroid/content/ComponentName;
    :catch_0
    move-exception v2

    .line 122
    .local v2, ex:Ljava/lang/IllegalArgumentException;
    const-string v4, "BluetoothApplication"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Proximity Profile Entry Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceClass"

    .prologue
    .line 131
    :try_start_0
    const-string v1, "BluetoothApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v1, Landroid/content/Intent;

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    const-string v1, "BluetoothApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start service for class["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 4

    .prologue
    .line 99
    const-class v1, Lcom/mediatek/bluetooth/BluetoothApplication;

    monitor-enter v1

    .line 100
    :try_start_0
    sget v0, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    .line 101
    const-string v0, "BluetoothApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFCOUNT: Finalized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Instance Count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/mediatek/bluetooth/BluetoothApplication;->sRefCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    monitor-exit v1

    .line 104
    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 67
    const-string v1, "BluetoothApplication.onCreate"

    invoke-static {v1}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 69
    new-instance v1, Lcom/mediatek/bluetooth/BluetoothReceiver;

    invoke-direct {v1}, Lcom/mediatek/bluetooth/BluetoothReceiver;-><init>()V

    iput-object v1, p0, Lcom/mediatek/bluetooth/BluetoothApplication;->mReceiver:Lcom/mediatek/bluetooth/BluetoothReceiver;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/mediatek/bluetooth/BluetoothApplication;->mReceiver:Lcom/mediatek/bluetooth/BluetoothReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const-string v1, "com.mediatek.bluetooth.AdvancedService"

    invoke-direct {p0, p0, v1}, Lcom/mediatek/bluetooth/BluetoothApplication;->startService(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    const-string v1, "profile_supported_prxm"

    invoke-direct {p0, v1}, Lcom/mediatek/bluetooth/BluetoothApplication;->enableProfEntry(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 91
    const-string v0, "BluetoothApplication.onTerminate"

    invoke-static {v0}, Lcom/mediatek/bluetooth/util/BtLog;->d(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mediatek/bluetooth/BluetoothApplication;->mReceiver:Lcom/mediatek/bluetooth/BluetoothReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 94
    return-void
.end method
