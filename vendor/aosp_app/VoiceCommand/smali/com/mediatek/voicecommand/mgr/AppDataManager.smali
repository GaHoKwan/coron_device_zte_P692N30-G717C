.class public Lcom/mediatek/voicecommand/mgr/AppDataManager;
.super Lcom/mediatek/voicecommand/mgr/VoiceDataManager;
.source "AppDataManager.java"

# interfaces
.implements Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    }
.end annotation


# static fields
.field private static final SYSTEM_PROCESS:Ljava/lang/String; = "android"


# instance fields
.field final mActivityManager:Landroid/app/IActivityManager;

.field private mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

.field mListenerCollection:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeAction:[I


# direct methods
.method public constructor <init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;-><init>(Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;)V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mNativeAction:[I

    .line 72
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mActivityManager:Landroid/app/IActivityManager;

    .line 74
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/mediatek/voicecommand/mgr/AppDataManager;Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->unRegisterListenerLocked(Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V

    return-void
.end method

.method private checkActionPermission(Ljava/lang/String;II)Z
    .locals 1
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v0, v0, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->hasOperationPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private checkProcessIllegal(Ljava/lang/String;II)I
    .locals 9
    .parameter "pkgName"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 89
    iget-object v6, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v6, v6, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isAllowProcessRegister(Ljava/lang/String;)I

    move-result v1

    .line 90
    .local v1, errorid:I
    iget-object v6, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v6, v6, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, processName:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v6, "android"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    .line 94
    const/16 v1, 0x3ed

    .line 97
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v6}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 100
    .local v3, processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 102
    .local v5, runningInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v6, p2, :cond_0

    iget v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p3, :cond_0

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    const/4 v1, 0x0

    .line 116
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #processList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v5           #runningInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 117
    const-string v6, "VCmdMgrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " register fail errorid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0x3ee

    .line 112
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private checkProcessRegister(Ljava/lang/String;II)Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    .locals 2
    .parameter "pkgName"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 124
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    .line 125
    .local v0, record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mUid:I

    if-ne v1, p2, :cond_0

    iget v1, v0, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPid:I

    if-ne v1, p3, :cond_0

    .line 129
    .end local v0           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :goto_0
    return-object v0

    .restart local v0       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unRegisterListenerLocked(Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    .line 235
    const-string v1, "VCmdMgrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unRegisterListenerLocked Remove record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v1, v1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v2, p1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mNativeAction:[I

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->containOperationPermission(Ljava/lang/String;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;

    invoke-direct {v0}, Lcom/mediatek/voicecommand/mgr/VoiceMessage;-><init>()V

    .line 245
    .local v0, msg:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    iget-object v1, p1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v1, v1, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    iget-object v2, p1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->getProcessID(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    .line 247
    const/16 v1, 0x2710

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    .line 248
    const/4 v1, 0x1

    iput v1, v0, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    .line 250
    iget-object v1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v1, v0}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    .line 252
    .end local v0           #msg:Lcom/mediatek/voicecommand/mgr/VoiceMessage;
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 7
    .parameter "message"

    .prologue
    .line 260
    const/4 v1, 0x0

    .line 261
    .local v1, errorid:I
    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    monitor-enter v4

    .line 262
    :try_start_0
    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->uid:I

    iget v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->pid:I

    invoke-direct {p0, v3, v5, v6}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkProcessRegister(Ljava/lang/String;II)Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    move-result-object v2

    .line 264
    .local v2, record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    if-nez v2, :cond_0

    .line 265
    const/16 v1, 0x3ec

    .line 266
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " didn\'t register in dispatchMessageDown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    monitor-exit v4

    .line 282
    return v1

    .line 268
    :cond_0
    iget-object v3, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    iget v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    invoke-direct {p0, v3, v5, v6}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkActionPermission(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 271
    const/16 v1, 0x3ef

    .line 272
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has no permission"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {v1}, Lcom/mediatek/voicecommand/data/DataPackage;->packageErrorResult(I)Landroid/os/Bundle;

    move-result-object v0

    .line 275
    .local v0, bundle:Landroid/os/Bundle;
    iput-object v0, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    .line 276
    invoke-virtual {p0, p1}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I

    goto :goto_0

    .line 281
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 279
    .restart local v2       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    invoke-interface {v3, p1}, Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;->dispatchMessageDown(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0
.end method

.method public dispatchMessageUp(Lcom/mediatek/voicecommand/mgr/VoiceMessage;)I
    .locals 8
    .parameter "message"

    .prologue
    .line 291
    const-string v3, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchMessageUp in AppDataManager mainAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " subAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const/4 v1, 0x0

    .line 298
    .local v1, errorid:I
    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    monitor-enter v4

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    .line 301
    .local v2, record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 303
    :try_start_1
    iget-object v3, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    iget v5, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mMainAction:I

    iget v6, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mSubAction:I

    iget-object v7, p1, Lcom/mediatek/voicecommand/mgr/VoiceMessage;->mExtraData:Landroid/os/Bundle;

    invoke-interface {v3, v5, v6, v7}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->onVoiceCommandNotified(IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 318
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 320
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Landroid/os/RemoteException;
    iget-object v3, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-virtual {v2, v3}, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->deleteListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z

    .line 310
    const/16 v1, 0x3f1

    .line 311
    goto :goto_0

    .line 313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v3, "VCmdMgrService"

    const-string v5, "dispatchMessageUp in AppDataManager can\'t find the listener record"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v1, 0x3ec

    goto :goto_0

    .line 318
    .end local v2           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public registerListener(Ljava/lang/String;IILcom/mediatek/common/voicecommand/IVoiceCommandListener;)I
    .locals 7
    .parameter "pkgName"
    .parameter "uid"
    .parameter "pid"
    .parameter "listener"

    .prologue
    .line 153
    iget-object v4, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    monitor-enter v4

    .line 155
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/VoiceDataManager;->mService:Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;

    iget-object v3, v3, Lcom/mediatek/voicecommand/service/VoiceCommandManagerStub;->mConfigManager:Lcom/mediatek/voicecommand/mgr/ConfigurationManager;

    invoke-virtual {v3}, Lcom/mediatek/voicecommand/mgr/ConfigurationManager;->isCfgPrepared()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkProcessIllegal(Ljava/lang/String;II)I

    move-result v1

    .line 159
    .local v1, errorid:I
    :goto_0
    if-nez v1, :cond_4

    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkProcessRegister(Ljava/lang/String;II)Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    move-result-object v2

    .line 163
    .local v2, record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    if-nez v2, :cond_0

    .line 164
    new-instance v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    .end local v2           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    invoke-direct {v2, p0}, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;-><init>(Lcom/mediatek/voicecommand/mgr/AppDataManager;)V

    .line 165
    .restart local v2       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    iput-object p1, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPackageName:Ljava/lang/String;

    .line 166
    iput p3, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mPid:I

    .line 167
    iput p2, v2, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mUid:I

    .line 170
    :cond_0
    invoke-virtual {v2, p4}, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->addListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 171
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has registered the listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_1
    if-nez v1, :cond_1

    .line 186
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " register successfully"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    .end local v2           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->gc()V

    .line 194
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    .line 155
    .end local v1           #errorid:I
    :cond_2
    const/16 v1, 0x3ee

    goto :goto_0

    .line 176
    .restart local v1       #errorid:I
    .restart local v2       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_3
    :try_start_1
    invoke-interface {p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 177
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Landroid/os/RemoteException;
    const/16 v1, 0x3ed

    .line 181
    :try_start_2
    invoke-virtual {v2, p4}, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->deleteListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z

    .line 182
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 195
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #errorid:I
    .end local v2           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 190
    .restart local v1       #errorid:I
    :cond_4
    :try_start_3
    const-string v3, "VCmdMgrService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " register fail errorid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public setDownDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mDownDispatcher:Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;

    .line 327
    return-void
.end method

.method public setUpDispatcher(Lcom/mediatek/voicecommand/mgr/IMessageDispatcher;)V
    .locals 0
    .parameter "dispatcher"

    .prologue
    .line 334
    return-void
.end method

.method public unRegisterListener(Ljava/lang/String;IILcom/mediatek/common/voicecommand/IVoiceCommandListener;Z)I
    .locals 6
    .parameter "pkgName"
    .parameter "uid"
    .parameter "pid"
    .parameter "listener"
    .parameter "isCheckedProcess"

    .prologue
    .line 201
    if-eqz p5, :cond_1

    const/4 v0, 0x0

    .line 203
    .local v0, errorid:I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/voicecommand/mgr/AppDataManager;->mListenerCollection:Ljava/util/HashMap;

    monitor-enter v3

    .line 204
    if-nez v0, :cond_0

    .line 205
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkProcessRegister(Ljava/lang/String;II)Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;

    move-result-object v1

    .line 206
    .local v1, record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    if-eqz v1, :cond_3

    .line 207
    invoke-virtual {v1, p4}, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->deleteListener(Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, v1, Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;->mCurListener:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    if-nez v2, :cond_0

    .line 209
    invoke-direct {p0, v1}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->unRegisterListenerLocked(Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;)V

    .line 221
    .end local v1           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    .line 222
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 201
    .end local v0           #errorid:I
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/voicecommand/mgr/AppDataManager;->checkProcessIllegal(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0

    .line 212
    .restart local v0       #errorid:I
    .restart local v1       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_2
    :try_start_1
    const-string v2, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " didn\'t register the listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    .end local v1           #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 216
    .restart local v1       #record:Lcom/mediatek/voicecommand/mgr/AppDataManager$ListenerRecord;
    :cond_3
    const/16 v0, 0x3ec

    .line 217
    :try_start_2
    const-string v2, "VCmdMgrService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " didn\'t register in unRegisterListener"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
