.class public final Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;
.super Ltmsdk/bg/module/aresengine/PhoneDeviceController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;
    }
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private up:Ltmsdkobf/kj;

.field private uq:Z

.field private ur:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ltmsdk/bg/module/aresengine/PhoneDeviceController;-><init>()V

    .line 33
    iput-boolean v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->uq:Z

    .line 36
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->ur:Z

    .line 42
    invoke-static {}, Ltmsdkobf/kj;->fh()Ltmsdkobf/kj;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->up:Ltmsdkobf/kj;

    .line 43
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    return-void
.end method

.method static synthetic a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->uq:Z

    return p1
.end method


# virtual methods
.method public varargs blockSms([Ljava/lang/Object;)V
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x1

    .line 156
    if-eqz p1, :cond_0

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 157
    aget-object v0, p1, v3

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 158
    .local v0, receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 160
    .end local v0           #receiver:Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public cancelMissCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportCancelMissCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v2

    invoke-interface {v2}, Ltmsdkobf/ln;->cancelMissCall()V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-boolean v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->ur:Z

    if-eqz v2, :cond_3

    .line 102
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getDefaultTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 104
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_2

    .line 105
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "DefaultPhoneDeviceController"

    const-string v3, "ITelephony#cancelMissedCallsNotification"

    invoke-static {v2, v3, v0}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 113
    const-string v2, "DefaultPhoneDeviceController"

    const-string v3, "Try to use the deprecated way"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->up:Ltmsdkobf/kj;

    invoke-virtual {v2}, Ltmsdkobf/kj;->cancelMissedCallsNotification()V

    goto :goto_0

    .line 107
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v2, "DefaultPhoneDeviceController"

    const-string v3, "Failed to get ITelephony!"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    const-string v2, "DefaultPhoneDeviceController"

    const-string v3, "Try to use the deprecated way"

    invoke-static {v2, v3}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->up:Ltmsdkobf/kj;

    invoke-virtual {v2}, Ltmsdkobf/kj;->cancelMissedCallsNotification()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 117
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_3
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isRootGot()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_0

    .line 119
    :cond_4
    invoke-static {}, Ltmsdk/common/utils/SDKUtil;->getSDKVersion()I

    move-result v2

    const/16 v3, 0x11

    if-lt v2, v3, :cond_5

    .line 120
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "service call notification 1 s16 com.android.phone i32 -1"

    aput-object v3, v2, v4

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_5
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "service call notification 3 s16 com.android.phone"

    aput-object v3, v2, v4

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public disableRingVibration(I)V
    .locals 5
    .parameter "seconds"

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-boolean v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->uq:Z

    if-eqz v2, :cond_0

    .line 151
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->uq:Z

    .line 133
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 134
    .local v0, old_ring_mode:I
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v1

    .line 137
    .local v1, old_vibrate_mode:I
    if-eqz v0, :cond_1

    .line 138
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 143
    :goto_1
    if-eqz v1, :cond_2

    .line 144
    iget-object v2, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v3, v3}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 149
    :goto_2
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v2

    new-instance v3, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;

    invoke-direct {v3, p0, v0, v1, p1}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$a;-><init>(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;III)V

    const-string v4, "disableRingVibrationThread"

    invoke-virtual {v2, v3, v4}, Ltmsdkobf/ij;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    .line 146
    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public hangup()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->disableRingVibration(I)V

    .line 50
    iget-object v0, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->up:Ltmsdkobf/kj;

    invoke-virtual {v0}, Ltmsdkobf/kj;->endCall()Z

    .line 51
    const-class v0, Ltmsdkobf/ld;

    invoke-static {v0}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v0

    check-cast v0, Ltmsdkobf/ld;

    new-instance v1, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$1;

    invoke-direct {v1, p0}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$1;-><init>(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ltmsdkobf/ld;->b(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method public hangup(I)V
    .locals 7
    .parameter "simPos"

    .prologue
    .line 64
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->disableRingVibration(I)V

    .line 66
    invoke-static {}, Ltmsdk/common/DualSimTelephonyManager;->getDefaultTelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 67
    .local v2, telephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 69
    .local v0, callEnded:Z
    if-eqz v2, :cond_1

    .line 70
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 77
    :goto_0
    if-nez v0, :cond_0

    .line 78
    const-string v3, "DefaultPhoneDeviceController"

    const-string v4, "Failed to end call by ITelephony"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v3, "DefaultPhoneDeviceController"

    const-string v4, "Try to use the deprecated way"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v3, p0, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;->up:Ltmsdkobf/kj;

    invoke-virtual {v3}, Ltmsdkobf/kj;->endCall()Z

    .line 82
    :cond_0
    const-class v3, Ltmsdkobf/ld;

    invoke-static {v3}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdkobf/ld;

    new-instance v4, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$2;

    invoke-direct {v4, p0}, Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController$2;-><init>(Ltmsdk/bg/module/aresengine/DefaultPhoneDeviceController;)V

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Ltmsdkobf/ld;->b(Ljava/lang/Runnable;J)Z

    .line 91
    return-void

    .line 72
    :cond_1
    :try_start_1
    const-string v3, "DefaultPhoneDeviceController"

    const-string v4, "Failed to get ITelephony!"

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "DefaultPhoneDeviceController"

    const-string v4, "ITelephony#endCall"

    invoke-static {v3, v4, v1}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public varargs unBlockSms(Ltmsdk/common/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 5
    .parameter "sms"
    .parameter "params"

    .prologue
    .line 165
    if-eqz p2, :cond_0

    array-length v3, p2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 166
    const/4 v3, 0x0

    aget-object v3, p2, v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 168
    .local v1, event:I
    packed-switch v1, :pswitch_data_0

    .line 190
    .end local v1           #event:I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 181
    .restart local v1       #event:I
    :pswitch_1
    const/4 v3, 0x1

    aget-object v2, p2, v3

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, pkg:Ljava/lang/String;
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const-class v3, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v3}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v3

    check-cast v3, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getAresEngineFactor()Ltmsdk/bg/module/aresengine/AresEngineFactor;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/bg/module/aresengine/AresEngineFactor;->getSysDao()Ltmsdk/common/module/aresengine/AbsSysDao;

    move-result-object v0

    .line 184
    .local v0, dao:Ltmsdk/common/module/aresengine/AbsSysDao;
    invoke-virtual {v0, p1}, Ltmsdk/common/module/aresengine/AbsSysDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
