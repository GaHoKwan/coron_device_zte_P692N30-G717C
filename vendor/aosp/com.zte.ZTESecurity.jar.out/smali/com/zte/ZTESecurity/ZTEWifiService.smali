.class public Lcom/zte/ZTESecurity/ZTEWifiService;
.super Lcom/zte/security/ZTEIWifiManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEWifiService"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIWifiManager;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public setWifiEnabled(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEWifiService;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0, p1}, Lcom/zte/ZTESecurity/b;->e(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEWifiService"

    const-string v2, "Exception setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
