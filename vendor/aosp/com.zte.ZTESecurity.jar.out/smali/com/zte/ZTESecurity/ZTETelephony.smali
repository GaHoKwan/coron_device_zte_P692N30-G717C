.class public Lcom/zte/ZTESecurity/ZTETelephony;
.super Lcom/zte/security/ZTEITelephony;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTETelephony"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEITelephony;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aH()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/zte/security/ZTEITelephony;->call(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTETelephony"

    const-string v2, "Exception dial"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public disableLocationUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->disableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTETelephony"

    const-string v2, "Exception disableLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->enableLocationUpdates()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTETelephony"

    const-string v2, "Exception enableLocationUpdates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->getCellLocation()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTETelephony"

    const-string v2, "Exception getCellLocation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTETelephony;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aI()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEITelephony;->getNeighboringCellInfo()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTETelephony"

    const-string v2, "Exception getNeighboringCellInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
