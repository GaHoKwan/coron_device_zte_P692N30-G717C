.class public Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;
.super Landroid/app/Activity;
.source "SleepModeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_CPU_PDN:Ljava/lang/String; = "echo \"%1$d cpu_pdn\" > /proc/spm_fs/suspend"

.field private static final CMD_FGAUGE:Ljava/lang/String; = "echo \"%1$d fgauge\"  > /proc/spm_fs/suspend"

.field private static final CMD_INFRA_PDN:Ljava/lang/String; = "echo \"%1$d infra_pdn\" > /proc/spm_fs/suspend"

.field private static final CMD_TIMER_VAL:Ljava/lang/String; = "echo \"%1$s timer_val_ms\"  > /proc/spm_fs/suspend"

.field private static final CMD_WAKE_LOCK:Ljava/lang/String; = "echo nosleep > /sys/power/wake_lock"

.field private static final CMD_WAKE_UNLOCK:Ljava/lang/String; = "echo nosleep > /sys/power/wake_unlock"

.field private static final FS_SUSPEND:Ljava/lang/String; = "/proc/spm_fs/suspend"

.field private static final FS_SUSPEND_MODE:Ljava/lang/String; = "/proc/spm_fs/suspend_mode"

.field private static final FS_SUSPEND_TIMER:Ljava/lang/String; = "/proc/spm_fs/suspend_timer"

.field private static final FS_WAKE_LOCK:Ljava/lang/String; = "/sys/power/wake_lock"

.field private static final SLEEP_MODE_DISABLE:I = 0x0

.field private static final SLEEP_MODE_LEGACY_SLEEP:I = 0x1

.field private static final SLEEP_MODE_SHUT_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EM/SleepMode"

.field private static final TAG_NOSLEEP:Ljava/lang/String; = "nosleep"


# instance fields
.field private mBtnGetSetting:Landroid/widget/Button;

.field private mBtnStartTimer:Landroid/widget/Button;

.field private mEditTimerVal:Landroid/widget/EditText;

.field private mLVTimerControler:Landroid/widget/LinearLayout;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRBFuelGauge:Landroid/widget/RadioButton;

.field private mRBLagacySleep:Landroid/widget/RadioButton;

.field private mRBModeDisable:Landroid/widget/RadioButton;

.field private mRBShutDown:Landroid/widget/RadioButton;

