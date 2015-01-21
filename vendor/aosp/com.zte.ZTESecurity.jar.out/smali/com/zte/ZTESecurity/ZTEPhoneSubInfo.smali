.class public Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;
.super Lcom/zte/security/ZTEIPhoneSubInfo;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ZTEPhoneSubInfo"


# instance fields
.field private dm:Lcom/zte/ZTESecurity/b;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/zte/security/ZTEIPhoneSubInfo;-><init>(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/zte/ZTESecurity/b;->aG()Lcom/zte/ZTESecurity/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->dm:Lcom/zte/ZTESecurity/b;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEPhoneSubInfo"

    const-string v2, "Exception ZTEPhoneSubInfo getDeviceSvn"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEPhoneSubInfo"

    const-string v2, "Exception ZTEPhoneSubInfo getSubscriberIdGemini"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/zte/ZTESecurity/ZTEPhoneSubInfo;->dm:Lcom/zte/ZTESecurity/b;

    invoke-virtual {v0}, Lcom/zte/ZTESecurity/b;->aJ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/zte/security/ZTEIPhoneSubInfo;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZTEPhoneSubInfo"

    const-string v2, "Exception ZTEPhoneSubInfo getSubscriberId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v0
.end method
