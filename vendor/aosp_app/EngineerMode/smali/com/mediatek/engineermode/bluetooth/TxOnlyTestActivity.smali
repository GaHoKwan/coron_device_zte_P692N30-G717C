.class public Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;
.super Landroid/app/Activity;
.source "TxOnlyTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;
    }
.end annotation


# static fields
.field private static final BT_TEST_0:I = 0x0

.field private static final BT_TEST_3:I = 0x3

.field private static final CHECK_BT_STATE:I = 0x1

.field private static final DIALOG_BT_STOP:I = 0x4

.field public static final DLGID_OP_IN_PROCESS:I = 0x1

.field private static final MAP_TO_CHANNELS:I = 0x1

.field private static final MAP_TO_FREQ:I = 0x3

.field private static final MAP_TO_PATTERN:I = 0x0

.field private static final MAP_TO_POCKET_TYPE:I = 0x2

.field private static final MAP_TO_POCKET_TYPE_LEN:I = 0x4

.field private static final OP_BT_SEND:I = 0xb

.field private static final OP_BT_STOP:I = 0xc

.field public static final OP_FINISH:I = 0x0

.field public static final OP_IN_PROCESS:I = 0x2

.field public static final OP_TX_FAIL:I = 0x4

.field private static final RETURN_FAIL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "TxOnlyTestLOG"

.field private static final TEST_TX:I = 0x3

.field public static final UI_BT_CLOSE:I = 0x5

.field public static final UI_BT_CLOSE_FINISHED:I = 0x6


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mChannels:Landroid/widget/Spinner;

.field private mDoneTest:Z

.field private mDumpStart:Z

.field private mHasInit:Z

.field private mIniting:Z

.field private mNonModulate:Z

.field private mPattern:Landroid/widget/Spinner;

.field private mPktTypes:Landroid/widget/Spinner;

.field private mPocketType:Z

.field private mStateBt:I

.field private mUiHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPattern:Landroid/widget/Spinner;

    .line 73
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mChannels:Landroid/widget/Spinner;

    .line 74
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPktTypes:Landroid/widget/Spinner;

    .line 76
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 90
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    .line 91
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mIniting:Z

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mNonModulate:Z

    .line 93
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPocketType:Z

    .line 105
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkHandler:Landroid/os/Handler;

    .line 106
    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z

    .line 111
    iput-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z

    .line 145
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;

    .line 176
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDumpStart:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->doSendCommandAction()Z

    move-result v0

    return v0
.end method

.method private doRevertAction()Z
    .locals 2

    .prologue
    .line 439
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "doRevertAction"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->onBackPressed()V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method private doSendCommandAction()Z
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getBtState()V

    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->enableBluetooth(Z)V

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getValuesAndSend()V

    .line 315
    const/4 v0, 0x1

    return v0
.end method