.field private mRBSleepModes:[Landroid/widget/RadioButton;

.field private mRBTimerDisable:Landroid/widget/RadioButton;

.field private mRBTimerValSet:Landroid/widget/RadioButton;

.field private mRBWakeupTimers:[Landroid/widget/RadioButton;

.field private mSleepMode:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    return-void
.end method

.method private acquireWakeLock()Z
    .locals 2

    .prologue
    .line 234
    const-string v0, "echo nosleep > /sys/power/wake_lock"

    .line 235
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "checked"

    .prologue
    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 318
    aget-object v1, p1, v0

    if-ne p2, v1, :cond_0

    .line 319
    aget-object v1, p1, v0

    invoke-virtual {v1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 317
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    :cond_0
    aget-object v2, p1, v0

    if-nez p3, :cond_1

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 324
    :cond_2
    return-void
.end method

.method private enableInputTimerUI(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 206
    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 327
    const/4 v2, -0x1

    .line 328
    .local v2, ret:I
    const-string v3, "EM/SleepMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[cmd]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 335
    :goto_0
    if-nez v2, :cond_0

    .line 336
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "EM/SleepMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[output]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/SleepMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initUIByData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 150
    const-string v0, "cat /sys/power/wake_lock"

    .line 151
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, output:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 153
    const-string v3, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 154
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 201
    :goto_0
    return-void

    .line 157
    :cond_0
    const-string v3, "nosleep"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBModeDisable:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 159
    iput v7, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    .line 183
    :goto_1
    const-string v0, "cat /proc/spm_fs/suspend_timer"

    .line 184
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-nez v1, :cond_5

    .line 187
    const-string v3, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 161
    :cond_1
    const-string v0, "cat /proc/spm_fs/suspend_mode"

    .line 162
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 164
    if-nez v1, :cond_2

    .line 165
    const-string v3, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v3, "0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 171
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBLagacySleep:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 172
    iput v6, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    goto :goto_1

    .line 173
    :cond_3
    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBShutDown:Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 175
    const/4 v3, 0x2

    iput v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    goto :goto_1

    .line 177
    :cond_4
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    .line 178
    const-string v3, "EM/SleepMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cat suspend_mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 191
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 192
    const-string v3, " +"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, vals:[Ljava/lang/String;
    const-string v3, "1"

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBFuelGauge:Landroid/widget/RadioButton;

    invoke-direct {p0, v3, v4, v6}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    goto/16 :goto_0

    .line 195
    :cond_6
    const-string v3, "0"

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 196
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerDisable:Landroid/widget/RadioButton;

    invoke-direct {p0, v3, v4, v6}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    goto/16 :goto_0

    .line 198
    :cond_7
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-direct {p0, v3, v4, v6}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 199
    iget-object v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private releaseWakeLock()Z
    .locals 2

    .prologue
    .line 240
    const-string v0, "echo nosleep > /sys/power/wake_unlock"

    .line 241
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCpuPdn(I)Z
    .locals 6
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 210
    const-string v3, "echo \"%1$d cpu_pdn\" > /proc/spm_fs/suspend"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setFgauge(I)Z
    .locals 6
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    const-string v3, "echo \"%1$d fgauge\"  > /proc/spm_fs/suspend"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setInfraPdn(I)Z
    .locals 6
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    const-string v3, "echo \"%1$d infra_pdn\" > /proc/spm_fs/suspend"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private setTimerVal(Ljava/lang/String;)Z
    .locals 5
    .parameter "timerVal"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    const-string v3, "echo \"%1$s timer_val_ms\"  > /proc/spm_fs/suspend"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 344
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 347
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 348
    return-void
.end method

.method private validateInput()Z
    .locals 8

    .prologue
    const v7, 0x7f0805a4

    const/4 v4, 0x0

    .line 353
    iget-object v5, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 373
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return v4

    .line 358
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, timerValStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 368
    .local v2, timerVal:I
    const/16 v5, 0xf

    if-lt v2, v5, :cond_1

    const v5, 0xf4240

    if-le v2, v5, :cond_2

    .line 369
    :cond_1
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 362
    .end local v1           #msg:Ljava/lang/String;
    .end local v2           #timerVal:I
    :catch_0
    move-exception v0

    .line 363
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/SleepMode"

    const-string v6, "NumberFormatException: parse timerVal fail"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 373
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #msg:Ljava/lang/String;
    .restart local v2       #timerVal:I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "btnView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 246
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 247
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 302
    :pswitch_0
    const-string v1, "EM/SleepMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown view id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 249
    :pswitch_1
    if-eqz p2, :cond_0

    .line 250
    iput v4, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    .line 251
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBModeDisable:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mLVTimerControler:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->acquireWakeLock()Z

    goto :goto_0

    .line 257
    :pswitch_2
    if-eqz p2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBLagacySleep:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 259
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mLVTimerControler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    if-nez v1, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->releaseWakeLock()Z

    .line 263
    :cond_1
    iput v3, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    .line 264
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setCpuPdn(I)Z

    .line 265
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setInfraPdn(I)Z

    goto :goto_0

    .line 269
    :pswitch_3
    if-eqz p2, :cond_0

    .line 270
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBShutDown:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mLVTimerControler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    if-nez v1, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->releaseWakeLock()Z

    .line 275
    :cond_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mSleepMode:I

    .line 276
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setCpuPdn(I)Z

    .line 277
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setInfraPdn(I)Z

    goto :goto_0

    .line 281
    :pswitch_4
    if-eqz p2, :cond_0

    .line 282
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerDisable:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 283
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setFgauge(I)Z

    .line 284
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setTimerVal(Ljava/lang/String;)Z

    .line 285
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->enableInputTimerUI(Z)V

    goto :goto_0

    .line 289
    :pswitch_5
    if-eqz p2, :cond_0

    .line 290
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBFuelGauge:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 291
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setFgauge(I)Z

    .line 292
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->enableInputTimerUI(Z)V

    goto :goto_0

    .line 296
    :pswitch_6
    if-eqz p2, :cond_0

    .line 297
    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 298
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->enableInputTimerUI(Z)V

    goto/16 :goto_0

    .line 247
    :pswitch_data_0
    .packed-switch 0x7f0b0420
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 381
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 397
    const-string v4, "EM/SleepMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown view id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 383
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->validateInput()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setFgauge(I)Z

    .line 385
    iget-object v4, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->setTimerVal(Ljava/lang/String;)Z

    .line 387
    const v4, 0x7f0805a5

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, msg:Ljava/lang/String;
    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 392
    .end local v2           #msg:Ljava/lang/String;
    :pswitch_1
    const-string v0, "cat /proc/spm_fs/suspend"

    .line 393
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, output:Ljava/lang/String;
    const v4, 0x7f08059b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0428
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    const v0, 0x7f030085

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    const v0, 0x7f0b0420

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBModeDisable:Landroid/widget/RadioButton;

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBModeDisable:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const v0, 0x7f0b0421

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBLagacySleep:Landroid/widget/RadioButton;

    .line 116
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBLagacySleep:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 117
    const v0, 0x7f0b0422

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBShutDown:Landroid/widget/RadioButton;

    .line 118
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBShutDown:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 119
    new-array v0, v5, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    .line 120
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBModeDisable:Landroid/widget/RadioButton;

    aput-object v1, v0, v2

    .line 121
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBLagacySleep:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBSleepModes:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBShutDown:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 124
    const v0, 0x7f0b0424

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerDisable:Landroid/widget/RadioButton;

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerDisable:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    const v0, 0x7f0b0425

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBFuelGauge:Landroid/widget/RadioButton;

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBFuelGauge:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 128
    const v0, 0x7f0b0426

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    new-array v0, v5, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerDisable:Landroid/widget/RadioButton;

    aput-object v1, v0, v2

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBFuelGauge:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBWakeupTimers:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 135
    const v0, 0x7f0b0428

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mBtnStartTimer:Landroid/widget/Button;

    .line 136
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0b0429

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mBtnGetSetting:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mBtnGetSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0b0427

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mEditTimerVal:Landroid/widget/EditText;

    .line 140
    const v0, 0x7f0b0423

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mLVTimerControler:Landroid/widget/LinearLayout;

    .line 141
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 142
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "EM/SleepMode"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    invoke-direct {p0}, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->initUIByData()V

    .line 144
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 312
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/sleepmode/SleepModeActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 314
    return-void
.end method
