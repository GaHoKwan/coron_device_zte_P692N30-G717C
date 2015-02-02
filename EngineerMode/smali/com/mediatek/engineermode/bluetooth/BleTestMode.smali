.class public Lcom/mediatek/engineermode/bluetooth/BleTestMode;
.super Landroid/app/Activity;
.source "BleTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_EXIT:I = 0x14

.field private static final CHANNEL_NUM:I = 0x28

.field private static final CHECK_BT_DEVEICE:I = 0x3

.field private static final CHECK_BT_STATE:I = 0x1

.field private static final CHECK_STOP:I = 0x2

.field private static final RENTURN_SUCCESS:I = 0x0

.field private static final STOP_FINISH:I = 0xf

.field private static final TAG:Ljava/lang/String; = "BLETestMode"

.field private static final TEST_FAILED:I = 0xe

.field private static final TEST_START:I = 0xb

.field private static final TEST_STOP:I = 0xc

.field private static final TEST_SUCCESS:I = 0xd


# instance fields
.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtInited:Z

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mChannelSpn:Landroid/widget/Spinner;

.field private mChannelValue:B

.field private mContinune:Landroid/widget/CheckBox;

.field private mIniting:Z

.field private mPatternSpn:Landroid/widget/Spinner;

.field private mPatternValue:B

.field private mRBtnHopping:Landroid/widget/RadioButton;

.field private mRBtnRx:Landroid/widget/RadioButton;

.field private mRBtnSingle:Landroid/widget/RadioButton;

.field private mRBtnTx:Landroid/widget/RadioButton;

.field private mResultStr:Ljava/lang/String;

.field private mResultText:Landroid/widget/TextView;

.field private mTestStared:Z

.field private mTxTest:Z

.field private mUiHandler:Landroid/os/Handler;

