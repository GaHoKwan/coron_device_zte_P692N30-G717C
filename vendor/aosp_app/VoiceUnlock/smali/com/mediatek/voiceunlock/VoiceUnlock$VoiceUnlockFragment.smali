.class public Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;
.super Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/voiceunlock/VoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceUnlockFragment"
.end annotation


# static fields
.field private static final COMFIRM_RESET_DIALOG:I = 0x1

.field private static final CONFIRM_CREDENTIALS:Ljava/lang/String; = "confirm_credentials"

.field static final KEY_COMMAND_ID:Ljava/lang/String; = "command_id"

.field static final KEY_COMMAND_KEY:Ljava/lang/String; = "command_key"

.field static final KEY_COMMAND_SUMMARY:Ljava/lang/String; = "command_summary"

.field static final KEY_VOICE_COMMAND1:Ljava/lang/String; = "voice_command1"

.field static final KEY_VOICE_COMMAND2:Ljava/lang/String; = "voice_command2"

.field static final KEY_VOICE_COMMAND3:Ljava/lang/String; = "voice_command3"

.field static final KEY_VOICE_UNLOCK:Ljava/lang/String; = "voice_unlock"

.field private static final MSG_SERVICE_ERROR:I

.field private static final OPTIONS_DIALOG:I


# instance fields
.field private isRegistered:Z

.field private mClickedCmdKey:Ljava/lang/String;

.field private mClickedCmdSummary:Ljava/lang/CharSequence;

.field private mCommand1:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

.field private mCommand2:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

.field private mCommand3:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPkgName:Ljava/lang/String;

.field private mUnlock:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

.field private mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

.field private mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

.field private mVoiceCommandHandler:Landroid/os/Handler;

.field private mVoiceSerConnection:Landroid/content/ServiceConnection;

.field voice_command1_set:Z

.field voice_command2_set:Z

.field voice_command3_set:Z

.field voice_unlock_set:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    .line 104
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$1;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    .line 110
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$2;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$2;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceCommandHandler:Landroid/os/Handler;

    .line 500
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$7;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceCommandHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->handleServiceError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->playCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isLastCommand()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->resetCommand(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;)Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->registerVoiceCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method private bindVoiceService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 493
    const-string v1, "bindVoiceService begin  "

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 494
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 495
    .local v0, mVoiceServiceIntent:Landroid/content/Intent;
    const-string v1, "com.mediatek.voicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 496
    const-string v1, "com.mediatek.nativeservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 498
    return-void
.end method

