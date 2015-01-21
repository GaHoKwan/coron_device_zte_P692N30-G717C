.class public Lcom/mediatek/voicecommand/service/VoiceCommandManagerService;
.super Landroid/app/Service;
.source "VoiceCommandManagerService.java"


# instance fields
.field private mServiceStub:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 23
    const-string v0, "VCmdMgrService"

    const-string v1, "VoiceCommandNativeService onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerService;->mServiceStub:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 15
    const-string v0, "VCmdMgrService"

    const-string v1, "VoiceCommandNativeService onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    new-instance v0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerService;->mServiceStub:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    .line 17
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 30
    const-string v0, "VCmdMgrService"

    const-string v1, "VoiceCommandNativeService onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerService;->mServiceStub:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->release()V

    .line 32
    return-void
.end method
