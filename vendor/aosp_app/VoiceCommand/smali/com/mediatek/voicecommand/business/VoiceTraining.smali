.class public Lcom/mediatek/voicecommand/business/VoiceTraining;
.super Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;
.source "VoiceTraining.java"


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
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;-><init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;Landroid/os/Handler;)V

    .line 58
    iput-object p4, p0, Lcom/mediatek/voicecommand/business/VoiceTraining;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    .line 60
    return-void
.end method

.method private getPasswordFilePath(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 8
    .parameter "message"

    .prologue
    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, errorid:I
    const/4 v0, 0x0

    .line 169
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    if-nez v6, :cond_0

    .line 170
    const/16 v2, 0x3f0

    .line 171
    invoke-static {v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v0

    .line 193
    :goto_0
    iput-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 194
    iget-object v6, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v6, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 196
    return v2

    .line 173
    :cond_0
    iget-object v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    const-string v7, "Send_Info"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, commandid:I
    iget-object v6, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v6}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getPasswordFilePath()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, passwordpath:Ljava/lang/String;
    if-ltz v1, :cond_1

    if-nez v4, :cond_2

    .line 178
    :cond_1
    const/16 v2, 0x3f0

    .line 179
    invoke-static {v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, path:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 188
    :cond_3
    const/16 v2, 0x3f0

    .line 189
    invoke-static {v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private handleTrainingIntensity(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    .line 158
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceTraining;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-interface {v1}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->getNativeIntensity()I

    move-result v0

    .line 159
    .local v0, intensity:I
    const/4 v1, 0x1

    invoke-static {v1, v0, v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 162
    iget-object v1, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 163
    return v2
.end method

.method private handleTrainingReset(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 8
    .parameter "message"

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, errorid:I
    iget-object v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    if-nez v5, :cond_0

    .line 203
    const/16 v1, 0x3f0

    .line 229
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 231
    return v1

    .line 205
    :cond_0
    iget-object v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    const-string v6, "Send_Info"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 208
    .local v0, commandid:I
    if-gez v0, :cond_1

    .line 209
    const/16 v1, 0x3f0

    goto :goto_0

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v5}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getPasswordFilePath()Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, pwdpath:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v5}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getVoiceRecognitionPatternFilePath()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, patternpath:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v5}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getFeatureFilePath()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, featurepath:Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    if-nez v2, :cond_3

    .line 218
    :cond_2
    const-string v5, "VCmdMgrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleTrainingReset error pwdpath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " patternpath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " featurepath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v1, 0x3ee

    goto :goto_0

    .line 224
    :cond_3
    iget-object v5, p0, Lcom/mediatek/voicecommand/business/VoiceTraining;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    invoke-interface {v5, v4, v3, v2, v0}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->resetVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private handleTrainingStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 10
    .parameter "message"

    .prologue
    .line 108
    const/4 v9, 0x0

    .line 110
    .local v9, errorid:I
    iget-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 111
    const/16 v9, 0x3f0

    .line 141
    :goto_0
    invoke-virtual {p0, p1, v9}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToApps(Lcom/mediatek/voicecommand/mgr/VoiceMessage;I)V

    .line 143
    return v9

    .line 113
    :cond_0
    iget-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    const-string v7, "Send_Info"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 115
    .local v5, commandid:I
    iget-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    const-string v7, "Send_Info1"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v6

    .line 117
    .local v6, commandMask:[I
    if-gez v5, :cond_1

    .line 118
    const/16 v9, 0x3f0

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getPasswordFilePath()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, pwdpath:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getVoiceRecognitionPatternFilePath()Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, patternpath:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getFeatureFilePath()Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, featurepath:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getUBMFilePath()Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, umbpath:Ljava/lang/String;
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 128
    :cond_2
    const-string v0, "VCmdMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTrainingStart error pwdpath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " patternpath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " featurepath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " umbpath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/16 v9, 0x3ee

    goto :goto_0

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceTraining;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v7, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v8, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    invoke-interface/range {v0 .. v8}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->startVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/String;I)I

    move-result v9

    goto :goto_0
.end method

.method private handleTrainingStop(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 3
    .parameter "message"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceTraining;->mJniAdapter:Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;

    iget-object v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v2, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    invoke-interface {v0, v1, v2}, Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;->stopVoiceTraining(Ljava/lang/String;I)I

    .line 149
    invoke-static {}, Lcom/mediatek/voicecommand/data/DataPackage;->packageSuccessResult()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 151
    iget-object v0, p0, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->mDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v0, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 153
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public handleAsyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 104
    :goto_0
    :pswitch_0
    return v0

    .line 90
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceTraining;->handleTrainingStart(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 93
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceTraining;->handleTrainingIntensity(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 96
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceTraining;->handleTrainingStop(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 99
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceTraining;->handleTrainingReset(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public handleSyncVoiceMessage(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 2
    .parameter "message"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, errorid:I
    iget v1, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    packed-switch v1, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return v0

    .line 71
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceCommandBusiness;->sendMessageToHandler(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 74
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/business/VoiceTraining;->getPasswordFilePath(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
