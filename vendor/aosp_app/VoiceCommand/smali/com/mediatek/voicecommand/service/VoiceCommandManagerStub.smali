.class public final Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;
.super Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;
.source "VoiceCommandManagerStub.java"

# interfaces
.implements Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;


# static fields
.field static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "VCmdMgrService"


# instance fields
.field mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

.field public mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field public final mContext:Landroid/content/Context;

.field mNativeDataManager:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

.field mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService$Stub;-><init>()V

    .line 73
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceCommandManagerService Constructor start !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mContext:Landroid/content/Context;

    .line 77
    invoke-static {p1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 79
    new-instance v0, Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/mgr/AppDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    .line 80
    new-instance v0, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    .line 81
    new-instance v0, Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mNativeDataManager:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    .line 83
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->setDownDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V

    .line 84
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->setUpDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V

    .line 85
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mNativeDataManager:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/mgr/ServiceDataManager;->setDownDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V

    .line 86
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mNativeDataManager:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mServiceDataManager:Lcom/mediatek/voicecommand/mgr/ServiceDataManager;

    invoke-virtual {v0, v1}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->setUpDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V

    .line 89
    const-string v0, "VCmdMgrService"

    const-string v1, "VoiceCommandManagerService Constructor End !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method

.method public registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .locals 3
    .parameter "pkgName"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " register listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->registerListener(Ljava/lang/String;IILcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 144
    .local v0, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    const/16 v1, 0x2710

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 145
    const/4 v1, 0x2

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 146
    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mNativeDataManager:Lcom/mediatek/voicecommand/mgr/NativeDataManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/mgr/NativeDataManager;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 147
    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->release()V

    .line 148
    return-void
.end method

.method public sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 124
    const-string v1, "VCmdMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sendCommand "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mainAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 127
    .local v0, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iput-object p1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 128
    iput p2, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 129
    iput p3, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 130
    iput-object p4, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->uid:I

    .line 134
    iget-object v1, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v1

    return v1
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .locals 6
    .parameter "pkgName"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unregister listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mAppDataManager:Lcom/mediatek/voicecommand/mgr/AppDataManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const/4 v5, 0x0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->unRegisterListener(Ljava/lang/String;IILcom/mediatek/common/voicecommand/IVoiceCommandListener;Z)I

    move-result v0

    return v0
.end method
