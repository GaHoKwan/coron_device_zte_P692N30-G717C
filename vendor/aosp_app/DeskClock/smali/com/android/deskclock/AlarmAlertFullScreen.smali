.class public Lcom/android/deskclock/AlarmAlertFullScreen;
.super Landroid/app/Activity;
.source "AlarmAlertFullScreen.java"

# interfaces
.implements Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;


# static fields
.field private static final DEFAULT_SNOOZE:Ljava/lang/String; = "10"

.field private static final DEFAULT_VOLUME_BEHAVIOR:Ljava/lang/String; = "1"

.field private static final ENABLE_PING_AUTO_REPEAT:Z = true

.field public static final IS_SUPPORT_VOICE_COMMAND_UI:Z = true

.field private static final KEY_VOLUME_BEHAVIOR:Ljava/lang/String; = "power_on_volume_behavior"

.field private static final PING_AUTO_REPEAT_DELAY_MSEC:J = 0x4b0L

.field private static final PING_MESSAGE_WHAT:I = 0x65

.field private static final PRIORITY:I = 0x64

.field protected static final SCREEN_OFF:Ljava/lang/String; = "screen_off"

.field private static final VOICE_COMMAND_ID_SNOOZE:I = 0x5

.field private static final VOICE_COMMAND_ID_STOP:I = 0x6


# instance fields
.field private final ALARM_PHONE_LISTENER:Ljava/lang/String;

.field private final LOG:Z

.field protected mAlarm:Lcom/android/deskclock/Alarm;

.field private mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mContext:Landroid/content/Context;

.field mFullscreenStyle:Z

.field private mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

.field private mHandler:Landroid/os/Handler;

.field private mIsDocked:Z

