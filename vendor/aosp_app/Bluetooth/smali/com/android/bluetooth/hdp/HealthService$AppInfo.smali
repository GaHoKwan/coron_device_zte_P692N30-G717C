.class Lcom/android/bluetooth/hdp/HealthService$AppInfo;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field private mAppId:I

.field private mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

.field private mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;


# direct methods
.method private constructor <init>(Landroid/bluetooth/IBluetoothHealthCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    .line 793
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    .line 794
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/IBluetoothHealthCallback;Lcom/android/bluetooth/hdp/HealthService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;-><init>(Landroid/bluetooth/IBluetoothHealthCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 785
    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/hdp/HealthService$AppInfo;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hdp/HealthService$AppInfo;Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 785
    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    return-object v0
.end method

.method private cleanup()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 797
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    if-eqz v2, :cond_2

    .line 798
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    if-eqz v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 801
    .local v0, binder:Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    invoke-virtual {v2}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->cleanup()V

    .line 806
    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    .line 808
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    .line 814
    :cond_1
    :goto_1
    return-void

    .line 802
    .restart local v0       #binder:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 803
    .local v1, e:Ljava/util/NoSuchElementException;
    const-string v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No death recipient registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 810
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #e:Ljava/util/NoSuchElementException;
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    if-eqz v2, :cond_1

    .line 811
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    invoke-virtual {v2}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->cleanup()V

    .line 812
    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    goto :goto_1
.end method
