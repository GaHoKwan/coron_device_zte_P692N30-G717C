.class public Lcom/mediatek/engineermode/dcm/ApdcmActivity;
.super Landroid/app/Activity;
.source "ApdcmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final APDCM_NUM:I = 0x7

.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_SET_DCM:Ljava/lang/String; = "echo 1 0 %1$d %2$s > /proc/dcm/dbg"

.field private static final FS_DBG:Ljava/lang/String; = "/proc/dcm/dbg"

.field private static final FS_DUMPREGS:Ljava/lang/String; = "/proc/dcm/dumpregs"

.field private static final FS_HELP:Ljava/lang/String; = "/proc/dcm/help"

.field private static final TAG:Ljava/lang/String; = "APDCM"


# instance fields
.field private mApdcmEdits:[Landroid/widget/EditText;

.field private mApdcmTags:[Ljava/lang/String;

.field private mBtnArmRead:Landroid/widget/Button;

.field private mBtnArmSet:Landroid/widget/Button;

.field private mBtnDumpRegs:Landroid/widget/Button;

.field private mBtnEmiRead:Landroid/widget/Button;

.field private mBtnEmiSet:Landroid/widget/Button;

.field private mBtnHelp:Landroid/widget/Button;

.field private mBtnInfraRead:Landroid/widget/Button;

.field private mBtnInfraSet:Landroid/widget/Button;

.field private mBtnMfgRead:Landroid/widget/Button;

.field private mBtnMfgSet:Landroid/widget/Button;

.field private mBtnMiscRead:Landroid/widget/Button;

.field private mBtnMiscSet:Landroid/widget/Button;

.field private mBtnMmRead:Landroid/widget/Button;

.field private mBtnMmSet:Landroid/widget/Button;

.field private mBtnPeriRead:Landroid/widget/Button;

.field private mBtnPeriSet:Landroid/widget/Button;

.field private mDcmStr:Ljava/lang/String;

.field private mEditArmDcm:Landroid/widget/EditText;

.field private mEditEmiDcm:Landroid/widget/EditText;

.field private mEditInfraDcm:Landroid/widget/EditText;

.field private mEditMfgDcm:Landroid/widget/EditText;

.field private mEditMiscDcm:Landroid/widget/EditText;

.field private mEditMmDcm:Landroid/widget/EditText;

.field private mEditPeriDcm:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    new-array v0, v1, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 326
    const/4 v2, -0x1

    .line 327
    .local v2, ret:I
    const-string v3, "APDCM"

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

    .line 330
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 334
    :goto_0
    if-nez v2, :cond_0

    .line 335
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "APDCM"

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

    .line 339
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Ljava/io/IOException;
    const-string v3, "APDCM"

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

    .line 339
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleClickReadBtn(I)V
    .locals 3
    .parameter "apdcmIdx"

    .prologue
    .line 216
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->setUiByData(IZ)V

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080589

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f080596

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, msg:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 220
    return-void
.end method

.method private handleClickSetBtn(I)V
    .locals 11
    .parameter "apdcmIdx"

    .prologue
    const v10, 0x7f080597

    const/16 v7, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v5, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 236
    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, msg:Ljava/lang/String;
    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 254
    :goto_0
    return-void

    .line 241
    .end local v4           #msg:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    aget-object v5, v5, p1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, dcmStr:Ljava/lang/String;
    invoke-direct {p0, v1, v7}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->parseLongStr(Ljava/lang/String;I)J

    move-result-wide v2

    .line 243
    .local v2, dcmVal:J
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-ltz v5, :cond_1

    const-string v5, "ffffffff"

    invoke-direct {p0, v5, v7}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->parseLongStr(Ljava/lang/String;I)J

    move-result-wide v5

    cmp-long v5, v2, v5

    if-lez v5, :cond_2

    .line 244
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DCM:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 245
    .restart local v4       #msg:Ljava/lang/String;
    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 249
    .end local v4           #msg:Ljava/lang/String;
    :cond_2
    const-string v5, "echo 1 0 %1$d %2$s > /proc/dcm/dbg"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f08058a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f080596

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .restart local v4       #msg:Ljava/lang/String;
    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private parseLongStr(Ljava/lang/String;I)J
    .locals 5
    .parameter "longStr"
    .parameter "radix"

    .prologue
    .line 223
    const-wide/16 v1, -0x1

    .line 225
    .local v1, longVal:J
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    move-wide v3, v1

    .line 229
    :goto_0
    return-wide v3

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private resolveFillData(Ljava/lang/String;I)Z
    .locals 9
    .parameter "outStr"
    .parameter "fillIdx"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x7

    .line 190
    const-string v6, " *, *\n *"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, entries:[Ljava/lang/String;
    array-length v6, v0

    if-eq v6, v8, :cond_0

    .line 192
    const-string v5, "APDCM"

    const-string v6, "resolveFillData() Resolve outStr fail, Invalid DCM Number"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :goto_0
    return v4

    .line 197
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v8, :cond_6

    .line 198
    if-eq p2, v8, :cond_1

    if-ne v1, p2, :cond_5

    .line 199
    :cond_1
    aget-object v6, v0, v1

    const-string v7, " *= *"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, keyValPair:[Ljava/lang/String;
    aget-object v3, v2, v5

    .line 201
    .local v3, val:Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    const-string v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 205
    :cond_2
    const-string v6, "0x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "0X"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 206
    :cond_3
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    :cond_4
    iget-object v6, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    aget-object v6, v6, v1

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v2           #keyValPair:[Ljava/lang/String;
    .end local v3           #val:Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    move v4, v5

    .line 211
    goto :goto_0
.end method

.method private setUiByData(IZ)V
    .locals 4
    .parameter "apdcmIdx"
    .parameter "showDlg"

    .prologue
    .line 173
    const-string v0, "cat /proc/dcm/dbg"

    .line 174
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, output:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 178
    const-string v2, "Feature Fail or Don\'t Support!"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 187
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 183
    if-eqz p2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mDcmStr:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->resolveFillData(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 343
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

    .line 346
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 262
    .local v1, idx:I
    packed-switch v1, :pswitch_data_0

    .line 320
    :pswitch_0
    const-string v4, "APDCM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick() Unknown view id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :goto_0
    return-void

    .line 264
    :pswitch_1
    const-string v0, "cat /proc/dcm/dumpregs"

    .line 265
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, output:Ljava/lang/String;
    const v4, 0x7f08058b

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, title:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #output:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_2
    const-string v0, "cat /proc/dcm/help"

    .line 271
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .restart local v2       #output:Ljava/lang/String;
    const v4, 0x7f08058c

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 273
    .restart local v3       #title:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    .end local v0           #cmd:Ljava/lang/String;
    .end local v2           #output:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 280
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 283
    :pswitch_5
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 286
    :pswitch_6
    invoke-direct {p0, v7}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 289
    :pswitch_7
    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 292
    :pswitch_8
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 295
    :pswitch_9
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickReadBtn(I)V

    goto :goto_0

    .line 299
    :pswitch_a
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 302
    :pswitch_b
    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 305
    :pswitch_c
    invoke-direct {p0, v6}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 308
    :pswitch_d
    invoke-direct {p0, v7}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 311
    :pswitch_e
    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 314
    :pswitch_f
    const/4 v4, 0x5

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 317
    :pswitch_10
    const/4 v4, 0x6

    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->handleClickSetBtn(I)V

    goto :goto_0

    .line 262
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0107
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_c
        :pswitch_0
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_8
        :pswitch_f
        :pswitch_0
        :pswitch_9
        :pswitch_10
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f030024

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    const v1, 0x7f0b0106

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditArmDcm:Landroid/widget/EditText;

    .line 106
    const v1, 0x7f0b0109

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditEmiDcm:Landroid/widget/EditText;

    .line 107
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditInfraDcm:Landroid/widget/EditText;

    .line 108
    const v1, 0x7f0b010f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditPeriDcm:Landroid/widget/EditText;

    .line 109
    const v1, 0x7f0b0112

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMiscDcm:Landroid/widget/EditText;

    .line 110
    const v1, 0x7f0b0115

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMmDcm:Landroid/widget/EditText;

    .line 111
    const v1, 0x7f0b0118

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMfgDcm:Landroid/widget/EditText;

    .line 112
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditArmDcm:Landroid/widget/EditText;

    aput-object v2, v1, v5

    .line 113
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditEmiDcm:Landroid/widget/EditText;

    aput-object v2, v1, v4

    .line 114
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditInfraDcm:Landroid/widget/EditText;

    aput-object v2, v1, v6

    .line 115
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditPeriDcm:Landroid/widget/EditText;

    aput-object v2, v1, v7

    .line 116
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    iget-object v2, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMiscDcm:Landroid/widget/EditText;

    aput-object v2, v1, v8

    .line 117
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMmDcm:Landroid/widget/EditText;

    aput-object v3, v1, v2

    .line 118
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mEditMfgDcm:Landroid/widget/EditText;

    aput-object v3, v1, v2

    .line 120
    const v1, 0x7f0b0107

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnArmRead:Landroid/widget/Button;

    .line 121
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnArmRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x7f0b010a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnEmiRead:Landroid/widget/Button;

    .line 123
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnEmiRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnInfraRead:Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnInfraRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f0b0110

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnPeriRead:Landroid/widget/Button;

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnPeriRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v1, 0x7f0b0113

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMiscRead:Landroid/widget/Button;

    .line 129
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMiscRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v1, 0x7f0b0116

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMmRead:Landroid/widget/Button;

    .line 131
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMmRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f0b0119

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMfgRead:Landroid/widget/Button;

    .line 133
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMfgRead:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v1, 0x7f0b0108

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnArmSet:Landroid/widget/Button;

    .line 136
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnArmSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnEmiSet:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnEmiSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnInfraSet:Landroid/widget/Button;

    .line 140
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnInfraSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f0b0111

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnPeriSet:Landroid/widget/Button;

    .line 142
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnPeriSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f0b0114

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMiscSet:Landroid/widget/Button;

    .line 144
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMiscSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f0b0117

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMmSet:Landroid/widget/Button;

    .line 146
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMmSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0b011a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMfgSet:Landroid/widget/Button;

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnMfgSet:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v1, 0x7f0b011b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnDumpRegs:Landroid/widget/Button;

    .line 151
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnDumpRegs:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v1, 0x7f0b011c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnHelp:Landroid/widget/Button;

    .line 153
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mBtnHelp:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const v2, 0x7f080581

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 156
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const v2, 0x7f080582

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 157
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const v2, 0x7f080583

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 158
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const v2, 0x7f080584

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    .line 159
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const v2, 0x7f080585

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    .line 160
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const/4 v2, 0x5

    const v3, 0x7f080586

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 161
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    const/4 v2, 0x6

    const v3, 0x7f080587

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 163
    const v1, 0x7f08057e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mDcmStr:Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmEdits:[Landroid/widget/EditText;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mApdcmTags:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->mDcmStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const/4 v1, 0x7

    invoke-direct {p0, v1, v4}, Lcom/mediatek/engineermode/dcm/ApdcmActivity;->setUiByData(IZ)V

    .line 168
    return-void
.end method
