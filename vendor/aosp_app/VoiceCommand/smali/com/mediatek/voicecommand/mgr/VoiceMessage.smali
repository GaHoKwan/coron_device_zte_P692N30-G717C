.class public Lcom/mediatek/voicecommand/mgr/VoiceMessage;
.super Ljava/lang/Object;
.source "VoiceMessage.java"


# instance fields
.field public mExtraData:Landroid/os/Bundle;

.field public mMainAction:I

.field public mPkgName:Ljava/lang/String;

.field public mSubAction:I

.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copySelf(Z)Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    .locals 2
    .parameter "isNeedExtra"

    .prologue
    .line 54
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 55
    .local v0, msg:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 56
    iget v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    .line 57
    iget v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->uid:I

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->uid:I

    .line 58
    iget v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 59
    iget v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 63
    :cond_0
    return-object v0
.end method
