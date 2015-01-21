.class public Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;
.super Ljava/lang/Object;
.source "JNICommandAdapter.java"

# interfaces
.implements Lcom/mediatek/voicecommand/adapter/IVoiceAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    }
.end annotation


# static fields
.field private static final MODE_VOICE_UNKNOW:I = -0x1

.field private static final NATIVE_MODE_VOICE_RECOGNITION:I = 0x4

.field private static final NATIVE_MODE_VOICE_TRAINING:I = 0x2

.field private static final NATIVE_MODE_VOICE_UI:I = 0x1

.field private static final NOTIFY_VOICE_ERROR:I = -0x1

.field private static final NOTIFY_VOICE_HEADSET_PLUG:I = 0x64

.field private static final NOTIFY_VOICE_RECOGNITION:I = 0x2

.field private static final NOTIFY_VOICE_TRAINING:I = 0x1

.field private static final NOTIFY_VOICE_TRAINING_EXIST_PSWD:I = 0x5

.field private static final NOTIFY_VOICE_TRAINING_FINISHED:I = 0x0

.field private static final NOTIFY_VOICE_TRAINING_OK_CONFIDENCE:I = 0x64

.field private static final NOTIFY_VOICE_TRAINING_TIMEOUT:I = 0x6

.field private static final NOTIFY_VOICE_UI:I = 0x0

.field private static final VOICE_HEADSET_MODE:I = 0x2

.field private static final VOICE_NORMAL_MODE:I = 0x1


# instance fields
.field private final curHandler:Landroid/os/Handler;

.field private mActiveProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mCurMode:I

.field private mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

.field private mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

.field private mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

.field private mFeatureFilePath:Ljava/lang/String;

.field private mFeatureFileStream:Ljava/io/FileOutputStream;

.field private mHeadsetMode:I

.field private mNativeContext:I

.field private mPasswordFilePath:Ljava/lang/String;

.field private mPasswordFileStream:Ljava/io/FileOutputStream;

.field private mPatternFilePath:Ljava/lang/String;

.field private mPatternFileStream:Ljava/io/FileOutputStream;

.field private mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field private mVoiceUiLanguageId:I

.field private mVoiceUiModelPath:Ljava/lang/String;

