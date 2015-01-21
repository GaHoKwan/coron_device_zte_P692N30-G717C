.class public Lcom/mediatek/voicecommand/business/VoiceServiceInternal;
.super Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.source "VoiceServiceInternal.java"


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
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    .line 52
    iput-object p4, p0, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    .line 54
    return-void
.end method

.method private handleHeadsetPlugEvent(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 121
    iget v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-interface {v0, v1}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->setCurHeadsetMode(Z)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->setCurHeadsetMode(Z)V

    goto :goto_0
.end method

.method private handleProcessExit(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v2, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    invoke-interface {v0, v1, v2}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->stopCurMode(Ljava/lang/String;I)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :cond_0
    :goto_0
    return v0

    .line 62
    :pswitch_0
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->handleProcessExit(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)V

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->handleHeadsetPlugEvent(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleDataRelease()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-interface {v0}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->release()V

    .line 131
    return-void
.end method

.method public handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    const/16 v2, 0x2711

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    packed-switch v1, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 84
    :pswitch_0
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 85
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToHandler(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 86
    :cond_1
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;->handleDataRelease()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 93
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    :cond_2
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToHandler(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
