.class public Lcom/zte/ZTESecurity/ZTESms;
.super Lcom/zte/security/ZTEISms;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTESms"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEISms;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTESms;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTESms;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/zte/security/ZTEISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTESms"

    const-string v2, "Exception ZTESms sendData"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTESms;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/zte/security/ZTEISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTESms"

    const-string v2, "Exception ZTESms sendMultipartText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTESms;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aL()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super/range {p0 .. p5}, Lcom/zte/security/ZTEISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTESms"

    const-string v2, "Exception ZTESms sendText"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
