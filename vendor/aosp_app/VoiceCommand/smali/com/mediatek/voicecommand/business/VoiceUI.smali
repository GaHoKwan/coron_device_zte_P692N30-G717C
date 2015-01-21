.class public Lcom/mediatek/voicecommand/business/VoiceUI;
.super Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.source "VoiceUI.java"


# instance fields
.field private mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "cfgMgr"
    .parameter "handler"
    .parameter "adapter"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    .line 54
    iput-object p4, p0, Lcom/mediatek/voicecommand/business/VoiceUI;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    .line 56
    return-void
.end method

.method private handleUiEnable(Lcom/mediatek/voicecommand/mgr/VoiceMessage;Z)I
    .locals 4
    .parameter "message"
    .parameter "isEnable"

    .prologue
    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, errorid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isProcessEnable(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 142
    .local v1, isCurEnable:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    and-int/2addr v2, p2

    if-nez v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3, p2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->updateFeatureEnable(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 146
    :goto_0
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 151
    :cond_0
    if-eqz p2, :cond_2

    .line 152
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 157
    :goto_1
    return v0

    .line 143
    :cond_1
    const/16 v0, 0x3ed

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiStop(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_1
.end method

.method private handleUiStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 8
    .parameter "message"

    .prologue
    .line 102
    const/4 v6, 0x0

    .line 104
    .local v6, errorid:I
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isProcessEnable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getModelFile()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, modelpath:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getVoiceUIPatternPath()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, patternpath:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getCurrentLanguageID()I

    move-result v5

    .line 108
    .local v5, languageid:I
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-gez v5, :cond_1

    .line 109
    :cond_0
    const-string v0, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUiStart error modelpath="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " languageid="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/16 v6, 0x3ee

    .line 121
    .end local v1           #modelpath:Ljava/lang/String;
    .end local v2           #patternpath:Ljava/lang/String;
    .end local v5           #languageid:I
    :goto_0
    invoke-virtual {p0, p1, v6}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 122
    return v6

    .line 114
    .restart local v1       #modelpath:Ljava/lang/String;
    .restart local v2       #patternpath:Ljava/lang/String;
    .restart local v5       #languageid:I
    :cond_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessID(Ljava/lang/String;)I

    move-result v4

    .line 115
    .local v4, pid:I
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceUI;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->startVoiceUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v6

    goto :goto_0

    .line 119
    .end local v1           #modelpath:Ljava/lang/String;
    .end local v2           #patternpath:Ljava/lang/String;
    .end local v4           #pid:I
    .end local v5           #languageid:I
    :cond_2
    const/16 v6, 0x3e9

    goto :goto_0
.end method

.method private handleUiStop(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 4
    .parameter "message"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 128
    .local v0, errorid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isProcessEnable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessID(Ljava/lang/String;)I

    move-result v1

    .line 130
    .local v1, pid:I
    iget-object v2, p0, Lcom/mediatek/voicecommand/business/VoiceUI;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->stopVoiceUI(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .end local v1           #pid:I
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 136
    return v0

    .line 132
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method


# virtual methods
.method public handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 93
    const/16 v0, 0x3ef

    .line 97
    :goto_0
    return v0

    .line 81
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 82
    goto :goto_0

    .line 84
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiStop(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 85
    goto :goto_0

    .line 87
    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiEnable(Lcom/mediatek/voicecommand/mgr/VoiceMessage;Z)I

    goto :goto_0

    .line 90
    :pswitch_3
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/voicecommand/business/VoiceUI;->handleUiEnable(Lcom/mediatek/voicecommand/mgr/VoiceMessage;Z)I

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 72
    :goto_0
    return v0

    .line 67
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToHandler(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 68
    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
