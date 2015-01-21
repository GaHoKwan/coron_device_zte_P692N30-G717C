.class public Lcom/mediatek/voicecommand/mgr/ServiceDataManager;
.super Lcom/mediatek/voicecommand/mgr/VoiceDataManager;
.source "ServiceDataManager.java"

# interfaces
.implements Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;


# instance fields
.field private mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field private mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field private voiceCommon:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V
    .locals 3
    .parameter "service"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    .line 53
    new-instance v0, Lcom/mediatek/voicecommand/business/VoiceCommon;

    iget-object v1, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/voicecommand/business/VoiceCommon;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->voiceCommon:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    .line 54
    return-void
.end method


# virtual methods
.method public dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    packed-switch v1, :pswitch_data_0

    .line 65
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 62
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->voiceCommon:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 63
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 77
    .local v0, errorid:I
    if-nez v0, :cond_0

    .line 78
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 81
    :cond_0
    return v0
.end method

.method public setDownDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 88
    return-void
.end method

.method public setUpDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 94
    return-void
.end method
