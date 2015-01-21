.class public Lcom/mediatek/voicecommand/business/VoiceRecognize;
.super Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.source "VoiceRecognize.java"


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
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    .line 55
    iput-object p4, p0, Lcom/mediatek/voicecommand/business/VoiceRecognize;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    .line 57
    return-void
.end method

.method private handleRecognitionIntensity(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 122
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceRecognize;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-interface {v1}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->getNativeIntensity()I

    move-result v0

    .line 123
    .local v0, intensity:I
    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 126
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 127
    return v2
.end method

.method private handleRecognizitionStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 6
    .parameter "message"

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 103
    .local v0, errorid:I
    iget-object v3, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getVoiceRecognitionPatternFilePath()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, patternpath:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getUBMFilePath()Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, ubmpath:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 107
    :cond_0
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleRecognizitionStart error patternpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ubmpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/16 v0, 0x3ee

    .line 116
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 118
    return v0

    .line 112
    :cond_1
    iget-object v3, p0, Lcom/mediatek/voicecommand/business/VoiceRecognize;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v4, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    invoke-interface {v3, v1, v2, v4, v5}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->startVoicePWRecognition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return v0

    .line 82
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceRecognize;->handleRecognizitionStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 83
    goto :goto_0

    .line 85
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceRecognize;->handleRecognitionIntensity(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 86
    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
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

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
