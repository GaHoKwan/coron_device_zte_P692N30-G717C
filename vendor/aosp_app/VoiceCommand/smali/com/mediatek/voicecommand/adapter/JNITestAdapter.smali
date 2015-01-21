.class public Lcom/mediatek/voicecommand/adapter/JNITestAdapter;
.super Ljava/lang/Object;
.source "JNITestAdapter.java"

# interfaces
.implements Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;


# instance fields
.field private final MODE_VOICE_UNKNOW:I

.field private final curHandler:Landroid/os/Handler;

.field private final mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

.field private mCurMode:I

.field private final mDelaytime:I

.field private mRecognitionCommandid:I

.field private final mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;Lcom/mediatek/voicecommand/mgr/ConfigurationManager;)V
    .locals 2
    .parameter "dispatcher"
    .parameter "cfgmgr"

    .prologue
    const/4 v1, -0x1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->MODE_VOICE_UNKNOW:I

    .line 21
    const/16 v0, 0x1388

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mDelaytime:I

    .line 27
    new-instance v0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/adapter/JNITestAdapter$1;-><init>(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mRecognitionCommandid:I

    .line 55
    iput v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 56
    iput-object p2, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    .line 57
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->sendVoiceTrainingCommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/voicecommand/adapter/JNITestAdapter;ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->sendVoiceUICommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V

    return-void
.end method

.method private sendVoiceTrainingCommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    .locals 7
    .parameter "curnumber"
    .parameter "processinfo"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 84
    new-instance v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v2}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 85
    .local v2, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget-object v3, p2, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mProcessName:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 86
    iput v5, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 87
    iput v6, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, commandid:I
    if-ge p1, v6, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 92
    add-int/lit8 p1, p1, 0x1

    .line 95
    :cond_0
    mul-int/lit8 v3, p1, 0x14

    invoke-static {v4, v0, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 99
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v3, v2}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 100
    if-ne v0, v4, :cond_1

    .line 101
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v5, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 104
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 106
    .end local v1           #m:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private sendVoiceUICommand(ILcom/mediatek/voicecommand/cfg/VoiceProcessInfo;)V
    .locals 6
    .parameter "curnumber"
    .parameter "processinfo"

    .prologue
    const/4 v5, 0x2

    .line 61
    iget-object v3, p2, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mCommandIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v3, p2, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mCommandIDList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 66
    .local v0, commandid:I
    new-instance v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v2}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 67
    .local v2, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget-object v3, p2, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mProcessName:Ljava/lang/String;

    iput-object v3, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 68
    iput v5, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 69
    const/4 v3, 0x5

    iput v3, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 71
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 74
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v3, v2}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 75
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    add-int/lit8 p1, p1, 0x1

    const/4 v4, 0x0

    invoke-virtual {v3, v5, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 78
    .local v1, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public getNativeIntensity()I
    .locals 3

    .prologue
    .line 142
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    return v0
.end method

.method public isNativePrepared()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method public resetVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "pwdpath"
    .parameter "patternpath"
    .parameter "featurepath"
    .parameter "commandid"

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public setCurHeadsetMode(Z)V
    .locals 0
    .parameter "isPlugin"

    .prologue
    .line 220
    return-void
.end method

.method public startVoicePWRecognition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "patternpath"
    .parameter "ubmpath"
    .parameter "processname"
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .line 157
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 158
    .local v0, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iput-object p3, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 159
    const/4 v1, 0x2

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 160
    const/4 v1, 0x5

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 161
    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mRecognitionCommandid:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mRecognitionCommandid:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 164
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mRecognitionCommandid:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 165
    iput v4, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mRecognitionCommandid:I

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, v0}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 168
    return v4
.end method

.method public startVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/String;I)I
    .locals 6
    .parameter "pwdpath"
    .parameter "patternpath"
    .parameter "featurepath"
    .parameter "umbpath"
    .parameter "commandid"
    .parameter "commandMask"
    .parameter "processname"
    .parameter "pid"

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 176
    iput v4, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 177
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v3, p7}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessInfo(Ljava/lang/String;)Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    move-result-object v1

    .line 179
    .local v1, processinfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v1, :cond_0

    .line 180
    const/16 v2, 0x3ed

    .line 187
    :goto_0
    return v2

    .line 182
    :cond_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public startVoiceUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 7
    .parameter "modelpath"
    .parameter "patternpath"
    .parameter "processname"
    .parameter "pid"
    .parameter "languageid"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    .line 111
    iput v5, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 112
    iget-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCfgMgr:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v4, p3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessInfo(Ljava/lang/String;)Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    move-result-object v2

    .line 114
    .local v2, processinfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    if-nez v2, :cond_0

    .line 115
    const/16 v3, 0x3ed

    .line 124
    :goto_0
    return v3

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, index:I
    iget-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v0, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 123
    .local v1, m:Landroid/os/Message;
    iget-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->curHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public stopCurMode(Ljava/lang/String;I)V
    .locals 0
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 137
    return-void
.end method

.method public stopVoicePWRecognition(Ljava/lang/String;I)I
    .locals 1
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 199
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public stopVoiceTraining(Ljava/lang/String;I)I
    .locals 1
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 205
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public stopVoiceUI(Ljava/lang/String;I)I
    .locals 1
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNITestAdapter;->mCurMode:I

    .line 130
    const/4 v0, 0x0

    return v0
.end method
