.class public Lcom/mediatek/engineermode/mcdi/McdiSetting;
.super Landroid/app/Activity;
.source "McdiSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat"

.field private static final ECHO:Ljava/lang/String; = "echo"

.field private static final MCDI_MODE_TAG:Ljava/lang/String; = "mcdi_mode"

.field private static final MODE_FS:Ljava/lang/String; = "/proc/spm_fs/mcdi_mode"

.field private static final SETTING_FS:Ljava/lang/String; = "/proc/spm_fs/mcdi"

.field private static final TAG:Ljava/lang/String; = "McdiSetting"

.field private static final TIMER_FS:Ljava/lang/String; = "/proc/spm_fs/mcdi_timer"

.field private static final TIMER_VAL_TAG:Ljava/lang/String; = "timer_val_ms"


# instance fields
.field private mBtnGetMcdiSetting:Landroid/widget/Button;

.field private mBtnStartTimer:Landroid/widget/Button;

.field private mEditTimerVal:Landroid/widget/EditText;

.field private mMcdiMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRBDisableMcdi:Landroid/widget/RadioButton;

.field private mRBDisableTimer:Landroid/widget/RadioButton;

.field private mRBMcdiOnly:Landroid/widget/RadioButton;

.field private mRBMcdiSodi:Landroid/widget/RadioButton;

