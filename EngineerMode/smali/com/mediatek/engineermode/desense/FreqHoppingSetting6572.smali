.class public Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;
.super Landroid/app/Activity;
.source "FreqHoppingSetting6572.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final CAT:Ljava/lang/String; = "cat "

.field private static final CMD_DISABLE_HOP:Ljava/lang/String; = "echo 2 0 %1$d %2$s 0 0 0 0 > /proc/fhctl/dbg"

.field private static final CMD_DISABLE_SSC:Ljava/lang/String; = "echo 3 0 %1$d %2$s 0 0 0 0 > /proc/fhctl/dbg"

.field private static final CMD_ENABLE_SSC:Ljava/lang/String; = "echo 3 1 %1$d %2$s %3$s %4$s %5$s %6$s > /proc/fhctl/dbg"

.field private static final CMD_SET_HOP:Ljava/lang/String; = "echo 1 1 %1$s %2$s 0 0 0 0 > /proc/fhctl/dbg"

.field private static final CMD_TRIGGER_HOP:Ljava/lang/String; = "echo 2 1 %1$d %2$s %3$s 0 0 0 > /proc/fhctl/dbg"

.field private static final FS_DBG:Ljava/lang/String; = "/proc/fhctl/dbg"

.field private static final FS_DUMPREG:Ljava/lang/String; = "/proc/fhctl/dumpregs"

.field private static final FS_HELP:Ljava/lang/String; = "/proc/fhctl/help"

.field private static final IDX_DDS:I = 0x2

.field private static final IDX_DDS_MON:I = 0x3

.field private static final IDX_DF:I = 0x4

.field private static final IDX_DN:I = 0x7

.field private static final IDX_DT:I = 0x5

.field private static final IDX_HOP_EN:I = 0x1

.field private static final IDX_SSC_EN:I = 0x0

.field private static final IDX_UP:I = 0x6

.field private static final PLL_VAL_NUM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "FreqHoppingSet"


# instance fields
.field private mBtnDisableHop:Landroid/widget/Button;

.field private mBtnDisableSsc:Landroid/widget/Button;

.field private mBtnDumpAll:Landroid/widget/Button;

.field private mBtnEnableSsc:Landroid/widget/Button;

.field private mBtnHelp:Landroid/widget/Button;

.field private mBtnHopSet:Landroid/widget/Button;

.field private mBtnTriggerHop:Landroid/widget/Button;

.field private mEditDds:Landroid/widget/EditText;

.field private mEditHopDds:Landroid/widget/EditText;

.field private mEditHopDeltaFreq:Landroid/widget/EditText;

.field private mEditHopDeltaTime:Landroid/widget/EditText;

.field private mEditSscDeltaFreq:Landroid/widget/EditText;

.field private mEditSscDeltaTime:Landroid/widget/EditText;

.field private mEditSscDnLmt:Landroid/widget/EditText;

.field private mEditSscUpLmt:Landroid/widget/EditText;

