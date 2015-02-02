.class public Lcom/mediatek/engineermode/desense/FreqHoppingSet;
.super Landroid/app/Activity;
.source "FreqHoppingSet.java"


# static fields
.field private static final DIALOG_ID_SHOWALL:I = 0x0

.field private static final DIALOG_ID_SHOWPLL:I = 0x1

.field private static final EDITTEXT_SIZE:I = 0x5

.field private static final FAIL:Ljava/lang/String; = " fail"

.field private static final FILE_FREQ_DUMPREGS:Ljava/lang/String; = "/proc/freqhopping/dumpregs"

.field private static final FILE_FREQ_HOPPING_DEBUG:Ljava/lang/String; = "/proc/freqhopping/freqhopping_debug"

.field private static final FILE_FREQ_STATUS:Ljava/lang/String; = "/proc/freqhopping/status"

.field private static final FREQ_HOPPING_SIZE:I = 0x6

.field private static final PATSTR:Ljava/lang/String; = "\\=[\\s]*?\\d+\\="

.field private static final PLL_NAME_PATTERN:Ljava/lang/String; = "\\=\\w*PLL\\w*"

.field private static final RADIX_16:I = 0x10

.field private static final SUCCESS:Ljava/lang/String; = " success"

.field private static final TAG:Ljava/lang/String; = "EM/FreqHoppingSet"


# instance fields
.field private final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnDisable:Landroid/widget/Button;

.field private mBtnEnable:Landroid/widget/Button;

.field private mBtnReadAll:Landroid/widget/Button;