.field private mRBModeArray:[Landroid/widget/RadioButton;

.field private mRBSetTimer:Landroid/widget/RadioButton;

.field private mRBTimerArray:[Landroid/widget/RadioButton;

.field private mSetTimerControler:Landroid/widget/LinearLayout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "checked"

    .prologue
    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 217
    aget-object v1, p1, v0

    if-ne p2, v1, :cond_0

    .line 218
    aget-object v1, p1, v0

    invoke-virtual {v1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 216
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
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

    .line 223
    :cond_2
    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 199
    const/4 v2, -0x1

    .line 200
    .local v2, ret:I
    const-string v3, "McdiSetting"

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

    .line 203
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 207
    :goto_0
    if-nez v2, :cond_0

    .line 208
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "McdiSetting"

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

    .line 212
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Ljava/io/IOException;
    const-string v3, "McdiSetting"

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

    .line 212
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleSetTimer(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 185
    if-nez p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 187
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBTimerArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableTimer:Landroid/widget/RadioButton;

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 188
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    :goto_0
    return-void

    .line 189
    :cond_0
    if-ne v2, p1, :cond_1

    .line 190
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBTimerArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBSetTimer:Landroid/widget/RadioButton;

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 192
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 194
    :cond_1
    const-string v0, "McdiSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initUIByData()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 124
    const-string v3, "McdiSetting"

    const-string v4, "initUIByData()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "cat /proc/spm_fs/mcdi_mode"

    .line 127
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, output:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 130
    const-string v3, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 135
    const/4 v3, -0x1

    iput v3, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mMcdiMode:I

    .line 137
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mMcdiMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget v4, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mMcdiMode:I

    aget-object v3, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 147
    :goto_2
    const-string v0, "cat /proc/spm_fs/mcdi_timer"

    .line 148
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    if-nez v2, :cond_1

    .line 151
    const-string v3, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "McdiSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NumberFormatException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 144
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v3, "McdiSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMcdiMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mMcdiMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IndexOutOfBoundsException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 155
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const-string v3, "0"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 156
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->handleSetTimer(I)V

    goto/16 :goto_0

    .line 158
    :cond_2
    invoke-direct {p0, v7}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->handleSetTimer(I)V

    .line 159
    iget-object v3, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setMcdiMode(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mcdi_mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/proc/spm_fs/mcdi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 284
    return-void
.end method

.method private setTimerVal(Ljava/lang/String;)V
    .locals 3
    .parameter "val"

    .prologue
    .line 289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "echo \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "timer_val_ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/proc/spm_fs/mcdi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 291
    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 273
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 276
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 277
    return-void
.end method

.method private validateSetting()Z
    .locals 6

    .prologue
    const v5, 0x7f08056a

    const/4 v3, 0x0

    .line 227
    iget-object v4, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableMcdi:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    const v4, 0x7f080561

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 245
    .end local v1           #msg:Ljava/lang/String;
    :goto_0
    return v3

    .line 234
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 240
    .local v2, timerVal:I
    const/16 v4, 0xf

    if-lt v2, v4, :cond_1

    const v4, 0xf4240

    if-gt v2, v4, :cond_1

    .line 241
    const/4 v3, 0x1

    goto :goto_0

    .line 235
    .end local v2           #timerVal:I
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 237
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #msg:Ljava/lang/String;
    .restart local v2       #timerVal:I
    :cond_1
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private visibleSetTimerUI(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 180
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mSetTimerControler:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    return-void

    .line 178
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

    .line 303
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 304
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 350
    const-string v1, "McdiSetting"

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

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 306
    :sswitch_0
    if-eqz p2, :cond_0

    .line 307
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableMcdi:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 309
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->visibleSetTimerUI(Z)V

    .line 310
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->setMcdiMode(I)V

    .line 311
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 317
    :sswitch_1
    if-eqz p2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiOnly:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 320
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->visibleSetTimerUI(Z)V

    .line 321
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->setMcdiMode(I)V

    .line 322
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 328
    :sswitch_2
    if-eqz p2, :cond_0

    .line 329
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiSodi:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->checkOneRadio([Landroid/widget/RadioButton;Landroid/widget/RadioButton;Z)V

    .line 331
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->visibleSetTimerUI(Z)V

    .line 332
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->setMcdiMode(I)V

    .line 333
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 339
    :sswitch_3
    if-eqz p2, :cond_0

    .line 340
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->setTimerVal(Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->handleSetTimer(I)V

    goto :goto_0

    .line 345
    :sswitch_4
    if-eqz p2, :cond_0

    .line 346
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->handleSetTimer(I)V

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0132 -> :sswitch_4
        0x7f0b02d1 -> :sswitch_0
        0x7f0b02d2 -> :sswitch_1
        0x7f0b02d3 -> :sswitch_2
        0x7f0b02d5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 253
    .local v1, id:I
    packed-switch v1, :pswitch_data_0

    .line 267
    const-string v4, "McdiSetting"

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

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 255
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->validateSetting()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    iget-object v4, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->setTimerVal(Ljava/lang/String;)V

    .line 257
    const v4, 0x7f080569

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, msg:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 262
    .end local v2           #msg:Ljava/lang/String;
    :pswitch_1
    const-string v0, "cat /proc/spm_fs/mcdi"

    .line 263
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, output:Ljava/lang/String;
    const-string v4, "MCDI Setting"

    invoke-direct {p0, v4, v3}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b02d7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    const v0, 0x7f0b02d1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableMcdi:Landroid/widget/RadioButton;

    .line 93
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableMcdi:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 94
    const v0, 0x7f0b02d2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiOnly:Landroid/widget/RadioButton;

    .line 95
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiOnly:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    const v0, 0x7f0b02d3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiSodi:Landroid/widget/RadioButton;

    .line 97
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiSodi:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 98
    const v0, 0x7f0b02d5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableTimer:Landroid/widget/RadioButton;

    .line 99
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableTimer:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 100
    const v0, 0x7f0b0132

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBSetTimer:Landroid/widget/RadioButton;

    .line 101
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBSetTimer:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    const v0, 0x7f0b02d7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnStartTimer:Landroid/widget/Button;

    .line 103
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnStartTimer:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f0b02d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnGetMcdiSetting:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mBtnGetMcdiSetting:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0b02d6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mEditTimerVal:Landroid/widget/EditText;

    .line 107
    const v0, 0x7f0b02d4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mSetTimerControler:Landroid/widget/LinearLayout;

    .line 108
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    .line 109
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableMcdi:Landroid/widget/RadioButton;

    aput-object v1, v0, v2

    .line 110
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiOnly:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 111
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBModeArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBMcdiSodi:Landroid/widget/RadioButton;

    aput-object v1, v0, v4

    .line 112
    new-array v0, v4, [Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBTimerArray:[Landroid/widget/RadioButton;

    .line 113
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBTimerArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBDisableTimer:Landroid/widget/RadioButton;

    aput-object v1, v0, v2

    .line 114
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBTimerArray:[Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mRBSetTimer:Landroid/widget/RadioButton;

    aput-object v1, v0, v3

    .line 115
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mPowerManager:Landroid/os/PowerManager;

    .line 116
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "McdiSetting"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 117
    invoke-direct {p0}, Lcom/mediatek/engineermode/mcdi/McdiSetting;->initUIByData()V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/mediatek/engineermode/mcdi/McdiSetting;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 298
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 299
    return-void
.end method