.field private mVoiceUiPatternPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 178
    const-string v1, "voicerecognition_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 180
    :try_start_0
    invoke-static {}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->native_init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .local v0, ex:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 182
    .end local v0           #ex:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 183
    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 1
    .parameter "dispatcher"

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mNativeContext:I

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$1;-><init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;)V

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->curHandler:Landroid/os/Handler;

    .line 120
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    .line 123
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->native_setup(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method private final native _release()V
.end method

.method static synthetic access$000(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceError(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceUI(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceTraining(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->handleNotifyVoiceRecognition(Landroid/os/Message;)V

    return-void
.end method

.method private addActiveProcess(Ljava/lang/String;I)Z
    .locals 4
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 838
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v3, v3, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v3, v3, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    if-ne v3, p2, :cond_0

    .line 841
    const/4 v3, 0x0

    .line 870
    :goto_0
    return v3

    .line 844
    :cond_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 846
    .local v2, size:I
    const/4 v0, 0x0

    .line 848
    .local v0, activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 850
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    check-cast v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 852
    .restart local v0       #activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    iget-object v3, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 853
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 854
    iget v3, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    if-eq v3, p2, :cond_1

    .line 857
    const/4 v0, 0x0

    .line 863
    :cond_1
    if-nez v0, :cond_2

    .line 864
    new-instance v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .end local v0           #activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;-><init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Ljava/lang/String;I)V

    .line 867
    .restart local v0       #activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    :cond_2
    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 868
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 870
    const/4 v3, 0x1

    goto :goto_0

    .line 848
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private deleteActiveProcess(Ljava/lang/String;I)V
    .locals 4
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 893
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 894
    .local v2, size:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 895
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 896
    .local v0, activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    iget-object v3, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    if-ne v3, p2, :cond_0

    .line 898
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 894
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 901
    .end local v0           #activeProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    :cond_1
    return-void
.end method

.method private deleteCommandFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 4
    .parameter "pwdpath"
    .parameter "patternpath"
    .parameter "featurepath"
    .parameter "commandMask"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    array-length v2, p4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 489
    :cond_0
    const-string v2, "VCmdMgrService"

    const-string v3, "deleteFile error "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    return-void

    .line 493
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v2, 0x1

    aget v2, p4, v2

    if-ge v1, v2, :cond_1

    .line 494
    const/4 v2, 0x0

    aget v2, p4, v2

    shr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, filename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 497
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 493
    .end local v0           #filename:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private deleteFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "path"

    .prologue
    .line 471
    const/4 v2, 0x0

    .line 473
    .local v2, isDeleted:Z
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 474
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 482
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return v2

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFile error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native getVoiceIntensity()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private handleNotifyVoiceError(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x5

    .line 218
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 220
    const-string v1, "VCmdMgrService"

    const-string v2, "handleNotifyVoiceError mCurMode =  MODE_VOICE_UNKNOW"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    return-void

    .line 223
    :cond_0
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 224
    .local v0, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 225
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 253
    :cond_1
    :goto_1
    const/16 v1, 0x3ee

    invoke-static {v1}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 255
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, v0}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 227
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 229
    iput v3, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 230
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v2, v2, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceUI(Ljava/lang/String;I)I

    goto :goto_1

    .line 236
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 238
    iput v3, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 239
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    goto :goto_1

    .line 244
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 246
    const/4 v1, 0x3

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 247
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoicePWRecognition()I

    goto :goto_1

    .line 225
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNotifyVoiceRecognition(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v4, 0x4

    .line 331
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v3, :cond_0

    .line 332
    new-instance v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v1}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 333
    .local v1, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iput v4, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 334
    const/4 v3, 0x3

    iput v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 335
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v3, v3, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 337
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    .line 338
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 339
    const/4 v3, 0x1

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v3, v1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 363
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 365
    .end local v1           #message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    :cond_0
    return-void

    .line 343
    .restart local v1       #message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startVoicePWRecognition()Lcom/mediatek/voicecommand/adapter/RecognitionResult;

    move-result-object v2

    .line 344
    .local v2, result:Lcom/mediatek/voicecommand/adapter/RecognitionResult;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNotifyVoiceRecognition msgid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " voicecmdid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v3, 0x1

    iget v4, v2, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->msgid:I

    iget v5, v2, Lcom/mediatek/voicecommand/adapter/RecognitionResult;->voicecmdid:I

    invoke-static {v3, v4, v5}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 353
    .end local v2           #result:Lcom/mediatek/voicecommand/adapter/RecognitionResult;
    :catch_0
    move-exception v0

    .line 356
    .local v0, ex:Ljava/lang/Exception;
    const/16 v3, 0x3ee

    invoke-static {v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 358
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleNotifyVoiceRecognition Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleNotifyVoiceTraining(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v4, 0x64

    const/4 v3, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 293
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v2, :cond_1

    .line 294
    new-instance v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v1}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 295
    .local v1, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    const/4 v2, 0x3

    iput v2, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 296
    iput v3, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 297
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v2, v2, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v2, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 298
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 299
    iput v4, p1, Landroid/os/Message;->arg2:I

    .line 303
    invoke-direct {p0, v6}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    .line 305
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startVoiceTraining()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v6, v2, v3}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(III)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 324
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v2, v1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    invoke-direct {p0, v5}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    .line 328
    .end local v1           #message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    :cond_1
    return-void

    .line 306
    .restart local v1       #message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNotifyVoiceTraining startVoiceTraining Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_0

    .line 319
    :cond_3
    invoke-direct {p0, v5}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    goto :goto_0
.end method

.method private handleNotifyVoiceUI(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 260
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v0, :cond_0

    .line 261
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    .line 262
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v3, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    .line 263
    .local v3, processname:Ljava/lang/String;
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v4, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    .line 264
    .local v4, pid:I
    invoke-direct {p0, v3, v4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteActiveProcess(Ljava/lang/String;I)V

    .line 266
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v4, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setActiveAP(IZ)V

    .line 267
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiModelPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiPatternPath:Ljava/lang/String;

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiLanguageId:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startVoiceUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I

    .line 290
    .end local v3           #processname:Ljava/lang/String;
    .end local v4           #pid:I
    :cond_0
    :goto_1
    return-void

    .line 269
    .restart local v3       #processname:Ljava/lang/String;
    .restart local v4       #pid:I
    :catch_0
    move-exception v6

    .line 270
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "VCmdMgrService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop capture voice Error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    .end local v3           #processname:Ljava/lang/String;
    .end local v4           #pid:I
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    new-instance v7, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v7}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 277
    .local v7, message:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v0, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iput-object v0, v7, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 278
    const/4 v0, 0x2

    iput v0, v7, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 279
    const/4 v0, 0x5

    iput v0, v7, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 281
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v0, v5}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v7, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 284
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mUpDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v0, v7}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v0, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceUI(Ljava/lang/String;I)I

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .parameter "jniCommandAdapter_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 377
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;

    .line 379
    .local v0, adapter:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;
    if-nez v0, :cond_1

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 382
    :cond_1
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message from native what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arg1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " arg2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->curHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->curHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 387
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->curHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private resetFdStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 6
    .parameter "out"
    .parameter "path"

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Ljava/io/FileOutputStream;)V

    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, outs:Ljava/io/FileOutputStream;
    invoke-static {p2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->makeDirForFile(Ljava/lang/String;)Z

    .line 407
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #outs:Ljava/io/FileOutputStream;
    .local v2, outs:Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 412
    .end local v2           #outs:Ljava/io/FileOutputStream;
    .restart local v1       #outs:Ljava/io/FileOutputStream;
    :goto_0
    return-object v1

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ResetFdStream Error path =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetFdStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "pwdfile"
    .parameter "patternfile"
    .parameter "featurefile"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->resetFdStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFileStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->resetFdStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFileStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0, p3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->resetFdStream(Ljava/io/FileOutputStream;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFileStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 430
    :goto_0
    return v0

    .line 427
    :cond_1
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFilePath:Ljava/lang/String;

    .line 428
    iput-object p2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFilePath:Ljava/lang/String;

    .line 429
    iput-object p3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFilePath:Ljava/lang/String;

    .line 430
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native setCommandId(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private final native setInputMode(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native setVoiceFeatureFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native setVoicePasswordFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native setVoicePatternFile(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private native startCaptureVoice(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native startVoicePWRecognition()Lcom/mediatek/voicecommand/adapter/RecognitionResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native startVoiceTraining()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native stopCaptureVoice(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private stopFdStream(Ljava/io/FileOutputStream;)V
    .locals 1
    .parameter "outs"

    .prologue
    .line 442
    if-eqz p1, :cond_0

    .line 444
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 448
    .local v0, e:Ljava/io/IOException;
    const/4 p1, 0x0

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private stopFdStream(Z)V
    .locals 2
    .parameter "isdeletefile"

    .prologue
    const/4 v1, 0x0

    .line 455
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Ljava/io/FileOutputStream;)V

    .line 456
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Ljava/io/FileOutputStream;)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFileStream:Ljava/io/FileOutputStream;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Ljava/io/FileOutputStream;)V

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 461
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 462
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 465
    :cond_0
    iput-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFilePath:Ljava/lang/String;

    .line 466
    iput-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFilePath:Ljava/lang/String;

    .line 467
    iput-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFilePath:Ljava/lang/String;

    .line 468
    return-void
.end method

.method private stopTopProcess()V
    .locals 2

    .prologue
    .line 874
    iget v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 876
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v0, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceUI(Ljava/lang/String;I)I

    goto :goto_0

    .line 882
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoicePWRecognition()I

    goto :goto_0

    .line 885
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    goto :goto_0

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopVoicePWRecognition()I
    .locals 6

    .prologue
    const/4 v4, 0x4

    .line 686
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 688
    .local v1, errorid:I
    :goto_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 710
    .end local v1           #errorid:I
    .local v2, errorid:I
    :goto_1
    return v2

    .line 686
    .end local v2           #errorid:I
    :cond_0
    const/16 v1, 0x3ee

    goto :goto_0

    .line 691
    .restart local v1       #errorid:I
    :cond_1
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    if-eq v3, v4, :cond_2

    .line 692
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVoicePWRecognition Error because the Native in other mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v1, 0x3ef

    :goto_2
    move v2, v1

    .line 710
    .end local v1           #errorid:I
    .restart local v2       #errorid:I
    goto :goto_1

    .line 698
    .end local v2           #errorid:I
    .restart local v1       #errorid:I
    :cond_2
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 707
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    goto :goto_2

    .line 699
    :catch_0
    move-exception v0

    .line 703
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVoicePWRecognition Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private stopVoiceTraining(Z)V
    .locals 6
    .parameter "isfinished"

    .prologue
    const/4 v2, 0x0

    .line 597
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    .line 599
    .local v0, errorid:I
    :goto_0
    if-eqz v0, :cond_1

    .line 614
    :goto_1
    return-void

    .line 597
    .end local v0           #errorid:I
    :cond_0
    const/16 v0, 0x3ee

    goto :goto_0

    .line 603
    .restart local v0       #errorid:I
    :cond_1
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 611
    :goto_2
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Z)V

    .line 612
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 613
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    goto :goto_1

    .line 604
    :catch_0
    move-exception v1

    .line 607
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVoiceTraining Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method public getNativeIntensity()I
    .locals 5

    .prologue
    .line 619
    const/4 v1, 0x0

    .line 620
    .local v1, intersity:I
    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 623
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->getVoiceIntensity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 632
    :cond_1
    :goto_0
    return v1

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 628
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceTraingIntensity Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isNativePrepared()Z
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mNativeContext:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 930
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->_release()V

    .line 931
    return-void

    .line 918
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    goto :goto_0

    .line 921
    :pswitch_1
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    goto :goto_0

    .line 924
    :pswitch_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    goto :goto_0

    .line 916
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public resetVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pwdpath"
    .parameter "patternpath"
    .parameter "featurepath"
    .parameter "commandid"

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 567
    .local v0, errorid:I
    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .local v1, filename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteFile(Ljava/lang/String;)Z

    .line 580
    .end local v1           #filename:Ljava/lang/String;
    :goto_0
    return v0

    .line 574
    :cond_0
    const/16 v0, 0x3ef

    .line 575
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetVoiceTraining Error because the Native in other mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public native setActiveAP(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setActiveLanguage(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setCurHeadsetMode(Z)V
    .locals 5
    .parameter "isPlugin"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 936
    if-eqz p1, :cond_0

    .line 937
    const-string v1, "VCmdMgrService"

    const-string v2, "handleHeadSetPlugEvent in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iput v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    .line 944
    :goto_0
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 963
    :goto_1
    return-void

    .line 940
    :cond_0
    const-string v1, "VCmdMgrService"

    const-string v2, "handleHeadSetPlugEvent out"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iput v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    goto :goto_0

    .line 947
    :cond_1
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 948
    .local v0, message:Landroid/os/Message;
    iget v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    packed-switch v1, :pswitch_data_0

    .line 961
    :goto_2
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 962
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->curHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 950
    :pswitch_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 953
    :pswitch_1
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 956
    :pswitch_2
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_2

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public native setModeIFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVoicePatternFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVoicePatternPath(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVoiceUBMFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public startVoicePWRecognition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "patternpath"
    .parameter "ubmpath"
    .parameter "processname"
    .parameter "pid"

    .prologue
    const/4 v6, -0x1

    .line 638
    const-string v3, "VCmdMgrService"

    const-string v4, "startVoicePWRecognition "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    .line 641
    .local v1, errorid:I
    :goto_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 671
    .end local v1           #errorid:I
    .local v2, errorid:I
    :goto_1
    return v2

    .line 639
    .end local v2           #errorid:I
    :cond_0
    const/16 v1, 0x3ee

    goto :goto_0

    .line 645
    .restart local v1       #errorid:I
    :cond_1
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    if-eq v3, v6, :cond_2

    .line 647
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoicePWRecognition: stop current mode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopTopProcess()V

    .line 655
    :cond_2
    :try_start_0
    const-string v3, "VCmdMgrService"

    const-string v4, "startVoicePWRecognition  startCaptureVoice"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoicePatternFile(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoiceUBMFile(Ljava/lang/String;)V

    .line 659
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setInputMode(I)V

    .line 660
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startCaptureVoice(I)V

    .line 661
    const/4 v3, 0x4

    iput v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 662
    new-instance v3, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    invoke-direct {v3, p0, p3, p4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;-><init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v2, v1

    .line 671
    .end local v1           #errorid:I
    .restart local v2       #errorid:I
    goto :goto_1

    .line 663
    .end local v2           #errorid:I
    .restart local v1       #errorid:I
    :catch_0
    move-exception v0

    .line 664
    .local v0, e:Ljava/lang/Exception;
    iput v6, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 665
    const/16 v1, 0x3ee

    .line 666
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoicePWRecognition Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public startVoiceTraining(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[ILjava/lang/String;I)I
    .locals 12
    .parameter "pwdpath"
    .parameter "patternpath"
    .parameter "featurepath"
    .parameter "umbpath"
    .parameter "commandid"
    .parameter "commandMask"
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 507
    const-string v2, "VCmdMgrService"

    const-string v3, "startVoiceTraining "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    .line 510
    .local v9, errorid:I
    :goto_0
    if-eqz v9, :cond_1

    move v10, v9

    .line 559
    .end local v9           #errorid:I
    .local v10, errorid:I
    :goto_1
    return v10

    .line 508
    .end local v10           #errorid:I
    :cond_0
    const/16 v9, 0x3ee

    goto :goto_0

    .line 514
    .restart local v9       #errorid:I
    :cond_1
    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 515
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceTraining: stop current mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopTopProcess()V

    .line 521
    :cond_2
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteCommandFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 523
    .local v11, filename:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->resetFdStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPasswordFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoicePasswordFile(Ljava/io/FileDescriptor;JJ)V

    .line 527
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mPatternFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoicePatternFile(Ljava/io/FileDescriptor;JJ)V

    .line 528
    iget-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mFeatureFileStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoiceFeatureFile(Ljava/io/FileDescriptor;JJ)V

    .line 529
    invoke-virtual {p0, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoicePatternFile(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p4

    invoke-virtual {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoiceUBMFile(Ljava/lang/String;)V

    .line 531
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setCommandId(I)V

    .line 532
    iget v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setInputMode(I)V

    .line 533
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceTraining  pwdpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " patternpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " featurepath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " umbpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " commandid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startCaptureVoice(I)V

    .line 540
    const-string v2, "VCmdMgrService"

    const-string v3, "startVoiceTraining  success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_2
    new-instance v2, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    move-object/from16 v0, p7

    move/from16 v1, p8

    invoke-direct {v2, p0, v0, v1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;-><init>(Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 551
    const/4 v2, 0x3

    iput v2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    :goto_3
    move v10, v9

    .line 559
    .end local v9           #errorid:I
    .restart local v10       #errorid:I
    goto/16 :goto_1

    .line 542
    .end local v10           #errorid:I
    .restart local v9       #errorid:I
    :catch_0
    move-exception v8

    .line 544
    .local v8, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopFdStream(Z)V

    .line 545
    const/16 v9, 0x3ee

    .line 546
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceTraining Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 553
    .end local v8           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "VCmdMgrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceTraining Error because can\'t create the output stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/16 v9, 0x3ee

    goto :goto_3
.end method

.method public startVoiceUI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)I
    .locals 9
    .parameter "modelpath"
    .parameter "patternpath"
    .parameter "processname"
    .parameter "pid"
    .parameter "languageid"

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 717
    const-string v3, "VCmdMgrService"

    const-string v4, "startVoiceUI "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 720
    .local v1, errorid:I
    :goto_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 772
    .end local v1           #errorid:I
    .local v2, errorid:I
    :goto_1
    return v2

    .line 718
    .end local v2           #errorid:I
    :cond_0
    const/16 v1, 0x3ee

    goto :goto_0

    .line 724
    .restart local v1       #errorid:I
    :cond_1
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    if-eq v3, v8, :cond_4

    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    if-eq v3, v7, :cond_4

    .line 727
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoiceUI: stop current mode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopTopProcess()V

    .line 747
    :cond_2
    :goto_2
    invoke-direct {p0, p3, p4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->addActiveProcess(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 749
    iput v7, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 751
    :try_start_0
    iput-object p2, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiPatternPath:Ljava/lang/String;

    .line 752
    iput-object p1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiModelPath:Ljava/lang/String;

    .line 753
    iput p5, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiLanguageId:I

    .line 754
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mHeadsetMode:I

    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setInputMode(I)V

    .line 755
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setModeIFile(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setVoicePatternPath(Ljava/lang/String;)V

    .line 757
    const/4 v3, 0x1

    invoke-virtual {p0, p4, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setActiveAP(IZ)V

    .line 758
    add-int/lit8 v3, p5, -0x1

    shl-int v3, v6, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setActiveLanguage(I)V

    .line 759
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoiceUI  modelpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " patternpath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " languageid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p5, -0x1

    shl-int v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->startCaptureVoice(I)V

    .line 764
    const-string v3, "VCmdMgrService"

    const-string v4, "startVoiceUI  success"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_3
    move v2, v1

    .line 772
    .end local v1           #errorid:I
    .restart local v2       #errorid:I
    goto/16 :goto_1

    .line 732
    .end local v2           #errorid:I
    .restart local v1       #errorid:I
    :cond_4
    iget v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v3, :cond_2

    .line 735
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v3, v3, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setActiveAP(IZ)V

    .line 736
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V

    .line 737
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoiceUI Error when stop capture voice first"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 765
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 766
    .restart local v0       #e:Ljava/lang/Exception;
    iput v8, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 767
    const/16 v1, 0x3ee

    .line 768
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVoiceUI Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public stopCurMode(Ljava/lang/String;I)V
    .locals 1
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 821
    iget v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    packed-switch v0, :pswitch_data_0

    .line 834
    :goto_0
    return-void

    .line 823
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceUI(Ljava/lang/String;I)I

    goto :goto_0

    .line 826
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoicePWRecognition(Ljava/lang/String;I)I

    goto :goto_0

    .line 829
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Ljava/lang/String;I)I

    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public stopVoicePWRecognition(Ljava/lang/String;I)I
    .locals 1
    .parameter "processname"
    .parameter "pid"

    .prologue
    .line 676
    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v0, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurRecogProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v0, v0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    if-eq v0, p2, :cond_1

    .line 679
    :cond_0
    const/16 v0, 0x3ed

    .line 682
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoicePWRecognition()I

    move-result v0

    goto :goto_0
.end method

.method public stopVoiceTraining(Ljava/lang/String;I)I
    .locals 2
    .parameter "processname"
    .parameter "pid"

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget-object v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTrainingProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iget v1, v1, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;->mPid:I

    if-eq v1, p2, :cond_1

    .line 588
    :cond_0
    const/16 v0, 0x3ed

    .line 593
    :goto_0
    return v0

    .line 591
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopVoiceTraining(Z)V

    goto :goto_0
.end method

.method public stopVoiceUI(Ljava/lang/String;I)I
    .locals 8
    .parameter "processname"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->isNativePrepared()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    .local v1, errorid:I
    :goto_0
    if-eqz v1, :cond_1

    move v2, v1

    .line 816
    .end local v1           #errorid:I
    .local v2, errorid:I
    :goto_1
    return v2

    .line 778
    .end local v2           #errorid:I
    :cond_0
    const/16 v1, 0x3ee

    goto :goto_0

    .line 783
    .restart local v1       #errorid:I
    :cond_1
    iget v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 784
    const-string v4, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopVoiceUI Error because the Native in other mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    const/16 v1, 0x3ef

    :goto_2
    move v2, v1

    .line 816
    .end local v1           #errorid:I
    .restart local v2       #errorid:I
    goto :goto_1

    .line 789
    .end local v2           #errorid:I
    .restart local v1       #errorid:I
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->deleteActiveProcess(Ljava/lang/String;I)V

    .line 790
    iget-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 791
    .local v3, size:I
    if-lez v3, :cond_3

    .line 795
    iget-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mActiveProcessList:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    iput-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    goto :goto_2

    .line 798
    :cond_3
    iput v7, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurMode:I

    .line 799
    iput-object v6, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mCurTopActiveProcess:Lcom/mediatek/voicecommand/adapter/JNICommandAdapter$ActiveProcess;

    .line 801
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiPatternPath:Ljava/lang/String;

    .line 802
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiModelPath:Ljava/lang/String;

    .line 803
    const/4 v4, -0x1

    iput v4, p0, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->mVoiceUiLanguageId:I

    .line 804
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->setActiveAP(IZ)V

    .line 805
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/mediatek/voicecommand/adapter/JNICommandAdapter;->stopCaptureVoice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 806
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopVoiceUI Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
