.class public Lcom/mediatek/voicecommand/mgr/NativeDataManager;
.super Lcom/mediatek/voicecommand/mgr/VoiceDataManager;
.source "NativeDataManager.java"

# interfaces
.implements Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

.field private mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field private mVoiceRecognize:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

.field private mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

.field private mVoiceTraining:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

.field private mVoiceUI:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

.field private mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V
    .locals 5
    .parameter "service"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    .line 87
    new-instance v1, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;

    invoke-direct {v1, p0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager$1;-><init>(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v1, Lcom/mediatek/voicecommand/mgr/NativeDataManager$2;

    invoke-direct {v1, p0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager$2;-><init>(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    invoke-direct {v1, p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    .line 72
    new-instance v1, Lcom/mediatek/voicecommand/business/VoiceUI;

    iget-object v2, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/voicecommand/business/VoiceUI;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceUI:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    .line 74
    new-instance v1, Lcom/mediatek/voicecommand/business/VoiceTraining;

    iget-object v2, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/voicecommand/business/VoiceTraining;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceTraining:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    .line 76
    new-instance v1, Lcom/mediatek/voicecommand/business/VoiceRecognize;

    iget-object v2, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/voicecommand/business/VoiceRecognize;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceRecognize:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    .line 79
    new-instance v1, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;

    iget-object v2, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mjniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mediatek/voicecommand/business/VoiceServiceInternal;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;)V

    iput-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 83
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object v1, p1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceUI:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceTraining:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceRecognize:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/voicecommand/mgr/NativeDataManager;)Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    return-object v0
.end method


# virtual methods
.method public dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 120
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    sparse-switch v1, :sswitch_data_0

    .line 137
    :goto_0
    return v0

    .line 122
    :sswitch_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceUI:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 123
    goto :goto_0

    .line 125
    :sswitch_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceTraining:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 126
    goto :goto_0

    .line 128
    :sswitch_2
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceRecognize:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 129
    goto :goto_0

    .line 131
    :sswitch_3
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 132
    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x2710 -> :sswitch_3
    .end sparse-switch
.end method

.method public dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    packed-switch v1, :pswitch_data_0

    .line 152
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 146
    :pswitch_0
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 147
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v1, v1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 149
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mVoiceServiceInternal:Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;

    invoke-virtual {v1, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    .line 150
    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method

.method public setDownDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 163
    return-void
.end method

.method public setUpDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 169
    return-void
.end method