.method private getCommandId(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 272
    const-string v0, "voice_command1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 279
    :goto_0
    return v0

    .line 274
    :cond_0
    const-string v0, "voice_command2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 275
    const/4 v0, 0x2

    goto :goto_0

    .line 276
    :cond_1
    const-string v0, "voice_command3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 277
    const/4 v0, 0x3

    goto :goto_0

    .line 279
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCommandSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "commandValue"

    .prologue
    .line 414
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 416
    .local v0, cn:Landroid/content/ComponentName;
    const-string v3, ""

    .line 418
    .local v3, name:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 420
    .local v2, info:Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ComponentInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 424
    .end local v2           #info:Landroid/content/pm/ActivityInfo;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080012

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, summary:Ljava/lang/String;
    return-object v4

    .line 421
    .end local v4           #summary:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Cann\'t get app activityInfo via mCommandValue"

    invoke-direct {p0, v5}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleServiceError(Ljava/lang/String;)V
    .locals 2
    .parameter "errorMsg"

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 269
    return-void
.end method

.method private isLastCommand()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, count:I
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_unlock_screen"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, voice_unlock_screen:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 320
    add-int/lit8 v0, v0, 0x1

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_unlock_and_launch1"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, voice_command1_app:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 325
    add-int/lit8 v0, v0, 0x1

    .line 327
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_unlock_and_launch2"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, voice_command2_app:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 330
    add-int/lit8 v0, v0, 0x1

    .line 332
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_unlock_and_launch3"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, voice_command3_app:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 335
    add-int/lit8 v0, v0, 0x1

    .line 337
    :cond_3
    if-ne v0, v5, :cond_4

    .line 340
    :goto_0
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 430
    const-string v0, "VoiceUnlockSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceUnlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void
.end method

.method private playCommand(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->getCommandId(Ljava/lang/String;)I

    move-result v0

    .line 256
    .local v0, commandId:I
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.mediatek.voicecommand.VOICE_UNLOCK_PSWPREVIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "command_summary"

    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 258
    const-string v3, "command_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playCommand commandId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " summary = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f080027

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private registerVoiceCommand(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 435
    iget-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    if-nez v2, :cond_1

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->registerListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 438
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 439
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    .end local v1           #errorid:I
    :goto_0
    const-string v2, "register voiceCommand end "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 452
    return-void

    .line 441
    .restart local v1       #errorid:I
    :cond_0
    :try_start_1
    const-string v2, "register voiceCommand fail "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 443
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    .line 445
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register voiceCommand RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 449
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "register voiceCommand success "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private resetCommand(Ljava/lang/String;Z)V
    .locals 8
    .parameter "key"
    .parameter "last"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 284
    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v3, :cond_0

    .line 285
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 286
    .local v1, extra:Landroid/os/Bundle;
    invoke-direct {p0, p1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->getCommandId(Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, commandId:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCommand TRAINING_RESET commandId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 288
    const-string v3, "Send_Info"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 289
    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x6

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 293
    .end local v0           #commandId:I
    .end local v1           #extra:Landroid/os/Bundle;
    :cond_0
    const-string v3, "voice_unlock"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_unlock_screen"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 308
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, utils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 310
    invoke-virtual {v2, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 312
    .end local v2           #utils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->updateCommandStatusAndSummary()V

    .line 313
    return-void

    .line 296
    :cond_3
    const-string v3, "voice_command1"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_unlock_and_launch1"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 299
    :cond_4
    const-string v3, "voice_command2"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 300
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_unlock_and_launch2"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 302
    :cond_5
    const-string v3, "voice_command3"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "voice_unlock_and_launch3"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 4
    .parameter "pkgName"
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 474
    iget-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    if-eqz v2, :cond_1

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->sendCommand(Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v1

    .line 477
    .local v1, errorid:I
    if-eqz v1, :cond_0

    .line 478
    const-string v2, "send voice Command fail "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 490
    .end local v1           #errorid:I
    :goto_0
    return-void

    .line 480
    .restart local v1       #errorid:I
    :cond_0
    const-string v2, "send voice Command success "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v1           #errorid:I
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    .line 484
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send voice Command RemoteException =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    const-string v2, "didn\'t register , can not send voice Command  "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterVoicecommand(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 455
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v2, :cond_1

    .line 457
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceCallback:Lcom/mediatek/common/voicecommand/IVoiceCommandListener;

    invoke-interface {v2, p1, v3}, Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;->unregisterListener(Ljava/lang/String;Lcom/mediatek/common/voicecommand/IVoiceCommandListener;)I

    move-result v1

    .line 458
    .local v1, errorid:I
    if-nez v1, :cond_0

    .line 459
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    .end local v1           #errorid:I
    :cond_0
    :goto_0
    const-string v2, "unregisteVoiceCmd end "

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVoiceSerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 468
    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    .line 469
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    .line 471
    :cond_1
    return-void

    .line 461
    :catch_0
    move-exception v0

    .line 462
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisteVoiceCmd voiceCommand RemoteException = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 463
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isRegistered:Z

    .line 464
    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    goto :goto_0
.end method

.method private updateCommandStatusAndSummary()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 381
    const-string v4, "updateCommandStatus "

    invoke-direct {p0, v4}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "voice_unlock_screen"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, voice_unlock_screen:Ljava/lang/String;
    if-eqz v3, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_unlock_set:Z

    .line 385
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mUnlock:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iget-boolean v7, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_unlock_set:Z

    invoke-virtual {v4, v7}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->setChecked(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "voice_unlock_and_launch1"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 389
    .local v0, voice_command1_app:Ljava/lang/String;
    if-eqz v0, :cond_4

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command1_set:Z

    .line 390
    iget-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command1_set:Z

    if-eqz v4, :cond_0

    .line 391
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand1:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->getCommandSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 393
    :cond_0
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand1:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iget-boolean v7, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command1_set:Z

    invoke-virtual {v4, v7}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->setChecked(Z)V

    .line 395
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "voice_unlock_and_launch2"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, voice_command2_app:Ljava/lang/String;
    if-eqz v1, :cond_5

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command2_set:Z

    .line 398
    iget-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command2_set:Z

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand2:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    invoke-direct {p0, v1}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->getCommandSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 401
    :cond_1
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand2:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iget-boolean v7, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command2_set:Z

    invoke-virtual {v4, v7}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->setChecked(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "voice_unlock_and_launch3"

    invoke-static {v4, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    .local v2, voice_command3_app:Ljava/lang/String;
    if-eqz v2, :cond_6

    :goto_3
    iput-boolean v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command3_set:Z

    .line 406
    iget-boolean v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command3_set:Z

    if-eqz v4, :cond_2

    .line 407
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand3:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->getCommandSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    :cond_2
    iget-object v4, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand3:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iget-boolean v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->voice_command3_set:Z

    invoke-virtual {v4, v5}, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;->setChecked(Z)V

    .line 411
    return-void

    .end local v0           #voice_command1_app:Ljava/lang/String;
    .end local v1           #voice_command2_app:Ljava/lang/String;
    .end local v2           #voice_command3_app:Ljava/lang/String;
    :cond_3
    move v4, v6

    .line 384
    goto :goto_0

    .restart local v0       #voice_command1_app:Ljava/lang/String;
    :cond_4
    move v4, v6

    .line 389
    goto :goto_1

    .restart local v1       #voice_command2_app:Ljava/lang/String;
    :cond_5
    move v4, v6

    .line 397
    goto :goto_2

    .restart local v2       #voice_command3_app:Ljava/lang/String;
    :cond_6
    move v5, v6

    .line 405
    goto :goto_3
.end method


# virtual methods
.method public handleVoiceCommandNotified(IILandroid/os/Bundle;)V
    .locals 5
    .parameter "mainAction"
    .parameter "subAction"
    .parameter "extraData"

    .prologue
    .line 116
    const-string v2, "Result"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 117
    .local v1, result:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotified result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 118
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 119
    const-string v2, "Reslut_INfo1"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, errorMsg:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNotified RESULT_ERROR errorMsg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    .end local v0           #errorMsg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "command_summary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    .line 131
    const-string v0, "command_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;

    .line 134
    :cond_0
    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mContext:Landroid/content/Context;

    .line 136
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    .line 138
    new-instance v0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$3;

    invoke-direct {v0, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$3;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    iput-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_0

    .line 249
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 208
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080007

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x7f07

    new-instance v3, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;

    invoke-direct {v3, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$4;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 226
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080009

    new-instance v3, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$6;

    invoke-direct {v3, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$6;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080008

    new-instance v3, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;

    invoke-direct {v3, p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment$5;-><init>(Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->isLastCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 347
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 349
    .local v0, v:Landroid/view/View;
    const-string v1, "voice_unlock"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mUnlock:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    .line 350
    const-string v1, "voice_command1"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand1:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    .line 351
    const-string v1, "voice_command2"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand2:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    .line 352
    const-string v1, "voice_command3"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    iput-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mCommand3:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    .line 353
    return-object v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->onPause()V

    .line 370
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "sendCommand TRAINING_STOP"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->sendVoiceCommand(Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 375
    const-string v0, "unregister to service"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->unregisterVoicecommand(Ljava/lang/String;)V

    .line 378
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .local v3, key:Ljava/lang/String;
    move-object v4, p2

    .line 163
    check-cast v4, Lcom/mediatek/voiceunlock/VoiceUnlockPreference;

    .line 164
    .local v4, vuPreference:Lcom/mediatek/voiceunlock/VoiceUnlockPreference;
    const/4 v0, 0x1

    .line 165
    .local v0, handled:Z
    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 166
    iput-object v3, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;

    .line 167
    const-string v5, "voice_unlock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 168
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    .line 172
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->showDialog(I)V

    move v1, v0

    .line 201
    .end local v0           #handled:Z
    .local v1, handled:I
    :goto_1
    return v1

    .line 170
    .end local v1           #handled:I
    .restart local v0       #handled:Z
    :cond_0
    invoke-virtual {v4}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    goto :goto_0

    .line 176
    :cond_1
    const-string v5, "voice_unlock"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 177
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/mediatek/voiceunlock/VoiceUnlockSetupIntro;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    const-string v5, "settings_command_key"

    const-string v6, "voice_unlock_screen"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v5, "settings_command_value"

    const-string v6, "set"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .end local v2           #intent:Landroid/content/Intent;
    :goto_2
    move v1, v0

    .line 201
    .restart local v1       #handled:I
    goto :goto_1

    .line 182
    .end local v1           #handled:I
    :cond_2
    const-string v5, "voice_command1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 183
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 184
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/mediatek/voiceunlock/VoiceCommandSelect;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 185
    const-string v5, "settings_command_key"

    const-string v6, "voice_unlock_and_launch1"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 187
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const-string v5, "voice_command2"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 188
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 189
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/mediatek/voiceunlock/VoiceCommandSelect;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 190
    const-string v5, "settings_command_key"

    const-string v6, "voice_unlock_and_launch2"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 192
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    const-string v5, "voice_command3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 193
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 194
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/mediatek/voiceunlock/VoiceCommandSelect;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 195
    const-string v5, "settings_command_key"

    const-string v6, "voice_unlock_and_launch3"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 198
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 358
    invoke-direct {p0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->updateCommandStatusAndSummary()V

    .line 359
    invoke-super {p0}, Lcom/mediatek/voiceunlock/SettingsPreferenceFragment;->onResume()V

    .line 360
    const-string v0, "register to service"

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->log(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mVCmdMgrService:Lcom/mediatek/common/voicecommand/IVoiceCommandManagerService;

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->bindVoiceService(Landroid/content/Context;)V

    .line 366
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mPkgName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->registerVoiceCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 154
    const-string v0, "command_key"

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v0, "command_summary"

    iget-object v1, p0, Lcom/mediatek/voiceunlock/VoiceUnlock$VoiceUnlockFragment;->mClickedCmdSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 156
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
