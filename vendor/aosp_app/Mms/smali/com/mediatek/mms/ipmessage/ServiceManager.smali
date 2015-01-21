.class public Lcom/mediatek/mms/ipmessage/ServiceManager;
.super Landroid/content/ContextWrapper;
.source "ServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "imsp/ServiceManager"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/ServiceManager;->mContext:Landroid/content/Context;

    .line 53
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/ServiceManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method


# virtual methods
.method public disableIpService()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public disableIpService(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 106
    return-void
.end method

.method public enableIpService()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public enableIpService(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 98
    return-void
.end method

.method public getActivationStatus()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getActivationStatus(I)I
    .locals 1
    .parameter "simId"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getIpMessageServiceId()I
    .locals 2

    .prologue
    .line 57
    const-string v0, "imsp/ServiceManager"

    const-string v1, "getIpMessageServiceId"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isActivated(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "simId"

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .parameter "featureId"

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public serviceIsReady()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public startIpService()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method
