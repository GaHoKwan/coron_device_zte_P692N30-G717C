.class public Lcom/zte/ZTESecurity/ZTEBluetoothService;
.super Lcom/zte/security/ZTEIBluetooth;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEBluetoothService"

.field private static final dn:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIBluetooth;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v0, v1, v2}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/ZTESecurity/b;->f(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v1, "com.sprint.internal.permission.DEVICEMANAGEMENT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/zte/security/ZTEIBluetooth;->disable()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "ZTEBluetoothService"

    const-string v2, "Exception disable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public enable()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/ZTESecurity/ZTEBluetoothService;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v1, v0}, Lcom/zte/ZTESecurity/b;->f(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIBluetooth;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEBluetoothService"

    const-string v2, "Exception enable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