.field private mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 81
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStart:Landroid/widget/Button;

    .line 82
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    .line 84
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultText:Landroid/widget/TextView;

    .line 85
    const-string v0, "R:"

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultStr:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    .line 90
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnRx:Landroid/widget/RadioButton;

    .line 92
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnHopping:Landroid/widget/RadioButton;

    .line 93
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnSingle:Landroid/widget/RadioButton;

    .line 96
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mContinune:Landroid/widget/CheckBox;

    .line 99
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelSpn:Landroid/widget/Spinner;

    .line 100
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternSpn:Landroid/widget/Spinner;

    .line 103
    iput-byte v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelValue:B

    .line 104
    iput-byte v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternValue:B

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    .line 113
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 116
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    .line 117
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTestStared:Z

    .line 119
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mIniting:Z

    .line 136
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    .line 233
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$3;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mUiHandler:Landroid/os/Handler;

    .line 664
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/bluetooth/BleTestMode;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-byte p1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelValue:B

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/bluetooth/BleTestMode;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-byte p1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternValue:B

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleStopBtnClick()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->uninitBtTestOjbect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTestStared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->setViewState(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->initBtTestOjbect()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleStartBtnClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleRxTestStart()Z
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 410
    const-string v4, "BLETestMode"

    const-string v5, "-->handleRxTestStart"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const/4 v4, 0x5

    new-array v0, v4, [C

    .line 412
    .local v0, cmd:[C
    const/4 v2, 0x0

    .line 413
    .local v2, response:[C
    aput-char v8, v0, v9

    .line 414
    const/16 v4, 0x1d

    aput-char v4, v0, v8

    .line 415
    const/16 v4, 0x20

    aput-char v4, v0, v10

    .line 416
    const/4 v4, 0x3

    aput-char v8, v0, v4

    .line 417
    const/4 v4, 0x4

    iget-byte v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelValue:B

    int-to-char v5, v5

    aput-char v5, v0, v4

    .line 418
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    array-length v5, v0

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v2

    .line 419
    if-eqz v2, :cond_0

    .line 420
    const/4 v3, 0x0

    .line 421
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 422
    const-string v4, "response[%d] = 0x%x"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    aget-char v6, v2, v1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 423
    const-string v4, "BLETestMode"

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 426
    .end local v1           #i:I
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return v8
.end method

.method private handleRxTestStop()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 436
    const-string v4, "BLETestMode"

    const-string v5, "-->handleRxTestStop"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v4, 0x4

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 438
    .local v0, cmd:[C
    const/4 v2, 0x0

    .line 439
    .local v2, response:[C
    iget-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    array-length v5, v0

    invoke-virtual {v4, v0, v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v2

    .line 440
    if-eqz v2, :cond_1

    .line 441
    const/4 v3, 0x0

    .line 442
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 443
    const-string v4, "response[%d] = 0x%x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    aget-char v6, v2, v1

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 444
    const-string v4, "BLETestMode"

    invoke-static {v4, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    const-string v4, "***Packet Count: %d"

    new-array v5, v8, [Ljava/lang/Object;

    const/16 v6, 0x8

    aget-char v6, v2, v6

    int-to-long v6, v6

    const-wide/16 v8, 0x100

    mul-long/2addr v6, v8

    const/4 v8, 0x7

    aget-char v8, v2, v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultStr:Ljava/lang/String;

    .line 451
    .end local v1           #i:I
    .end local v3           #s:Ljava/lang/String;
    :cond_1
    return-void

    .line 437
    :array_0
    .array-data 0x2
        0x1t 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x0t 0x0t
    .end array-data
.end method

.method private handleStartBtnClick()Z
    .locals 12

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 459
    const-string v6, "BLETestMode"

    const-string v7, "-->handleStartBtnClick"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/4 v1, 0x4

    .line 468
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 469
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 470
    .local v3, response:[C
    const/4 v2, 0x0

    .line 471
    .local v2, i:I
    aput-char v10, v0, v5

    .line 472
    aput-char v8, v0, v10

    .line 473
    const/16 v6, 0xc

    aput-char v6, v0, v11

    .line 474
    aput-char v5, v0, v8

    .line 476
    iget-object v6, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v6, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 477
    if-nez v3, :cond_0

    .line 478
    const-string v6, "BLETestMode"

    const-string v7, "HCICommandRun failed"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :goto_0
    return v5

    .line 481
    :cond_0
    const/4 v4, 0x0

    .line 482
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 483
    const-string v6, "response[%d] = 0x%x"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    aget-char v8, v3, v2

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 484
    const-string v6, "BLETestMode"

    invoke-static {v6, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 487
    :cond_1
    const/4 v3, 0x0

    .line 489
    iget-boolean v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    if-eqz v5, :cond_2

    .line 490
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleTxTestStart()Z

    move-result v5

    goto :goto_0

    .line 492
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleRxTestStart()Z

    move-result v5

    goto :goto_0
.end method

.method private handleStopBtnClick()V
    .locals 2

    .prologue
    .line 532
    const-string v0, "BLETestMode"

    const-string v1, "-->handleStopBtnClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleTxTestStop()V

    .line 538
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTestStared:Z

    .line 539
    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->handleRxTestStop()V

    goto :goto_0
.end method

.method private handleTxTestStart()Z
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 337
    const-string v5, "BLETestMode"

    const-string v6, "-->handleTxTestStart"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x7

    .line 340
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 341
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 342
    .local v3, response:[C
    const/4 v2, 0x0

    .line 343
    .local v2, i:I
    aput-char v9, v0, v10

    .line 344
    const/16 v5, 0x1e

    aput-char v5, v0, v9

    .line 345
    const/16 v5, 0x20

    aput-char v5, v0, v11

    .line 346
    aput-char v7, v0, v7

    .line 347
    const/4 v5, 0x4

    iget-byte v6, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelValue:B

    int-to-char v6, v6

    aput-char v6, v0, v5

    .line 348
    const/4 v5, 0x5

    const/16 v6, 0x25

    aput-char v6, v0, v5

    .line 349
    const/4 v5, 0x6

    iget-byte v6, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternValue:B

    int-to-char v6, v6

    aput-char v6, v0, v5

    .line 351
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 352
    if-eqz v3, :cond_0

    .line 353
    const/4 v4, 0x0

    .line 354
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 355
    const-string v5, "response[%d] = 0x%x"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    aget-char v7, v3, v2

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 356
    const-string v5, "BLETestMode"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 365
    return v9
.end method

.method private handleTxTestStop()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 375
    const-string v5, "BLETestMode"

    const-string v6, "-->handleTxTestStop"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v1, 0x4

    .line 377
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 378
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 379
    .local v3, response:[C
    const/4 v2, 0x0

    .line 381
    .local v2, i:I
    aput-char v10, v0, v9

    .line 382
    const/16 v5, 0x1f

    aput-char v5, v0, v10

    .line 383
    const/16 v5, 0x20

    aput-char v5, v0, v11

    .line 384
    const/4 v5, 0x3

    aput-char v9, v0, v5

    .line 386
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 387
    if-eqz v3, :cond_0

    .line 388
    const/4 v4, 0x0

    .line 389
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 390
    const-string v5, "response[%d] = 0x%x"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aget-char v7, v3, v2

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 391
    const-string v5, "BLETestMode"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 399
    return-void
.end method

.method private initBtTestOjbect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 612
    const-string v1, "BLETestMode"

    const-string v2, "-->initBtTestOjbect"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mIniting:Z

    if-eqz v1, :cond_0

    .line 633
    :goto_0
    return v0

    .line 616
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    if-eqz v1, :cond_1

    .line 617
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    goto :goto_0

    .line 619
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v1, :cond_2

    .line 620
    new-instance v1, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    if-nez v1, :cond_3

    .line 623
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mIniting:Z

    .line 624
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->init()I

    move-result v1

    if-nez v1, :cond_4

    .line 625
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->runHCIResetCmd()V

    .line 626
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    .line 632
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mIniting:Z

    .line 633
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    goto :goto_0

    .line 628
    :cond_4
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    .line 629
    const-string v1, "BLETestMode"

    const-string v2, "mBT initialization failed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private runHCIResetCmd()V
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 504
    const-string v5, "BLETestMode"

    const-string v6, "-->runHCIResetCmd"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/4 v1, 0x4

    .line 506
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 507
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 508
    .local v3, response:[C
    const/4 v2, 0x0

    .line 510
    .local v2, i:I
    aput-char v10, v0, v9

    .line 511
    aput-char v7, v0, v10

    .line 512
    const/16 v5, 0xc

    aput-char v5, v0, v11

    .line 513
    aput-char v9, v0, v7

    .line 514
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 515
    if-nez v3, :cond_1

    .line 516
    const-string v5, "BLETestMode"

    const-string v6, "HCICommandRun failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_0
    const/4 v3, 0x0

    .line 526
    return-void

    .line 518
    :cond_1
    const/4 v4, 0x0

    .line 519
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 520
    const-string v5, "response[%d] = 0x%x"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    aget-char v7, v3, v2

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 521
    const-string v5, "BLETestMode"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setViewState(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 594
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 595
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnRx:Landroid/widget/RadioButton;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 596
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnHopping:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 597
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnSingle:Landroid/widget/RadioButton;

    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 598
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mContinune:Landroid/widget/CheckBox;

    if-nez p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 599
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelSpn:Landroid/widget/Spinner;

    if-nez p1, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 600
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternSpn:Landroid/widget/Spinner;

    if-nez p1, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStart:Landroid/widget/Button;

    if-nez p1, :cond_6

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 603
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 604
    return-void

    :cond_0
    move v0, v2

    .line 594
    goto :goto_0

    :cond_1
    move v0, v2

    .line 595
    goto :goto_1

    :cond_2
    move v0, v2

    .line 597
    goto :goto_2

    :cond_3
    move v0, v2

    .line 598
    goto :goto_3

    :cond_4
    move v0, v2

    .line 599
    goto :goto_4

    :cond_5
    move v0, v2

    .line 600
    goto :goto_5

    :cond_6
    move v1, v2

    .line 602
    goto :goto_6
.end method

.method private uninitBtTestOjbect()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 642
    const-string v0, "BLETestMode"

    const-string v1, "-->uninitBtTestOjbect"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    if-eqz v0, :cond_1

    .line 644
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTestStared:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->runHCIResetCmd()V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->unInit()I

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    const-string v0, "BLETestMode"

    const-string v1, "mBT un-initialization failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 653
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtInited:Z

    .line 654
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTestStared:Z

    .line 655
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    const-string v0, "BLETestMode"

    const-string v1, "-->onClick"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->setViewState(Z)V

    .line 551
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 558
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 559
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 564
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnRx:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 566
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    goto :goto_0

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "onSavedInstanceState"

    .prologue
    const v8, 0x1090009

    const v7, 0x1090008

    const/4 v6, 0x1

    .line 141
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 142
    const v5, 0x7f030015

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 145
    const v5, 0x7f0b00ad

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStart:Landroid/widget/Button;

    .line 146
    const v5, 0x7f0b00ae

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    .line 147
    const v5, 0x7f0b00af

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mResultText:Landroid/widget/TextView;

    .line 149
    const v5, 0x7f0b00a3

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    .line 150
    const v5, 0x7f0b00a4

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnRx:Landroid/widget/RadioButton;

    .line 152
    const v5, 0x7f0b00a6

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnHopping:Landroid/widget/RadioButton;

    .line 153
    const v5, 0x7f0b00a7

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnSingle:Landroid/widget/RadioButton;

    .line 155
    const v5, 0x7f0b00ac

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mContinune:Landroid/widget/CheckBox;

    .line 157
    const v5, 0x7f0b00a9

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelSpn:Landroid/widget/Spinner;

    .line 158
    const v5, 0x7f0b00ab

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternSpn:Landroid/widget/Spinner;

    .line 160
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 164
    iput-boolean v6, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mTxTest:Z

    .line 166
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnTx:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnRx:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnSingle:Landroid/widget/RadioButton;

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 171
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnSingle:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mRBtnHopping:Landroid/widget/RadioButton;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 177
    .local v2, mSpnChannelAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v5, 0x28

    if-ge v0, v5, :cond_0

    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f0802e3

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelSpn:Landroid/widget/Spinner;

    invoke-virtual {v5, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 187
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mChannelSpn:Landroid/widget/Spinner;

    new-instance v6, Lcom/mediatek/engineermode/bluetooth/BleTestMode$1;

    invoke-direct {v6, p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$1;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 201
    new-instance v3, Landroid/widget/ArrayAdapter;

    invoke-direct {v3, p0, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 203
    .local v3, mSpnPatternAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<[Ljava/lang/String;>;"
    invoke-virtual {v3, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 205
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 209
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mPatternSpn:Landroid/widget/Spinner;

    new-instance v6, Lcom/mediatek/engineermode/bluetooth/BleTestMode$2;

    invoke-direct {v6, p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$2;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 221
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->setViewState(Z)V

    .line 223
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "BLETestMode"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 224
    .local v4, workThread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 226
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 227
    .local v1, looper:Landroid/os/Looper;
    new-instance v5, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v1, v6}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/BleTestMode$1;)V

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    .line 230
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f080295

    const v5, 0x7f080294

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 279
    const-string v1, "BLETestMode"

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 281
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 283
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080299

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 285
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 319
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 288
    :cond_0
    if-ne p1, v4, :cond_1

    .line 289
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080297

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/bluetooth/BleTestMode$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$4;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 300
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 302
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 305
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080298

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/bluetooth/BleTestMode$5;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/bluetooth/BleTestMode$5;-><init>(Lcom/mediatek/engineermode/bluetooth/BleTestMode;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 316
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 319
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 324
    const-string v0, "BLETestMode"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mWorkHandler:Lcom/mediatek/engineermode/bluetooth/BleTestMode$WorkHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 329
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 266
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_2

    .line 269
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 275
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/BleTestMode;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
