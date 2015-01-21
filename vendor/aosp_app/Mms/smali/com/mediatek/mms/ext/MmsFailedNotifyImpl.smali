.class public Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;
.super Landroid/content/ContextWrapper;
.source "MmsFailedNotifyImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsFailedNotify;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsFailedNotifyImpl"

.field private static sIsShowTransientFailure:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;->sIsShowTransientFailure:Z

    .line 50
    return-void
.end method


# virtual methods
.method public getFailedNotificationEnabled()Z
    .locals 3

    .prologue
    .line 57
    const-string v0, "Mms/MmsFailedNotifyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFailedNotificationEnabled() sIsShowTransientFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;->sIsShowTransientFailure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-boolean v0, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;->sIsShowTransientFailure:Z

    return v0
.end method

.method public popupToast(ILjava/lang/String;)V
    .locals 2
    .parameter "reason"
    .parameter "statusText"

    .prologue
    .line 53
    const-string v0, "Mms/MmsFailedNotifyImpl"

    const-string v1, "MmsFailedNotifyImpl.popupToast()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public setFailedNotificationEnabled(Z)V
    .locals 3
    .parameter "isShow"

    .prologue
    .line 62
    const-string v0, "Mms/MmsFailedNotifyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowFailedEnabled() sIsShowTransientFailed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/mediatek/mms/ext/MmsFailedNotifyImpl;->sIsShowTransientFailure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method
