.class public abstract Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.super Ljava/lang/Object;
.source "VoiceCommandBusiness.java"


# static fields
.field public static final ACTION_MAIN_VOICE_BROADCAST:I = 0x2711

.field public static final ACTION_MAIN_VOICE_SERVICE:I = 0x2710

.field public static final ACTION_VOICE_BROADCAST_HEADSETPLUGIN:I = 0x1

.field public static final ACTION_VOICE_BROADCAST_HEADSETPLUGOUT:I = 0x2

.field public static final ACTION_VOICE_SERVICE_PROCESSEXIT:I = 0x1

.field public static final ACTION_VOICE_SERVICE_SELFEXIT:I = 0x2


# instance fields
.field mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "dispatcher"
    .parameter "cfgMgr"
    .parameter "handler"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 74
    iput-object p2, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 75
    iput-object p3, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method


# virtual methods
.method public abstract handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
.end method

.method public handleDataRelease()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public abstract handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
.end method

.method protected sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V
    .locals 2
    .parameter "message"
    .parameter "errorid"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, bundle:Landroid/os/Bundle;
    if-nez p2, :cond_0

    .line 106
    invoke-static {}, Lcom/mediatek/voicecommand/data/DataPackage;->packageSuccessResult()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    :goto_0
    iput-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 113
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 114
    return-void

    .line 108
    :cond_0
    invoke-static {p2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMessageToHandler(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 88
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 89
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x3ee

    goto :goto_0
.end method
