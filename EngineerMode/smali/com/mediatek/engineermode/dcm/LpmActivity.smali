.class public Lcom/mediatek/engineermode/dcm/LpmActivity;
.super Landroid/app/Activity;
.source "LpmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_START:Ljava/lang/String; = "echo 1 1 %1$d %2$d %3$s > /proc/lpm/dbg"

.field private static final CMD_STOP:Ljava/lang/String; = "echo 1 0 0 0 0 > /proc/lpm/dbg"

.field private static final FS_DBG:Ljava/lang/String; = "/proc/lpm/dbg"

.field private static final FS_HELP:Ljava/lang/String; = "/proc/lpm/help"

.field private static final FS_STA:Ljava/lang/String; = "/proc/lpm/sta"

.field private static final LPM_PREF_NAME:Ljava/lang/String; = "DCM_LPM"

.field private static final PREF_KEY_GOOD_DUR:Ljava/lang/String; = "GOOD_DUR"

.field private static final PREF_KEY_GOOD_DUR_EDIT:Ljava/lang/String; = "GOOD_DUR_EDIT"

.field private static final PREF_KEY_HIGH_DUR:Ljava/lang/String; = "HIGH_DUR"

.field private static final PREF_KEY_LONGEST_HIGH:Ljava/lang/String; = "LONGEST_HIGH"

.field private static final PREF_KEY_LOW2HIGH:Ljava/lang/String; = "LOW2HIGH"

.field private static final PREF_KEY_REF_CLK:Ljava/lang/String; = "REF_CLK"

.field private static final PREF_KEY_SIGNAL:Ljava/lang/String; = "SIGNAL"

.field private static final PREF_KEY_STARTED:Ljava/lang/String; = "STARTED"

.field private static final PREF_KEY_TOTAL_TIME:Ljava/lang/String; = "TOTAL_TIME"

.field private static final RESULT_NUM:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LCM"


# instance fields
.field private mBtnHelp:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mEditGoodDur:Landroid/widget/EditText;

.field private mEditGoodDurInput:Landroid/widget/EditText;

.field private mEditHighDur:Landroid/widget/EditText;

.field private mEditLongestHigh:Landroid/widget/EditText;

.field private mEditLow2high:Landroid/widget/EditText;

