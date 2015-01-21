.class public Lcom/mediatek/mms/ipmessage/SettingsManager;
.super Landroid/content/ContextWrapper;
.source "SettingsManager.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ipmessage/SettingsManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p1, p0, Lcom/mediatek/mms/ipmessage/SettingsManager;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method


# virtual methods
.method public getMessageWallpaper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, ""

    return-object v0
.end method

.method public isAudioCaptionOn()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoDownloadOn()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public isCaptionOn()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isPhotoCaptionOn()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public isSendAsSMSOn()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCaptionOn()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