.field private mEtArray:[Landroid/widget/EditText;

.field private mEtDds:Landroid/widget/EditText;

.field private mEtDeltaFreq:Landroid/widget/EditText;

.field private mEtDeltaTime:Landroid/widget/EditText;

.field private mEtLimitDown:Landroid/widget/EditText;

.field private mEtLimitUpper:Landroid/widget/EditText;

.field private mFreqHopping:[I

.field private mPllCount:I

.field private mSpPlls:Landroid/widget/Spinner;

.field private final mSpinnerSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    .line 57
    new-instance v0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet$1;-><init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpinnerSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 70
    new-instance v0, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet$2;-><init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/desense/FreqHoppingSet;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->selectItem(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/desense/FreqHoppingSet;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->validateInput(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->enableFreqHopping()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->disableFreqHopping()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/desense/FreqHoppingSet;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->readAllFreqHopping()V

    return-void
.end method

.method private disableAllBtn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnEnable:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnDisable:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnReadAll:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 418
    return-void
.end method

.method private disableFreqHopping()V
    .locals 6

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, bSuccess:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v2, strBuilder:Ljava/lang/StringBuilder;
    const-string v3, "echo 2 3 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v3, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string v3, " 0 0 0 0 0 > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v3, "/proc/freqhopping/freqhopping_debug"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string v3, "EM/FreqHoppingSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const/4 v0, 0x1

    .line 268
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateCurrentStatus()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f080362

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_1

    const-string v3, " success"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 278
    return-void

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, e:Ljava/io/IOException;
    const-string v3, "EM/FreqHoppingSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disable freqhopping IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v3, " fail"

    goto :goto_1
.end method

.method private enableFreqHopping()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, bSuccess:Z
    iget-object v8, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 208
    .local v1, bEmpty:Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v7, strBuilder:Ljava/lang/StringBuilder;
    if-eqz v1, :cond_1

    .line 210
    const-string v8, "echo 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v8, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v8, "/proc/freqhopping/status"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 229
    if-eqz v1, :cond_3

    .line 230
    const/4 v2, 0x1

    .line 231
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateCurrentStatus()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :cond_0
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f080362

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v2, :cond_4

    const-string v8, " success"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 254
    return-void

    .line 216
    :cond_1
    const-string v8, "echo 3 0 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v8, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    .local v0, arr$:[Landroid/widget/EditText;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_3
    if-ge v5, v6, :cond_2

    aget-object v4, v0, v5

    .line 219
    .local v4, edt:Landroid/widget/EditText;
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 222
    .end local v4           #edt:Landroid/widget/EditText;
    :cond_2
    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v8, "/proc/freqhopping/freqhopping_debug"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable command 1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 233
    .end local v0           #arr$:[Landroid/widget/EditText;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 234
    const-string v8, "echo 1 1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v8, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 236
    const-string v8, " 1 0 0 0 0 > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    const-string v8, "/proc/freqhopping/freqhopping_debug"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable command 2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 241
    const/4 v2, 0x1

    .line 242
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateCurrentStatus()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, e:Ljava/io/IOException;
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "enable freqhopping IOException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 249
    .end local v3           #e:Ljava/io/IOException;
    :cond_4
    const-string v8, " fail"

    goto/16 :goto_2
.end method

.method private getFreqHopDebugMsg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v3, "cat /proc/freqhopping/freqhopping_debug"

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v2

    .line 373
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 374
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 379
    .end local v2           #ret:I
    :cond_0
    :goto_0
    return-object v1

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/FreqHoppingSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFreqHopDebugMsg IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getFreqHopMsg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 385
    .local v1, result:Ljava/lang/String;
    :try_start_0
    const-string v3, "cat /proc/freqhopping/dumpregs"

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v2

    .line 386
    .local v2, ret:I
    if-nez v2, :cond_0

    .line 387
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_0
    const-string v3, "cat /proc/freqhopping/status"

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v2

    .line 390
    if-nez v2, :cond_1

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 396
    .end local v2           #ret:I
    :cond_1
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/FreqHoppingSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFreqHopMsg IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initPllSpinnerItems(Landroid/widget/Spinner;)I
    .locals 10
    .parameter "pllSpn"

    .prologue
    const/4 v6, -0x1

    .line 135
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->getFreqHopDebugMsg()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, debugMsg:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 137
    const-string v7, "\\=\\w*PLL\\w*"

    const/4 v8, 0x2

    invoke-static {v7, v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 138
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 139
    .local v1, matcher:Ljava/util/regex/Matcher;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v4, pllList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 141
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 142
    .local v5, pllName:Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v5           #pllName:Ljava/lang/String;
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    iput v7, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    .line 145
    iget v7, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    if-lez v7, :cond_1

    .line 147
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v3, p0, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 149
    .local v3, pllAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v3, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 151
    invoke-virtual {p1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 152
    const/4 v6, 0x0

    .line 160
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    .end local v3           #pllAdatper:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v4           #pllList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return v6

    .line 154
    .restart local v1       #matcher:Ljava/util/regex/Matcher;
    .restart local v2       #pattern:Ljava/util/regex/Pattern;
    .restart local v4       #pllList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v7, "EM/FreqHoppingSet"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "init pll spinner fail; mPllCount:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 159
    .end local v1           #matcher:Ljava/util/regex/Matcher;
    .end local v2           #pattern:Ljava/util/regex/Pattern;
    .end local v4           #pllList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "EM/FreqHoppingSet"

    const-string v8, "init pll spinner fail; debugMsg = null"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readAllFreqHopping()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 282
    return-void
.end method

.method private selectItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateHoppingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateBtnStatus(I)V

    .line 334
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->disableAllBtn()V

    .line 331
    const v0, 0x7f080363

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateBtnStatus(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 400
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mFreqHopping:[I

    aget v0, v0, p1

    if-gez v0, :cond_1

    .line 402
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->disableAllBtn()V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mFreqHopping:[I

    aget v0, v0, p1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->updateBtns(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateBtns(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    const/4 v1, 0x1

    .line 409
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnEnable:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 410
    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnDisable:Landroid/widget/Button;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 411
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnReadAll:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 412
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCurrentStatus()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->selectItem(I)V

    .line 166
    return-void
.end method

.method private updateHoppingStatus()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    .line 337
    const/4 v6, 0x0

    .line 338
    .local v6, result:Z
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->getFreqHopDebugMsg()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, debugMsg:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 340
    const-string v9, "\\=[\\s]*?\\d+\\="

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 341
    .local v5, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 342
    .local v3, m:Ljava/util/regex/Matcher;
    const/4 v2, 0x0

    .line 344
    .local v2, index:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    iget v9, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    if-ge v2, v9, :cond_1

    .line 345
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 346
    .local v4, msg:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 347
    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 349
    .local v7, value:I
    const-string v9, "EM/FreqHoppingSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v9, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mFreqHopping:[I

    aput v7, v9, v2

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v4           #msg:Ljava/lang/String;
    .end local v7           #value:I
    :cond_1
    iget v9, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    if-ne v2, v9, :cond_3

    move v6, v8

    .line 366
    .end local v2           #index:I
    .end local v3           #m:Ljava/util/regex/Matcher;
    .end local v5           #pattern:Ljava/util/regex/Pattern;
    :cond_2
    :goto_1
    return v6

    .line 354
    .restart local v2       #index:I
    .restart local v3       #m:Ljava/util/regex/Matcher;
    .restart local v5       #pattern:Ljava/util/regex/Pattern;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 355
    :catch_0
    move-exception v1

    .line 356
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateHoppingStatus IllegalStateException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 359
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateHoppingStatus IndexOutOfBoundsException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 361
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v1

    .line 362
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v8, "EM/FreqHoppingSet"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateHoppingStatus NumberFormatException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private validateInput(Z)Z
    .locals 8
    .parameter "bEtInput"

    .prologue
    const/4 v6, 0x5

    .line 285
    const/4 v3, 0x1

    .line 286
    .local v3, result:Z
    if-eqz p1, :cond_2

    .line 288
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 289
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, input:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_6

    .line 292
    :cond_0
    const/4 v3, 0x0

    .line 296
    .end local v2           #input:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_2

    .line 297
    const/4 v3, 0x1

    .line 298
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_2

    .line 299
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 301
    .restart local v2       #input:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_7

    .line 302
    const/4 v3, 0x0

    .line 313
    .end local v1           #index:I
    .end local v2           #input:Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v3, :cond_4

    .line 314
    iget-object v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v4

    .line 315
    .local v4, select:I
    if-ltz v4, :cond_3

    iget v5, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    if-lt v4, v5, :cond_4

    .line 316
    :cond_3
    const/4 v3, 0x0

    .line 319
    .end local v4           #select:I
    :cond_4
    if-nez v3, :cond_5

    .line 320
    const v5, 0x7f080364

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 323
    :cond_5
    return v3

    .line 288
    .restart local v1       #index:I
    .restart local v2       #input:Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 298
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 307
    .end local v2           #input:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "EM/FreqHoppingSet"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "validate input NumberFormatException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/freqhopping/freqhopping_debug"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const v0, 0x7f080361

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 102
    const-string v0, "EM/FreqHoppingSet"

    const-string v1, "FreqHoppingSet file not exists"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 132
    :goto_0
    return-void

    .line 106
    :cond_0
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 107
    const v0, 0x7f0b0139

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    .line 108
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpinnerSelectListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mSpPlls:Landroid/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->initPllSpinnerItems(Landroid/widget/Spinner;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    const-string v0, "init pll spinner fail"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 115
    :cond_1
    iget v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mPllCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mFreqHopping:[I

    .line 116
    const v0, 0x7f0b013a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDds:Landroid/widget/EditText;

    .line 117
    const v0, 0x7f0b013b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDeltaFreq:Landroid/widget/EditText;

    .line 118
    const v0, 0x7f0b013c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDeltaTime:Landroid/widget/EditText;

    .line 119
    const v0, 0x7f0b013d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtLimitUpper:Landroid/widget/EditText;

    .line 120
    const v0, 0x7f0b013e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtLimitDown:Landroid/widget/EditText;

    .line 121
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDds:Landroid/widget/EditText;

    aput-object v1, v0, v2

    .line 122
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDeltaFreq:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 123
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtDeltaTime:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtLimitUpper:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtArray:[Landroid/widget/EditText;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mEtLimitDown:Landroid/widget/EditText;

    aput-object v2, v0, v1

    .line 126
    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnEnable:Landroid/widget/Button;

    .line 127
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnEnable:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    const v0, 0x7f0b0140

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnDisable:Landroid/widget/Button;

    .line 129
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnDisable:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v0, 0x7f0b0141

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnReadAll:Landroid/widget/Button;

    .line 131
    iget-object v0, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnReadAll:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f080365

    const/4 v3, 0x0

    .line 170
    const/4 v1, 0x0

    .line 171
    .local v1, dialog:Landroid/app/Dialog;
    if-nez p1, :cond_1

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 175
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 176
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->getFreqHopMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    const-string v2, "OK"

    new-instance v3, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet$3;-><init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 202
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-object v1

    .line 186
    :cond_1
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 187
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 190
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 191
    invoke-direct {p0}, Lcom/mediatek/engineermode/desense/FreqHoppingSet;->getFreqHopDebugMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 192
    const-string v2, "OK"

    new-instance v3, Lcom/mediatek/engineermode/desense/FreqHoppingSet$4;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/engineermode/desense/FreqHoppingSet$4;-><init>(Lcom/mediatek/engineermode/desense/FreqHoppingSet;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0
.end method