.field private mEditResults:[Landroid/widget/EditText;

.field private mEditTotalTime:Landroid/widget/EditText;

.field private mSpnClocks:Landroid/widget/Spinner;

.field private mSpnSignals:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private backupUIState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 185
    const-string v2, "DCM_LPM"

    invoke-virtual {p0, v2, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 186
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "REF_CLK"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnClocks:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v2, "SIGNAL"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnSignals:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 189
    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    const-string v2, "STARTED"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 194
    :goto_0
    const-string v2, "GOOD_DUR_EDIT"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDurInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    const-string v2, "TOTAL_TIME"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditTotalTime:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v2, "LOW2HIGH"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLow2high:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v2, "HIGH_DUR"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditHighDur:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    const-string v2, "LONGEST_HIGH"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLongestHigh:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    const-string v2, "GOOD_DUR"

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDur:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void

    .line 192
    :cond_0
    const-string v2, "STARTED"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private checkStatus(Z)Z
    .locals 8
    .parameter "isStart"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 207
    const-string v0, "cat /proc/lpm/sta"

    .line 208
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, output:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 213
    const-string v6, " *= *"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v3, v6, v4

    .line 214
    .local v3, status:Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 217
    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 218
    const v6, 0x7f08058f

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, msg:Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080596

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 230
    :goto_1
    return v4

    .line 220
    .end local v1           #msg:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 222
    const v6, 0x7f080590

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #msg:Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f080599

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #msg:Ljava/lang/String;
    invoke-static {p0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    move v4, v5

    .line 230
    goto :goto_1
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 294
    const/4 v2, -0x1

    .line 295
    .local v2, ret:I
    const-string v3, "LCM"

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

    .line 298
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 302
    :goto_0
    if-nez v2, :cond_0

    .line 303
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "LCM"

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

    .line 307
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, e:Ljava/io/IOException;
    const-string v3, "LCM"

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

    .line 307
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleClickStartBtn()V
    .locals 12

    .prologue
    const v9, 0x7f080598

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 145
    iget-object v7, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDurInput:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 146
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, msg:Ljava/lang/String;
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 163
    .end local v4           #msg:Ljava/lang/String;
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v7, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDurInput:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, goodDur:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-direct {p0, v1, v7}, Lcom/mediatek/engineermode/dcm/LpmActivity;->parseLongStr(Ljava/lang/String;I)J

    move-result-wide v2

    .line 152
    .local v2, goodDurVal:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-ltz v7, :cond_1

    const-wide/32 v7, 0xffff

    cmp-long v7, v2, v7

    if-lez v7, :cond_2

    .line 153
    :cond_1
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    .restart local v4       #msg:Ljava/lang/String;
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    .end local v4           #msg:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnClocks:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 158
    .local v5, refClk:I
    iget-object v7, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnSignals:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 160
    .local v6, signal:I
    const-string v7, "echo 1 1 %1$d %2$d %3$s > /proc/lpm/dbg"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 162
    invoke-direct {p0, v11}, Lcom/mediatek/engineermode/dcm/LpmActivity;->checkStatus(Z)Z

    goto :goto_0
.end method

.method private handleClickStopBtn()V
    .locals 6

    .prologue
    .line 246
    const-string v0, "echo 1 0 0 0 0 > /proc/lpm/dbg"

    .line 247
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/LpmActivity;->checkStatus(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 250
    const-string v0, "cat /proc/lpm/dbg"

    .line 251
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, output:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 255
    const-string v4, " *, *"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, results:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 257
    iget-object v4, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    aget-object v4, v4, v1

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    .end local v1           #i:I
    .end local v2           #output:Ljava/lang/String;
    .end local v3           #results:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parseLongStr(Ljava/lang/String;I)J
    .locals 5
    .parameter "longStr"
    .parameter "radix"

    .prologue
    .line 235
    const-wide/16 v1, -0x1

    .line 237
    .local v1, longVal:J
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    move-wide v3, v1

    .line 241
    :goto_0
    return-wide v3

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private restoreUIState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    const-string v1, "DCM_LPM"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnClocks:Landroid/widget/Spinner;

    const-string v2, "REF_CLK"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 168
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnSignals:Landroid/widget/Spinner;

    const-string v2, "SIGNAL"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 169
    const-string v1, "STARTED"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDurInput:Landroid/widget/EditText;

    const-string v2, "GOOD_DUR_EDIT"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditTotalTime:Landroid/widget/EditText;

    const-string v2, "TOTAL_TIME"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLow2high:Landroid/widget/EditText;

    const-string v2, "LOW2HIGH"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditHighDur:Landroid/widget/EditText;

    const-string v2, "HIGH_DUR"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLongestHigh:Landroid/widget/EditText;

    const-string v2, "LONGEST_HIGH"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDur:Landroid/widget/EditText;

    const-string v2, "GOOD_DUR"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 174
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 311
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

    .line 314
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 315
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 268
    .local v1, idx:I
    sparse-switch v1, :sswitch_data_0

    .line 282
    const-string v3, "LCM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() Unknown view id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-void

    .line 270
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->handleClickStartBtn()V

    goto :goto_0

    .line 273
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->handleClickStopBtn()V

    goto :goto_0

    .line 276
    :sswitch_2
    const-string v0, "cat /proc/lpm/help"

    .line 277
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, output:Ljava/lang/String;
    const v3, 0x7f08058c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/mediatek/engineermode/dcm/LpmActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 268
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0120 -> :sswitch_0
        0x7f0b0121 -> :sswitch_1
        0x7f0b0128 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 108
    const v0, 0x7f0b011e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnClocks:Landroid/widget/Spinner;

    .line 109
    const v0, 0x7f0b011f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mSpnSignals:Landroid/widget/Spinner;

    .line 110
    const v0, 0x7f0b0120

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0b0121

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnHelp:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mBtnHelp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f0b0122

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDurInput:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0b0123

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditTotalTime:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0b0124

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLow2high:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditHighDur:Landroid/widget/EditText;

    .line 121
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLongestHigh:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDur:Landroid/widget/EditText;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditTotalTime:Landroid/widget/EditText;

    aput-object v1, v0, v3

    .line 126
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLow2high:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditHighDur:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditLongestHigh:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditResults:[Landroid/widget/EditText;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/LpmActivity;->mEditGoodDur:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 131
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/lpm/dbg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const-string v0, "Don\'t Support This Feature!"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->restoreUIState()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/mediatek/engineermode/dcm/LpmActivity;->backupUIState()V

    .line 290
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 291
    return-void
.end method
