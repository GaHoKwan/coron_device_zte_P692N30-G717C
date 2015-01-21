.class public Lcom/mediatek/phone/VoiceCommandHandler;
.super Ljava/lang/Object;
.source "VoiceCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/VoiceCommandHandler$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VoiceCommandHandler"

.field private static final VOICE_COMMAND_RESULT_INCOMING_CALL_ACCEPT:I = 0x1

.field private static final VOICE_COMMAND_RESULT_INCOMING_CALL_REJECT:I = 0x2


# instance fields
.field private mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsRegistered:Z

.field private mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

.field private mNotificationMessage:Ljava/lang/String;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceCommandServiceConn:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/phone/VoiceCommandHandler$Listener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    .line 47
    new-instance v0, Lcom/mediatek/phone/VoiceCommandHandler$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/VoiceCommandHandler$1;-><init>(Lcom/mediatek/phone/VoiceCommandHandler;)V

    iput-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVoiceCommandServiceConn:Landroid/content/ServiceConnection;

    .line 64
    new-instance v0, Lcom/mediatek/phone/VoiceCommandHandler$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/VoiceCommandHandler$2;-><init>(Lcom/mediatek/phone/VoiceCommandHandler;)V

    iput-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    .line 86
    new-instance v0, Lcom/mediatek/phone/VoiceCommandHandler$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/VoiceCommandHandler$3;-><init>(Lcom/mediatek/phone/VoiceCommandHandler;)V

    iput-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 100
    invoke-direct {p0, p1}, Lcom/mediatek/phone/VoiceCommandHandler;->bindVoiceCommandService(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/phone/VoiceCommandHandler;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/phone/VoiceCommandHandler;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/VoiceCommandHandler;->handleCommonVoiceCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/VoiceCommandHandler;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/VoiceCommandHandler;->handleUIVoiceCommand(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/phone/VoiceCommandHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bindVoiceCommandService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v0, voiceCmdIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVoiceCommandServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 108
    return-void
.end method

.method private handleCommonVoiceCommand(ILandroid/os/Bundle;)V
    .locals 7
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCommonVoiceCommand(): subAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extraData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    .line 114
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .line 115
    const-string v2, "mContext is null, so return directly."

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    const-string v2, "Result"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v5, v2, :cond_0

    .line 124
    const-string v2, "handleCommonVoiceCommand(): extraData = ACTION_EXTRA_RESULT_SUCCESS"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 125
    const-string v2, "Result_Info"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, comments:[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-le v2, v5, :cond_0

    .line 127
    const v2, 0x7f08012a

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v0, v6

    aput-object v4, v3, v6

    aget-object v4, v0, v5

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mNotificationMessage:Ljava/lang/String;

    .line 129
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->showVoiceCommandNotification()V

    .line 130
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    if-eqz v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    iget-object v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mNotificationMessage:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/mediatek/phone/VoiceCommandHandler$Listener;->receiveVoiceCommandNotificationMessage(Ljava/lang/String;)V

    .line 133
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNotificationMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mNotificationMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUIVoiceCommand(ILandroid/os/Bundle;)V
    .locals 5
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    const/4 v4, 0x1

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleUIVoiceCommand(): subAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extraData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 146
    packed-switch p1, :pswitch_data_0

    .line 195
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 149
    :pswitch_1
    const-string v2, "handleUIVoiceCommand(), VoiceCommandListener.ACTION_VOICE_UI_START"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 150
    const-string v2, "Result"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v4, v2, :cond_1

    .line 152
    const-string v2, "handleUIVoiceCommand(), ACTION_VOICE_UI_START message\'s extra data is not SUCCESS"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, pkgName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v4, v4, v2}, Lcom/mediatek/phone/VoiceCommandHandler;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0

    .line 164
    .end local v1           #pkgName:Ljava/lang/String;
    :pswitch_2
    const-string v2, "handleUIVoiceCommand(), VoiceCommandListener.ACTION_VOICE_UI_STOP"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_3
    const-string v2, "handleUIVoiceCommand(), VoiceCommandListener.ACTION_VOICE_UI_NOTIFY"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->cancelVoiceCommandNotification()V

    .line 170
    const-string v2, "Result"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eq v4, v2, :cond_2

    .line 172
    const-string v2, "handleUIVoiceCommand(), ACTION_VOICE_UI_NOTIFY message\'s extra data is not SUCCESS"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/phone/VoiceCommandHandler;->stopVoiceCommand()V

    .line 176
    const-string v2, "Result_Info"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 177
    .local v0, commandId:I
    if-ne v4, v0, :cond_3

    .line 178
    const-string v2, "handleUIVoiceCommand(), accept"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 179
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    invoke-interface {v2}, Lcom/mediatek/phone/VoiceCommandHandler$Listener;->acceptIncomingCallByVoiceCommand()V

    goto :goto_0

    .line 182
    :cond_3
    const/4 v2, 0x2

    if-ne v2, v0, :cond_4

    .line 183
    const-string v2, "handleUIVoiceCommand(), reject"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    if-eqz v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    invoke-interface {v2}, Lcom/mediatek/phone/VoiceCommandHandler$Listener;->rejectIncomingCallByVoiceCommand()V

    goto :goto_0

    .line 188
    :cond_4
    const-string v2, "invalid command id"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static isValidCondition()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, firstRingCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 249
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 257
    :goto_1
    if-eqz v0, :cond_0

    .line 260
    sget-object v2, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 331
    const-string v0, "VoiceCommandHandler"

    invoke-static {v0, p0}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 288
    iget-boolean v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 290
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 291
    .local v1, errorid:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerVoiceCommand: pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",errorid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 292
    if-nez v1, :cond_0

    .line 293
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    .end local v1           #errorid:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    iget-boolean v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    invoke-interface {v2, v3}, Lcom/mediatek/phone/VoiceCommandHandler$Listener;->onRegisterResult(Z)V

    .line 305
    :goto_1
    return-void

    .line 295
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "Register voice Listener failure "

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 297
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register voice Listener RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "App has register voice listener success"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 266
    iget-boolean v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 268
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendVoiceCommand: pkgName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const-string v3, " extraData="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 270
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 272
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 273
    const-string v2, "Send Command failure"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 285
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 275
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "Send Command success"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 278
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    .line 279
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 280
    const-string v2, "sendCommand RemoteException"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 283
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "App has not register listener can not send command"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unRegisterVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 308
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_0

    .line 310
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 311
    .local v1, errorid:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister voice listener, errorid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 312
    if-nez v1, :cond_0

    .line 313
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    .line 317
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "UnRegister voice listener end!"

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 328
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregister error in handler RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 323
    iput-boolean v4, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    .line 324
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, pkgName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/phone/VoiceCommandHandler;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 234
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    .line 235
    iput-object v2, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mListener:Lcom/mediatek/phone/VoiceCommandHandler$Listener;

    .line 236
    return-void
.end method

.method public getNotificationMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mNotificationMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isRegistered()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mIsRegistered:Z

    return v0
.end method

.method public startVoiceCommand()V
    .locals 4

    .prologue
    .line 198
    const-string v1, "startVoiceCommand()"

    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 200
    const-string v1, "mContext is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, pkgName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/phone/VoiceCommandHandler;->registerVoiceCommand(Ljava/lang/String;)V

    .line 206
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/phone/VoiceCommandHandler;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public stopVoiceCommand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 211
    const-string v1, "stopVoiceCommand()"

    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 213
    const-string v1, "mContext is null, just return"

    invoke-static {v1}, Lcom/mediatek/phone/VoiceCommandHandler;->log(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelVoiceCommandNotification()V

    .line 218
    iget-object v1, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, pkgName:Ljava/lang/String;
    invoke-direct {p0, v0, v2, v2, v3}, Lcom/mediatek/phone/VoiceCommandHandler;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 221
    invoke-direct {p0, v0}, Lcom/mediatek/phone/VoiceCommandHandler;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 222
    iput-object v3, p0, Lcom/mediatek/phone/VoiceCommandHandler;->mNotificationMessage:Ljava/lang/String;

    goto :goto_0
.end method