.method private enableBluetooth(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 416
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Enter EnableBluetooth()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 418
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 419
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "we can not find a bluetooth adapter."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :goto_0
    return-void

    .line 423
    :cond_0
    if-eqz p1, :cond_1

    .line 424
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Bluetooth is enabled"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 431
    :goto_1
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Leave EnableBluetooth()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    :cond_1
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Bluetooth is disabled"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1
.end method

.method private getBtState()V
    .locals 3

    .prologue
    .line 401
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Enter GetBtState()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 403
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 404
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "we can not find a bluetooth adapter."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mStateBt:I

    .line 412
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "Leave GetBtState()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEditBoxValue(II)Z
    .locals 8
    .parameter "id"
    .parameter "flag"

    .prologue
    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, bSuccess:Z
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 649
    .local v5, text:Landroid/widget/TextView;
    const/4 v4, 0x0

    .line 650
    .local v4, str:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 651
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 653
    :cond_0
    if-eqz v4, :cond_1

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v1, v0

    .line 672
    .end local v0           #bSuccess:Z
    .local v1, bSuccess:I
    :goto_0
    return v1

    .line 656
    .end local v1           #bSuccess:I
    .restart local v0       #bSuccess:Z
    :cond_2
    const/4 v3, 0x0

    .line 658
    .local v3, iLen:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 664
    const/4 v6, 0x3

    if-ne v6, p2, :cond_4

    .line 665
    iget-object v6, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v6, v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setFreq(I)V

    .line 666
    const/4 v0, 0x1

    :cond_3
    :goto_1
    move v1, v0

    .line 672
    .restart local v1       #bSuccess:I
    goto :goto_0

    .line 659
    .end local v1           #bSuccess:I
    :catch_0
    move-exception v2

    .line 660
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v6, "TxOnlyTestLOG"

    const-string v7, "parseInt failed--invalid number!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 661
    .restart local v1       #bSuccess:I
    goto :goto_0

    .line 667
    .end local v1           #bSuccess:I
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v6, 0x4

    if-ne v6, p2, :cond_3

    .line 669
    iget-object v6, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v6, v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setPocketTypeLen(I)V

    .line 670
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private getSpinnerValue(Landroid/widget/Spinner;I)Z
    .locals 4
    .parameter "sSpinner"
    .parameter "flag"

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    .local v0, bSuccess:Z
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 623
    .local v2, index:I
    if-gez v2, :cond_0

    move v1, v0

    .line 642
    .end local v0           #bSuccess:Z
    .local v1, bSuccess:I
    :goto_0
    return v1

    .line 627
    .end local v1           #bSuccess:I
    .restart local v0       #bSuccess:Z
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 638
    const/4 v0, 0x0

    .line 641
    :goto_1
    const/4 v0, 0x1

    move v1, v0

    .line 642
    .restart local v1       #bSuccess:I
    goto :goto_0

    .line 629
    .end local v1           #bSuccess:I
    :pswitch_0
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v3, v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setPatter(I)V

    goto :goto_1

    .line 632
    :pswitch_1
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v3, v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setChannels(I)V

    goto :goto_1

    .line 635
    :pswitch_2
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v3, v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->setPocketType(I)V

    goto :goto_1

    .line 627
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleNonModulated()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 496
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "-->handleNonModulated TX first"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v1, 0x5

    .line 508
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 509
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 510
    .local v3, response:[C
    const/4 v2, 0x0

    .line 511
    .local v2, i:I
    aput-char v9, v0, v10

    .line 512
    const/16 v5, 0x15

    aput-char v5, v0, v9

    .line 513
    const/16 v5, 0xfc

    aput-char v5, v0, v11

    .line 514
    aput-char v9, v0, v12

    .line 515
    aput-char v10, v0, v13

    .line 516
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 517
    if-eqz v3, :cond_0

    .line 518
    const/4 v4, 0x0

    .line 519
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_1

    .line 520
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

    .line 521
    const-string v5, "TxOnlyTestLOG"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    .end local v4           #s:Ljava/lang/String;
    :cond_0
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "HCICommandRun failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    const/4 v3, 0x0

    .line 528
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "-->handleNonModulated TX second"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 v1, 0x5

    .line 530
    aput-char v9, v0, v10

    .line 531
    const/16 v5, 0xd5

    aput-char v5, v0, v9

    .line 532
    const/16 v5, 0xfc

    aput-char v5, v0, v11

    .line 533
    aput-char v9, v0, v12

    .line 534
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getFreq()I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v13

    .line 535
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 536
    if-eqz v3, :cond_2

    .line 537
    const/4 v4, 0x0

    .line 538
    .restart local v4       #s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 539
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

    .line 540
    const-string v5, "TxOnlyTestLOG"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    .end local v4           #s:Ljava/lang/String;
    :cond_2
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "HCICommandRun failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_3
    const/4 v3, 0x0

    .line 546
    return-void
.end method

.method private initBtTestOjbect()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 550
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "-->initBtTestOjbect"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mIniting:Z

    if-eqz v1, :cond_0

    .line 571
    :goto_0
    return v0

    .line 554
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    if-eqz v1, :cond_1

    .line 555
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    goto :goto_0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v1, :cond_2

    .line 558
    new-instance v1, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 560
    :cond_2
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    if-nez v1, :cond_3

    .line 561
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mIniting:Z

    .line 562
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->init()I

    move-result v1

    if-eqz v1, :cond_4

    .line 563
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    .line 564
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "mBtTest initialization failed"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mIniting:Z

    .line 571
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    goto :goto_0

    .line 566
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->runHCIResetCmd()V

    .line 567
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mHasInit:Z

    goto :goto_1
.end method

.method private runHCIResetCmd()V
    .locals 12

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 594
    const/4 v1, 0x4

    .line 595
    .local v1, cmdLen:I
    new-array v0, v1, [C

    .line 597
    .local v0, cmd:[C
    const/4 v3, 0x0

    .line 598
    .local v3, response:[C
    const/4 v2, 0x0

    .line 599
    .local v2, i:I
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "-->runHCIResetCmd"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    aput-char v10, v0, v9

    .line 601
    aput-char v7, v0, v10

    .line 602
    const/16 v5, 0xc

    aput-char v5, v0, v11

    .line 603
    aput-char v9, v0, v7

    .line 604
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v5, :cond_0

    .line 605
    new-instance v5, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v5}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 607
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v5, v0, v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->hciCommandRun([CI)[C

    move-result-object v3

    .line 608
    if-eqz v3, :cond_1

    .line 609
    const/4 v4, 0x0

    .line 610
    .local v4, s:Ljava/lang/String;
    const/4 v2, 0x0

    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_2

    .line 611
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

    .line 612
    const-string v5, "TxOnlyTestLOG"

    invoke-static {v5, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 615
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    const-string v5, "TxOnlyTestLOG"

    const-string v6, "HCICommandRun failed"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_2
    const/4 v3, 0x0

    .line 618
    return-void
.end method


# virtual methods
.method public getValuesAndSend()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 447
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "Enter GetValuesAndSend()."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 450
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPattern:Landroid/widget/Spinner;

    invoke-direct {p0, v0, v3}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getSpinnerValue(Landroid/widget/Spinner;I)Z

    .line 451
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mChannels:Landroid/widget/Spinner;

    invoke-direct {p0, v0, v4}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getSpinnerValue(Landroid/widget/Spinner;I)Z

    .line 452
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPktTypes:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getSpinnerValue(Landroid/widget/Spinner;I)Z

    .line 454
    const v0, 0x7f0b0448

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getEditBoxValue(II)Z

    .line 455
    const v0, 0x7f0b044b

    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->getEditBoxValue(II)Z

    .line 459
    const-string v0, "TxOnlyTestLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PocketType().+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getPocketType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v0, "TxOnlyTestLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "edtFrequency+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getFreq()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v1}, Lcom/mediatek/engineermode/bluetooth/BtTest;->getPocketType()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 462
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "enter handleNonModulated(mBtTest)"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const-string v0, "TxOnlyTestLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbIsNonModulate--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mNonModulate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   mbIsPocketType--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPocketType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPocketType:Z

    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->runHCIResetCmd()V

    .line 468
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->initBtTestOjbect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iput-boolean v4, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mNonModulate:Z

    .line 470
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPocketType:Z

    .line 472
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->handleNonModulated()V

    .line 492
    :cond_1
    :goto_0
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "Leave getValuesAndSend()."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    return-void

    .line 476
    :cond_2
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mNonModulate:Z

    if-eqz v0, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->runHCIResetCmd()V

    .line 478
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mNonModulate:Z

    .line 480
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPocketType:Z

    .line 481
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v1, v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;->doBtTest(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 482
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "transmit data failed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const/16 v0, 0xb

    iget v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mStateBt:I

    if-eq v0, v1, :cond_4

    const/16 v0, 0xc

    iget v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mStateBt:I

    if-ne v0, v1, :cond_5

    .line 485
    :cond_4
    invoke-direct {p0, v4}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->enableBluetooth(Z)V

    .line 489
    :cond_5
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "-->onBackPressed "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 350
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 322
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "-->onCancel"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 324
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v1, 0x7f03008d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->setValuesSpinner()V

    .line 138
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TxOnlyTestLOG"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 140
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 141
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkHandler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 367
    const-string v2, "TxOnlyTestLOG"

    const-string v3, "-->onCreateDialog"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    .line 369
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 370
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f080299

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 371
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 372
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 373
    const-string v2, "TxOnlyTestLOG"

    const-string v3, "new ProgressDialog succeed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v1

    .line 375
    :cond_0
    if-ne p1, v5, :cond_1

    .line 376
    const/4 v1, 0x0

    .line 377
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 378
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 379
    const v2, 0x7f080295

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 380
    const v2, 0x7f080297

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    const v2, 0x7f080294

    new-instance v3, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$2;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity$2;-><init>(Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 387
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 388
    goto :goto_0

    .line 389
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 390
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 391
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v2, 0x7f08029e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 392
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 393
    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 397
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 277
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 278
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 358
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 362
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 363
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 283
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 305
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 287
    :pswitch_0
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "menu_done is clicked."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    :goto_1
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "menu_done is handled."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :cond_0
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "last click is not finished yet."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 301
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->doRevertAction()Z

    move-result v0

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b04e2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 224
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 225
    .local v0, doneItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 226
    iget-boolean v1, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mDoneTest:Z

    if-nez v1, :cond_0

    .line 227
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 228
    invoke-interface {p1}, Landroid/view/Menu;->close()V

    .line 235
    :goto_0
    return v3

    .line 230
    :cond_0
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 233
    :cond_1
    const-string v1, "TxOnlyTestLOG"

    const-string v2, "menu_done is not found."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 328
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 329
    const-string v0, "TxOnlyTestLOG"

    const-string v1, "-->onStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 331
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 343
    :cond_1
    return-void
.end method

.method protected setValuesSpinner()V
    .locals 6

    .prologue
    const v5, 0x1090009

    const v4, 0x1090008

    .line 245
    const v3, 0x7f0b0445

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPattern:Landroid/widget/Spinner;

    .line 246
    const v3, 0x7f060006

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 249
    .local v1, adapterPattern:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 251
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 254
    const v3, 0x7f0b0446

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mChannels:Landroid/widget/Spinner;

    .line 255
    const v3, 0x7f060007

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 258
    .local v0, adapterChannels:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 260
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mChannels:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 263
    const v3, 0x7f0b0449

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPktTypes:Landroid/widget/Spinner;

    .line 264
    const v3, 0x7f060008

    invoke-static {p0, v3, v4}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v2

    .line 267
    .local v2, adapterPocketType:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 269
    iget-object v3, p0, Lcom/mediatek/engineermode/bluetooth/TxOnlyTestActivity;->mPktTypes:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 270
    return-void
.end method
