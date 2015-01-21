.class public Lcom/mediatek/voicecommand/business/VoiceCommon;
.super Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.source "VoiceCommon.java"


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "cfgMgr"
    .parameter "handler"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    .line 52
    return-void
.end method

.method private sendProcessCommandPath(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 4
    .parameter "message"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, errorid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getCommandPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 115
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v2, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 117
    return v0
.end method

.method private sendProcessKeyWord(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 4
    .parameter "message"

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, errorid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getKeyWord(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, keyword:[Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(I[Ljava/lang/String;[I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 96
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v2, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 98
    return v0
.end method

.method private sendProcessState(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 4
    .parameter "message"

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, errorid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isProcessEnable(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, isEnalbe:Z
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 134
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v2, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 136
    return v0
.end method


# virtual methods
.method public handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 1
    .parameter "message"

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :goto_0
    return v0

    .line 60
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommon;->sendProcessKeyWord(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 61
    goto :goto_0

    .line 63
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommon;->sendProcessCommandPath(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 64
    goto :goto_0

    .line 66
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommon;->sendProcessState(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 67
    goto :goto_0

    .line 58
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
