.class public Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;
.super Landroid/app/Activity;
.source "DeepIdleSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_CPU_PDN:Ljava/lang/String; = "echo \"%1$d cpu_pdn\" > /proc/spm_fs/dpidle"

.field private static final CMD_POWER_LEVEL:Ljava/lang/String; = "echo \"%1$d pwrlevel\" > /proc/spm_fs/dpidle"

.field private static final CMD_TIMER_VAL:Ljava/lang/String; = "echo \"%1$s timer_val_ms\" > /proc/spm_fs/dpidle"

.field private static final FS_DPIDLE:Ljava/lang/String; = "/proc/spm_fs/dpidle"

.field private static final FS_DPIDLE_LEVEL:Ljava/lang/String; = "/proc/spm_fs/dpidle_level"

.field private static final FS_DPIDLE_MODE:Ljava/lang/String; = "/proc/spm_fs/dpidle_mode"

.field private static final FS_DPIDLE_TIMERVAL:Ljava/lang/String; = "/proc/spm_fs/dpidle_timer"

.field private static final TAG:Ljava/lang/String; = "DeepIdle"


# instance fields
.field private mBtnGetSetting:Landroid/widget/Button;

.field private mBtnStartTimer:Landroid/widget/Button;

.field private mEditTimerVal:Landroid/widget/EditText;

.field private mInitDone:Z

.field private mLevelControler:Landroid/widget/LinearLayout;

.field private mRBDisableDpIdl:Landroid/widget/RadioButton;

.field private mRBDisableTimer:Landroid/widget/RadioButton;

.field private mRBDormantMode:Landroid/widget/RadioButton;

.field private mRBLegacySleep:Landroid/widget/RadioButton;