.field private mPllValEntrys:[Ljava/lang/String;

.field private mPllsTag:[Ljava/lang/String;

.field private mSpnPll:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    return-void
.end method

.method private execCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "cmd"

    .prologue
    .line 390
    const/4 v2, -0x1

    .line 391
    .local v2, ret:I
    const-string v3, "FreqHoppingSet"

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

    .line 394
    :try_start_0
    invoke-static {p1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 398
    :goto_0
    if-nez v2, :cond_0

    .line 399
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, outStr:Ljava/lang/String;
    const-string v3, "FreqHoppingSet"

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

    .line 403
    .end local v1           #outStr:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 395
    :catch_0
    move-exception v0

    .line 396
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FreqHoppingSet"

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

    .line 403
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private handleClickDisableHop(Landroid/widget/Button;)V
    .locals 9
    .parameter "btn"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 246
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 248
    .local v2, pllIdx:I
    const-string v3, "echo 2 0 %1$d %2$s 0 0 0 0 > /proc/fhctl/dbg"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v6, v6, v8

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080376

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 252
    return-void
.end method

.method private handleClickDisableSsc(Landroid/widget/Button;)V
    .locals 9
    .parameter "btn"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 213
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 215
    .local v2, pllIdx:I
    const-string v3, "echo 3 0 %1$d %2$s 0 0 0 0 > /proc/fhctl/dbg"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v5, v5, v8

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f080376

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, msg:Ljava/lang/String;
    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 219
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 220
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 221
    return-void
.end method

.method private handleClickEnableSsc(Landroid/widget/Button;)V
    .locals 19
    .parameter "btn"

    .prologue
    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaFreq:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaTime:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscUpLmt:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDnLmt:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 173
    :cond_0
    const v14, 0x7f080375

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 210
    :goto_0
    return-void

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaFreq:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    .local v4, sscDF:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaTime:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 187
    .local v7, sscDT:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscUpLmt:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 188
    .local v12, sscUpLmt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDnLmt:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 189
    .local v10, sscDnLmt:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseHexStr(Ljava/lang/String;)J

    move-result-wide v5

    .line 190
    .local v5, sscDFVal:J
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseHexStr(Ljava/lang/String;)J

    move-result-wide v8

    .line 191
    .local v8, sscDTVal:J
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseDecStr(Ljava/lang/String;)I

    move-result v13

    .line 192
    .local v13, sscUpLmtVal:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseDecStr(Ljava/lang/String;)I

    move-result v11

    .line 193
    .local v11, sscDnLmtVal:I
    const-wide/16 v14, 0x0

    cmp-long v14, v5, v14

    if-ltz v14, :cond_2

    const-wide/16 v14, 0xf

    cmp-long v14, v5, v14

    if-gtz v14, :cond_2

    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-ltz v14, :cond_2

    const-wide/16 v14, 0xf

    cmp-long v14, v8, v14

    if-gtz v14, :cond_2

    if-ltz v13, :cond_2

    const/16 v14, 0x63

    if-gt v13, v14, :cond_2

    if-ltz v11, :cond_2

    const/16 v14, 0x63

    if-le v11, v14, :cond_3

    .line 197
    :cond_2
    const v14, 0x7f080375

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 201
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 203
    .local v3, pllIdx:I
    const-string v14, "echo 3 1 %1$d %2$s %3$s %4$s %5$s %6$s > /proc/fhctl/dbg"

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v4, v15, v16

    const/16 v16, 0x3

    aput-object v7, v15, v16

    const/16 v16, 0x4

    aput-object v12, v15, v16

    const/16 v16, 0x5

    aput-object v10, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, cmd:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f080376

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, msg:Ljava/lang/String;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 209
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private handleClickHopSet(Landroid/widget/Button;)V
    .locals 14
    .parameter "btn"

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0x7f080375

    const/4 v10, 0x0

    .line 147
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaFreq:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaTime:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 149
    :cond_0
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaFreq:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, hopDeltaFreq:Ljava/lang/String;
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaTime:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    .local v3, hopDeltaTime:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseHexStr(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 156
    .local v1, freq:Ljava/lang/Long;
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseHexStr(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 157
    .local v5, time:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-ltz v6, :cond_2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x1fffff

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v12

    if-ltz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xff

    cmp-long v6, v6, v8

    if-gtz v6, :cond_2

    .line 158
    const-string v6, "echo 1 1 %1$s %2$s 0 0 0 0 > /proc/fhctl/dbg"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v10

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080376

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, msg:Ljava/lang/String;
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 163
    .end local v0           #cmd:Ljava/lang/String;
    .end local v4           #msg:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method private handleClickTriggerHop(Landroid/widget/Button;)V
    .locals 12
    .parameter "btn"

    .prologue
    const v8, 0x7f080375

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 225
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDds:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 226
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 243
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDds:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, hopDds:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->parseHexStr(Ljava/lang/String;)J

    move-result-wide v2

    .line 232
    .local v2, hopDdsVal:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_1

    const-wide/32 v6, 0x1fffff

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    .line 233
    :cond_1
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 237
    :cond_2
    iget-object v6, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 239
    .local v5, pllIdx:I
    const-string v6, "echo 2 1 %1$d %2$s %3$s 0 0 0 > /proc/fhctl/dbg"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v9, v9, v11

    aput-object v9, v7, v8

    aput-object v1, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f080376

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, msg:Ljava/lang/String;
    invoke-static {p0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private handleSelectPll(I)V
    .locals 6
    .parameter "index"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 292
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDds:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    const-string v0, "cat /proc/fhctl/dbg"

    .line 297
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, output:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 300
    const-string v2, "Feature Fail or Don\'t Support!"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 301
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 319
    :goto_0
    return-void

    .line 304
    :cond_0
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllsTag:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {p0, v2, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-direct {p0, v1, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->resolvePllDataById(Ljava/lang/String;I)V

    .line 307
    const-string v2, "0"

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 314
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditDds:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaFreq:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaTime:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscUpLmt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDnLmt:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 311
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private parseDecStr(Ljava/lang/String;)I
    .locals 3
    .parameter "decStr"

    .prologue
    .line 332
    const/4 v0, -0x1

    .line 334
    .local v0, decVal:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v2, v0

    .line 338
    :goto_0
    return v2

    .line 335
    :catch_0
    move-exception v1

    .line 336
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private parseHexStr(Ljava/lang/String;)J
    .locals 5
    .parameter "hexStr"

    .prologue
    .line 322
    const-wide/16 v1, -0x1

    .line 324
    .local v1, hexVal:J
    const/16 v3, 0x10

    :try_start_0
    invoke-static {p1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    move-wide v3, v1

    .line 328
    :goto_0
    return-wide v3

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method private resolvePllData(Ljava/lang/String;)Z
    .locals 8
    .parameter "infoStr"

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    .line 372
    const-string v4, " *, *"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, pairs:[Ljava/lang/String;
    array-length v4, v2

    if-eq v4, v7, :cond_1

    .line 374
    const-string v3, "FreqHoppingSet"

    const-string v4, "resolvePllData() resolve fail, unknown format"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v3, 0x0

    .line 386
    :cond_0
    return v3

    .line 378
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v7, :cond_0

    .line 379
    aget-object v4, v2, v1

    const-string v5, " *= *"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, entry:[Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v5, v0, v3

    aput-object v5, v4, v1

    .line 381
    iget-object v4, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v4, v4, v1

    const-string v5, "0X"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 382
    :cond_2
    iget-object v4, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    iget-object v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllValEntrys:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 378
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private resolvePllDataById(Ljava/lang/String;I)V
    .locals 7
    .parameter "outStr"
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 343
    move-object v0, p1

    .line 344
    .local v0, output:Ljava/lang/String;
    const-string v2, " *\n *"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, pllInfos:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 346
    const-string v2, "FreqHoppingSet"

    const-string v3, "resolve PLL Data fail"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 350
    aget-object v2, v1, v5

    aget-object v3, v1, v5

    const-string v4, "ssc_en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 351
    aget-object v2, v1, v6

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 352
    aget-object v2, v1, v6

    aget-object v3, v1, v6

    const-string v4, "ssc_en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 353
    packed-switch p2, :pswitch_data_0

    .line 361
    const-string v2, "FreqHoppingSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resolvePllDataById() Unknown index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 355
    :pswitch_0
    aget-object v2, v1, v5

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->resolvePllData(Ljava/lang/String;)Z

    goto :goto_0

    .line 358
    :pswitch_1
    aget-object v2, v1, v6

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->resolvePllData(Ljava/lang/String;)Z

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 407
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

    .line 410
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 411
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 285
    :pswitch_0
    const-string v2, "FreqHoppingSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() unknown view id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local p1
    :goto_0
    return-void

    .line 260
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleClickHopSet(Landroid/widget/Button;)V

    goto :goto_0

    .line 263
    .restart local p1
    :pswitch_2
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleClickEnableSsc(Landroid/widget/Button;)V

    goto :goto_0

    .line 266
    .restart local p1
    :pswitch_3
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleClickDisableSsc(Landroid/widget/Button;)V

    goto :goto_0

    .line 269
    .restart local p1
    :pswitch_4
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleClickTriggerHop(Landroid/widget/Button;)V

    goto :goto_0

    .line 272
    .restart local p1
    :pswitch_5
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleClickDisableHop(Landroid/widget/Button;)V

    goto :goto_0

    .line 275
    .restart local p1
    :pswitch_6
    const-string v0, "cat /proc/fhctl/dumpregs"

    .line 276
    .local v0, cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, output:Ljava/lang/String;
    const v2, 0x7f080372

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 280
    .end local v0           #cmd:Ljava/lang/String;
    .end local v1           #output:Ljava/lang/String;
    :pswitch_7
    const-string v0, "cat /proc/fhctl/help"

    .line 281
    .restart local v0       #cmd:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .restart local v1       #output:Ljava/lang/String;
    const-string v2, "Help"

    invoke-direct {p0, v2, v1}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0144
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 113
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaFreq:Landroid/widget/EditText;

    .line 114
    const v0, 0x7f0b0143

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDeltaTime:Landroid/widget/EditText;

    .line 115
    const v0, 0x7f0b0146

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditDds:Landroid/widget/EditText;

    .line 116
    const v0, 0x7f0b0147

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaFreq:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0b0148

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDeltaTime:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0b0149

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscUpLmt:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0b014a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditSscDnLmt:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0b014d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mEditHopDds:Landroid/widget/EditText;

    .line 122
    const v0, 0x7f0b0144

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnHopSet:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnHopSet:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0b014b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnEnableSsc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0b014c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableSsc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0b014e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnTriggerHop:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnTriggerHop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0b014f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableHop:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDisableHop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0b0150

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDumpAll:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnDumpAll:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v0, 0x7f0b0151

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnHelp:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mBtnHelp:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v0, 0x7f0b0145

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    .line 138
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mSpnPll:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->mPllsTag:[Ljava/lang/String;

    .line 141
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lcom/mediatek/engineermode/desense/FreqHoppingSetting6572;->handleSelectPll(I)V

    .line 417
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 421
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "FreqHoppingSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNothingSelected() + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method
