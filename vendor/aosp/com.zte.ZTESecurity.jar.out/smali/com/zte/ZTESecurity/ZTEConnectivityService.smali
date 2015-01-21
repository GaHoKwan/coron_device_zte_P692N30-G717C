.class public Lcom/zte/ZTESecurity/ZTEConnectivityService;
.super Lcom/zte/security/ZTEIConnectivityManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTEConnectivityService"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIConnectivityManager;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public setMobileDataEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0, p1}, Lcom/zte/ZTESecurity/b;->g(Z)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEConnectivityService"

    const-string v2, "Exception setMobileDataEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public setMobileDataEnabledGemini(I)Z
    .locals 4

    const/4 v1, 0x0

    const-string v0, "ZTEConnectivityService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->dm:Lcom/zte/ZTESecurity/b;

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    const-string v3, "ConnectivityService"

    invoke-virtual {v0, v2, v3}, Lcom/zte/ZTESecurity/b;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/zte/ZTESecurity/ZTEConnectivityService;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v2, v0}, Lcom/zte/ZTESecurity/b;->g(Z)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEIConnectivityManager;->setMobileDataEnabledGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ZTEConnectivityService"

    const-string v2, "Exception setMobileDataEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