.field private mRBLevels:[Landroid/widget/RadioButton;

.field private mRBModes:[Landroid/widget/RadioButton;

.field private mRBPowerLevel0:Landroid/widget/RadioButton;

.field private mRBPowerLevel1:Landroid/widget/RadioButton;

.field private mRBTimerValSet:Landroid/widget/RadioButton;

.field private mRBTimerVals:[Landroid/widget/RadioButton;

.field private mSetTimerControler:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBModes:[Landroid/widget/RadioButton;

    .line 85
    new-array v0, v1, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLevels:[Landroid/widget/RadioButton;

    .line 86
    new-array v0, v1, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerVals:[Landroid/widget/RadioButton;

    return-void
.end method

.method private checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "checked"

    .prologue
    .line 256
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 257
    aget-object v1, p1, v0

    if-ne p2, v1, :cond_0

    .line 258
    aget-object v1, p1, v0

    invoke-virtual {v1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 256
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
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

    .line 263
    :cond_2
    return-void
.end method

.method private enableTimerValUI(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 210
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 211
    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 232
    const/4 v2, -0x1

    .line 233
    .local v2, ret:I
    const-string v3, "DeepIdle"

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

    .line 236
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 240
    :goto_0
    if-nez v2, :cond_0

    .line 241
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "DeepIdle"

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

    .line 245
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Ljava/io/IOException;
    const-string v3, "DeepIdle"

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

    .line 245
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initUIByData()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 140
    const-string v0, "cat /proc/spm_fs/dpidle_mode"

    .line 141
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, output:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 144
    const-string v6, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 206
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 149
    const/4 v3, -0x1

    .line 151
    .local v3, modeIdx:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 156
    :goto_1
    :try_start_1
    iget-object v6, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBModes:[Landroid/widget/RadioButton;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 161
    :goto_2
    const-string v0, "cat /proc/spm_fs/dpidle_level"

    .line 162
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    if-nez v4, :cond_1

    .line 165
    const-string v6, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException invalid output:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 157
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to set Default Mode; IndexOutOfBoundsException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 170
    const/4 v2, -0x1

    .line 172
    .local v2, levelIdx:I
    :try_start_2
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    .line 177
    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLevels:[Landroid/widget/RadioButton;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 182
    :goto_4
    const-string v0, "cat /proc/spm_fs/dpidle_timer"

    .line 183
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    if-nez v4, :cond_2

    .line 186
    const-string v6, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 173
    :catch_2
    move-exception v1

    .line 174
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException invalid output:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 178
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 179
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fail to set Default Level; IndexOutOfBoundsException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 190
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 191
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timer val output: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v5, -0x1

    .line 194
    .local v5, timerVal:I
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 198
    :goto_5
    if-nez v5, :cond_3

    .line 199
    iget-object v6, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableTimer:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 195
    :catch_4
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NumberFormatException invalid output:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 200
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_3
    const/16 v6, 0xf

    if-le v5, v6, :cond_4

    const v6, 0xf4240

    if-ge v5, v6, :cond_4

    .line 201
    iget-object v6, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-virtual {v6, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 202
    iget-object v6, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 204
    :cond_4
    const-string v6, "DeepIdle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid Timer Value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setCpuPdn(I)V
    .locals 5
    .parameter "input"

    .prologue
    .line 215
    const-string v1, "echo \"%1$d cpu_pdn\" > /proc/spm_fs/dpidle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    return-void
.end method

.method private setPowerLevel(I)V
    .locals 5
    .parameter "input"

    .prologue
    .line 221
    const-string v1, "echo \"%1$d pwrlevel\" > /proc/spm_fs/dpidle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 223
    return-void
.end method

.method private setTimerVal(Ljava/lang/String;)V
    .locals 4
    .parameter "input"

    .prologue
    .line 227
    const-string v1, "echo \"%1$s timer_val_ms\" > /proc/spm_fs/dpidle"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 249
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

    .line 252
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 253
    return-void
.end method

.method private validateInputData()Z
    .locals 7

    .prologue
    const v6, 0x7f0805b4

    const/4 v4, 0x0

    .line 289
    iget-object v5, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 290
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 308
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return v4

    .line 294
    :cond_0
    const/4 v2, -0x1

    .line 295
    .local v2, timerVal:I
    iget-object v5, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, timerValStr:Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 303
    const/16 v5, 0xf

    if-lt v2, v5, :cond_1

    const v5, 0xf4240

    if-le v2, v5, :cond_2

    .line 304
    :cond_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 305
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 298
    .end local v1           #msg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 300
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #msg:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private visibleLevelSetTimerUI(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 277
    if-eqz p1, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 282
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mLevelControler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 283
    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mSetTimerControler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void

    .line 280
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    .restart local v0       #visibility:I
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

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 336
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 383
    :pswitch_0
    const-string v1, "DeepIdle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown CompoundButton id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 338
    :pswitch_1
    if-eqz p2, :cond_0

    .line 340
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->visibleLevelSetTimerUI(Z)V

    .line 341
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setCpuPdn(I)V

    goto :goto_0

    .line 345
    :pswitch_2
    if-eqz p2, :cond_0

    .line 347
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->visibleLevelSetTimerUI(Z)V

    .line 348
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setCpuPdn(I)V

    goto :goto_0

    .line 352
    :pswitch_3
    if-eqz p2, :cond_0

    .line 354
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->visibleLevelSetTimerUI(Z)V

    .line 355
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setCpuPdn(I)V

    goto :goto_0

    .line 359
    :pswitch_4
    if-eqz p2, :cond_0

    .line 360
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setPowerLevel(I)V

    goto :goto_0

    .line 364
    :pswitch_5
    if-eqz p2, :cond_0

    .line 365
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setPowerLevel(I)V

    goto :goto_0

    .line 369
    :pswitch_6
    if-eqz p2, :cond_0

    .line 370
    const-string v1, "DeepIdle"

    const-string v2, "[debug]onCheckedChanged: deepIdle timer disable"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->enableTimerValUI(Z)V

    .line 372
    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerVals:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableTimer:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 373
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setTimerVal(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :pswitch_7
    if-eqz p2, :cond_0

    .line 378
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->enableTimerValUI(Z)V

    .line 379
    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerVals:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    goto :goto_0

    .line 336
    :pswitch_data_0
    .packed-switch 0x7f0b012a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 316
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 328
    const-string v3, "DeepIdle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown view id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 318
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->validateInputData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->setTimerVal(Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :pswitch_1
    const-string v0, "cat /proc/spm_fs/dpidle"

    .line 324
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 325
    .local v2, output:Ljava/lang/String;
    const v3, 0x7f0805a7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0134
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 99
    const v0, 0x7f0b012a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableDpIdl:Landroid/widget/RadioButton;

    .line 100
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableDpIdl:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 101
    const v0, 0x7f0b012b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLegacySleep:Landroid/widget/RadioButton;

    .line 102
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLegacySleep:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    const v0, 0x7f0b012c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDormantMode:Landroid/widget/RadioButton;

    .line 104
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDormantMode:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBModes:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableDpIdl:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 106
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBModes:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLegacySleep:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 107
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBModes:[Landroid/widget/RadioButton;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDormantMode:Landroid/widget/RadioButton;

    aput-object v2, v0, v1

    .line 109
    const v0, 0x7f0b012e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel0:Landroid/widget/RadioButton;

    .line 110
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel0:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 111
    const v0, 0x7f0b012f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel1:Landroid/widget/RadioButton;

    .line 112
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel1:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLevels:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel0:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBLevels:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBPowerLevel1:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 116
    const v0, 0x7f0b0131

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableTimer:Landroid/widget/RadioButton;

    .line 117
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableTimer:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 118
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    .line 119
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerVals:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBDisableTimer:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 121
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerVals:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mRBTimerValSet:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 123
    const v0, 0x7f0b0133

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mEditTimerVal:Landroid/widget/EditText;

    .line 124
    const v0, 0x7f0b0134

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnStartTimer:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0b0135

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnGetSetting:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mBtnGetSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0b012d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mLevelControler:Landroid/widget/LinearLayout;

    .line 129
    const v0, 0x7f0b0130

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mSetTimerControler:Landroid/widget/LinearLayout;

    .line 131
    iput-boolean v3, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mInitDone:Z

    .line 132
    invoke-direct {p0}, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->initUIByData()V

    .line 133
    iput-boolean v4, p0, Lcom/mediatek/engineermode/deepidle/DeepIdleSettingActivity;->mInitDone:Z

    .line 134
    return-void
.end method