.field private mKeywordArray:[Ljava/lang/String;

.field private mPingEnabled:Z

.field private final mPingHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mVCmdIsRegistered:Z

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field private mVoiceUiStartSuccessful:Z

.field private mVolumeBehavior:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const-string v0, "com.android.deskclock.ALARM_PHONE_LISTENER"

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->ALARM_PHONE_LISTENER:Ljava/lang/String;

    .line 73
    iput-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->LOG:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    .line 92
    iput-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 96
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$1;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$1;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$2;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$2;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingHandler:Landroid/os/Handler;

    .line 147
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    .line 212
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$3;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$3;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    .line 287
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$4;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$4;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 297
    new-instance v0, Lcom/android/deskclock/AlarmAlertFullScreen$5;

    invoke-direct {v0, p0}, Lcom/android/deskclock/AlarmAlertFullScreen$5;-><init>(Lcom/android/deskclock/AlarmAlertFullScreen;)V

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mHandler:Landroid/os/Handler;

    .line 536
    iput-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceUiStartSuccessful:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/deskclock/AlarmAlertFullScreen;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/deskclock/AlarmAlertFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/deskclock/AlarmAlertFullScreen;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/deskclock/AlarmAlertFullScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/deskclock/AlarmAlertFullScreen;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/deskclock/AlarmAlertFullScreen;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/deskclock/AlarmAlertFullScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/deskclock/AlarmAlertFullScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/deskclock/AlarmAlertFullScreen;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/AlarmAlertFullScreen;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V

    return-void
.end method

.method private bindVoiceService()V
    .locals 3

    .prologue
    .line 205
    const-string v1, "Bind voice service."

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 210
    return-void
.end method

.method private displayIndicator()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 626
    const-string v3, "AlarmFullScreen displayIndicator"

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 627
    const v3, 0x7f0e000c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 628
    .local v1, icon:Landroid/widget/ImageView;
    const v3, 0x7f0e000d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 629
    .local v2, ticker:Landroid/widget/TextView;
    const v3, 0x2020142

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 630
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 632
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 633
    .local v0, conf:Landroid/content/res/Configuration;
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    .line 634
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f0d000a

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0009

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    aget-object v6, v6, v8

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 346
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    return-object v0
.end method

.method private handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 16
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 539
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AlarmAlertFullScreen in handleVoiceCommandNotified mainAction = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",subAction"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "extraData"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 541
    packed-switch p1, :pswitch_data_0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_0
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 544
    const-string v12, "ACTION_MAIN_VOICE_COMMON"

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 545
    const-string v12, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 546
    .local v5, keywordResult:I
    const/4 v12, 0x1

    if-ne v5, v12, :cond_0

    .line 547
    const-string v12, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    .line 549
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mKeywordArray:[Ljava/lang/String;

    array-length v12, v12

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 550
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->displayIndicator()V

    .line 551
    new-instance v12, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0007

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    const v14, 0x7f0d0008

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    const v13, 0x2020142

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 555
    .local v4, indicatorNotify:Landroid/app/Notification;
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    const-string v13, "voiceui"

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0

    .line 561
    .end local v4           #indicatorNotify:Landroid/app/Notification;
    .end local v5           #keywordResult:I
    :pswitch_1
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 562
    const-string v12, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 563
    .local v8, startResult:I
    const/4 v12, 0x1

    if-ne v8, v12, :cond_1

    .line 565
    const-string v12, "voice ui starts normally  ACTION_MAIN_VOICE_UI"

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 566
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceUiStartSuccessful:Z

    .line 567
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v12, :cond_0

    .line 568
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/deskclock/AlarmAlertFullScreen;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 573
    :cond_1
    const-string v12, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 574
    .local v1, errorID:I
    const-string v12, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, errorString:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " voice ui starts abnormally,with errorID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",errorString: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 579
    .end local v1           #errorID:I
    .end local v2           #errorString:Ljava/lang/String;
    .end local v8           #startResult:I
    :cond_2
    const/4 v12, 0x2

    move/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 580
    const-string v12, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 581
    .local v11, stopResult:I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 583
    const-string v12, "voice ui stop success ACTION_VOICE_UI_STOP"

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 586
    :cond_3
    const-string v12, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 588
    .local v9, stopErrorID:I
    const-string v12, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 590
    .local v10, stopErrorString:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voice ui stop error with errorID:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",errorString:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    .end local v9           #stopErrorID:I
    .end local v10           #stopErrorString:Ljava/lang/String;
    .end local v11           #stopResult:I
    :cond_4
    const/4 v12, 0x5

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 594
    const-string v12, "Result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 595
    .local v7, notifyResult:I
    const-string v12, "Result_Info"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 596
    .local v3, id:I
    const/4 v12, 0x1

    if-ne v7, v12, :cond_6

    .line 598
    const/4 v12, 0x5

    if-ne v3, v12, :cond_5

    .line 600
    const-string v12, "snooze is triggered ACTION_VOICE_UI_NOTIFY"

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 601
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/deskclock/Alarms;->snooze(Landroid/content/Context;Lcom/android/deskclock/Alarm;)V

    .line 602
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 603
    :cond_5
    const/4 v12, 0x6

    if-ne v3, v12, :cond_0

    .line 604
    const-string v12, "dismissed is triggered ACTION_VOICE_UI_NOTIFY"

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v12

    const-string v13, "voiceui"

    const/16 v14, 0x64

    invoke-virtual {v12, v13, v14}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Lcom/android/deskclock/Alarms;->dismiss(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 609
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 613
    :cond_6
    const-string v12, "Reslut_INfo1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 615
    .local v6, notifyErrorString:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "something is wrong when notify,with notifyError id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",notifyErrorString:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 541
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 252
    iget-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    if-nez v2, :cond_1

    .line 254
    :try_start_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 255
    .local v1, errorid:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register voice Listener pkgName = "

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

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 256
    if-nez v1, :cond_0

    .line 257
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1           #errorid:I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register voice listener end! mVCmdIsRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 269
    return-void

    .line 259
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "Register voice Listener failure "

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 261
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 263
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

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "App has register voice listener success"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 231
    iget-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    if-eqz v2, :cond_1

    .line 233
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send Command pkgName"

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

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 236
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 237
    const-string v2, "Send Command failure"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 249
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 239
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "Send Command success"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 242
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    .line 243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 244
    const-string v2, "sendCommand RemoteException"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "App has not register listener can not send command"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setTitle()V
    .locals 3

    .prologue
    .line 304
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, titleText:Ljava/lang/String;
    const v2, 0x7f0e0007

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 307
    .local v1, tv:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method

.method private triggerPing()V
    .locals 4

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->ping()V

    .line 340
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 343
    :cond_0
    return-void
.end method

.method private unRegisterVoiceCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 274
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

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 275
    if-nez v1, :cond_0

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnRegister voice listener end! mVCmdIsRegistered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 284
    return-void

    .line 278
    :catch_0
    move-exception v0

    .line 279
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

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 280
    iput-boolean v4, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    .line 281
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 4

    .prologue
    .line 319
    const-string v2, "AlarmAlertFullScreen - updateLayout"

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 322
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 323
    .local v0, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getLayoutResId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 324
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 325
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 328
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 330
    const v2, 0x7f0e000e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    iput-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    .line 331
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2, p0}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/deskclock/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 332
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    .line 333
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 446
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 448
    .local v0, up:Z
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmAlertFullScreen - dispatchKeyEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 481
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :cond_0
    :goto_1
    return v1

    .end local v0           #up:Z
    :cond_1
    move v0, v2

    .line 446
    goto :goto_0

    .line 458
    .restart local v0       #up:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 459
    iget v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 461
    :pswitch_0
    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-static {p0, v2}, Lcom/android/deskclock/Alarms;->snooze(Landroid/content/Context;Lcom/android/deskclock/Alarm;)V

    .line 462
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 467
    :pswitch_1
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "voiceui"

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 469
    iget-object v3, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-static {p0, v3, v2}, Lcom/android/deskclock/Alarms;->dismiss(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 470
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x50 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 314
    const v0, 0x7f040001

    return v0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 489
    const-string v0, "AlarmAlertFullScreen - onBackPressed"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 366
    const-string v0, "AlarmAlertFullScreen - onConfigChanged"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 369
    iget-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceUiStartSuccessful:Z

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->displayIndicator()V

    .line 372
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 373
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const-string v5, "AlarmAlertFullScreen - onCreate IS_SUPPORT_VOICE_COMMAND_UI = true"

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 156
    iput-object p0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mContext:Landroid/content/Context;

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "alarm_killed"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.deskclock.ALARM_SNOOZE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v5, "com.android.deskclock.ALARM_DISMISS"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const/16 v5, 0x64

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 165
    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    invoke-static {}, Lcom/android/deskclock/Alarms;->bootFromPoweroffAlarm()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "intent.extra.alarm"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/android/deskclock/Alarm;

    iput-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 173
    iget-object v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    if-eqz v5, :cond_2

    .line 174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AlarmAlertFullScreen - Alarm Id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-virtual {v7}, Lcom/android/deskclock/Alarm;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 179
    :cond_2
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v7, "volume_button_setting"

    const-string v8, "0"

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, vol:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVolumeBehavior:I

    .line 183
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 184
    .local v4, win:Landroid/view/Window;
    const/high16 v5, 0x48

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "screen_off"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 189
    const v5, 0x200081

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->updateLayout()V

    .line 197
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, ifilter:Landroid/content/IntentFilter;
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 199
    .local v0, dockStatus:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 200
    const-string v5, "android.intent.extra.DOCK_STATE"

    const/4 v7, -0x1

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 430
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 431
    const-string v0, "AlarmAlert.onDestroy()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 436
    const-string v0, "Unbind voice Service"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdIsRegistered:Z

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 441
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 497
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 0
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 530
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 355
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 356
    sget-boolean v0, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v0, :cond_0

    .line 357
    const-string v0, "AlarmAlert.OnNewIntent()"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 359
    :cond_0
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    iput-object v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    .line 360
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->setTitle()V

    .line 361
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 411
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 412
    sget-boolean v1, Lcom/android/deskclock/Log;->LOGV:Z

    if-eqz v1, :cond_0

    .line 413
    const-string v1, "AlarmAlert.onPause()"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 417
    :cond_0
    const-string v1, "Deskclock onStop: unregister voice command listener and send stop command"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v1, :cond_1

    .line 419
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, pkgName:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/android/deskclock/AlarmAlertFullScreen;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 422
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->unRegisterVoiceCommand(Ljava/lang/String;)V

    .line 425
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "handle"

    .prologue
    .line 501
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mPingEnabled:Z

    .line 502
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->triggerPing()V

    .line 503
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 377
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 379
    const-string v1, "AlarmAlertFullScreen - onResume"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    iget v2, v2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {v1, v2}, Lcom/android/deskclock/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/deskclock/Alarm;

    move-result-object v1

    if-nez v1, :cond_0

    .line 383
    const-string v1, "AlarmAlertFullScreen alarm was null or been delete"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v2, 0x7f0a0006

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 385
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 386
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mIsDocked:Z

    if-eqz v1, :cond_2

    .line 391
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 393
    :cond_2
    const-string v1, "AlarmAlertFullScreen - onResume IS_SUPPORT_VOICE_COMMAND_UI = true"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v1, :cond_3

    .line 398
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->bindVoiceService()V

    .line 407
    :goto_0
    return-void

    .line 400
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, pkgName:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/deskclock/AlarmAlertFullScreen;->registerVoiceCommand(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/deskclock/AlarmAlertFullScreen;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "target"

    .prologue
    .line 507
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mGlowPadView:Lcom/android/deskclock/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, p2}, Lcom/android/deskclock/widget/multiwaveview/GlowPadView;->getResourceIdForTarget(I)I

    move-result v0

    .line 508
    .local v0, resId:I
    const-string v1, "onTrigger Alarms snooze or dismiss"

    invoke-static {v1}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 509
    packed-switch v0, :pswitch_data_0

    .line 524
    :pswitch_0
    const-string v1, "Trigger detected on unhandled resource. Skipping."

    invoke-static {v1}, Lcom/android/deskclock/Log;->e(Ljava/lang/String;)V

    .line 526
    :goto_0
    return-void

    .line 511
    :pswitch_1
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    invoke-static {p0, v1}, Lcom/android/deskclock/Alarms;->snooze(Landroid/content/Context;Lcom/android/deskclock/Alarm;)V

    .line 512
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-direct {p0}, Lcom/android/deskclock/AlarmAlertFullScreen;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v1

    const-string v2, "voiceui"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 519
    iget-object v1, p0, Lcom/android/deskclock/AlarmAlertFullScreen;->mAlarm:Lcom/android/deskclock/Alarm;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/deskclock/Alarms;->dismiss(Landroid/content/Context;Lcom/android/deskclock/Alarm;Z)V

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 509
    :pswitch_data_0
    .packed-switch 0x7f02002e
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
