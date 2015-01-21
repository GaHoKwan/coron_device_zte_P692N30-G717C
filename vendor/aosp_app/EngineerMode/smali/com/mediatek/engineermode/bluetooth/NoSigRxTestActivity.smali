.class public Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;
.super Landroid/app/Activity;
.source "NoSigRxTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;
    }
.end annotation


# static fields
.field private static final CHECK_BT_STATE:I = 0x14

.field private static final DIALOG_BT_STOP:I = 0x17

.field private static final DIALOG_RX_FAIL:I = 0x15

.field private static final DIALOG_RX_TEST:I = 0x16

.field public static final OP_ADDR_DEFAULT:I = 0xb

.field public static final OP_BT_SEND:I = 0x0

.field public static final OP_BT_STOP:I = 0x1

.field public static final OP_FINISH:I = 0x9

.field public static final OP_IN_PROCESS:I = 0x8

.field public static final OP_RX_FAIL:I = 0xa

.field public static final OP_TEST_OK_STEP1:I = 0xc

.field public static final OP_TEST_OK_STEP2:I = 0xd

.field private static final TAG:Ljava/lang/String; = "NoSigRxLOG"

.field private static final TEST_STATUS_BEGIN:I = 0x64

.field private static final TEST_STATUS_RESULT:I = 0x65

.field public static final UI_BT_CLOSE:I = 0x5

.field public static final UI_BT_CLOSE_FINISHED:I = 0x6


# instance fields
.field private mBitErrRate:Landroid/widget/TextView;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

.field private mBtnStartTest:Landroid/widget/Button;

.field private mDoneFinished:Z

.field private mDumpStart:Z

.field private mEdAddr:Landroid/widget/EditText;

.field private mEdFreq:Landroid/widget/EditText;

.field private mPackCnt:Landroid/widget/TextView;

.field private mPackErrRate:Landroid/widget/TextView;

.field private mPattern:Landroid/widget/Spinner;

.field private mPocketType:Landroid/widget/Spinner;

.field private mResult:[I

.field private mRxByteCnt:Landroid/widget/TextView;

.field private mStateBt:I

.field private mTestStatus:I

.field private mUiHandler:Landroid/os/Handler;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I

    .line 109
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDoneFinished:Z

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    .line 115
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkHandler:Landroid/os/Handler;

    .line 116
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 119
    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 144
    new-instance v0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;-><init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    .line 260
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdAddr:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDoneFinished:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->doSendCommandAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Lcom/mediatek/engineermode/bluetooth/BtTest;)Lcom/mediatek/engineermode/bluetooth/BtTest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    return-object p1
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtnStartTest:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackCnt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackErrRate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mRxByteCnt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBitErrRate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private doSendCommandAction()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 340
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    if-ne v0, v2, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "NoSigRxLOG"

    const-string v1, "pollingStop"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iput-boolean v3, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    .line 344
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStop()I

    .line 347
    :cond_0
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 348
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->getBtState()V

    .line 349
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->enableBluetooth(Z)V

    .line 350
    invoke-virtual {p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->getValuesAndSend()V

    .line 351
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_1

    .line 352
    const-string v0, "NoSigRxLOG"

    const-string v1, "pollingStart"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->pollingStart()I

    .line 354
    iput-boolean v2, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDumpStart:Z

    .line 360
    :cond_1
    :goto_0
    return v2

    .line 356
    :cond_2
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mTestStatus:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 357
    invoke-direct {p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->getResult()V

    goto :goto_0
.end method

.method private enableBluetooth(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 398
    const-string v1, "NoSigRxLOG"

    const-string v2, "Enter EnableBluetooth()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 400
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 401
    const-string v1, "NoSigRxLOG"

    const-string v2, "we can not find a bluetooth adapter."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_0
    return-void

    .line 405
    :cond_0
    if-eqz p1, :cond_1

    .line 406
    const-string v1, "NoSigRxLOG"

    const-string v2, "Bluetooth is enabled"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 413
    :goto_1
    const-string v1, "NoSigRxLOG"

    const-string v2, "Leave EnableBluetooth()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_1
    const-string v1, "NoSigRxLOG"

    const-string v2, "Bluetooth is disabled"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1
.end method

.method private getBtState()V
    .locals 3

    .prologue
    .line 383
    const-string v1, "NoSigRxLOG"

    const-string v2, "Enter GetBtState()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 385
    .local v0, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 386
    const-string v1, "NoSigRxLOG"

    const-string v2, "we can not find a bluetooth adapter."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 395
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mStateBt:I

    .line 394
    const-string v1, "NoSigRxLOG"

    const-string v2, "Leave GetBtState()."

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getResult()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-nez v0, :cond_0

    .line 488
    :goto_0
    return-void

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/bluetooth/BtTest;->noSigRxTestResult()[I

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I

    .line 470
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mResult:[I

    if-nez v0, :cond_3

    .line 471
    const-string v0, "NoSigRxLOG"

    const-string v1, "no signal rx test failed."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v0, 0xb

    iget v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mStateBt:I

    if-eq v0, v1, :cond_1

    const/16 v0, 0xc

    iget v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mStateBt:I

    if-ne v0, v1, :cond_2

    .line 474
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->enableBluetooth(Z)V

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    :goto_1
    const-string v0, "NoSigRxLOG"

    const-string v1, "Leave getresult()."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_3
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method


# virtual methods
.method public getValuesAndSend()V
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/16 v11, 0xb

    const/16 v10, 0xa

    .line 417
    const-string v8, "NoSigRxLOG"

    const-string v9, "Enter GetValuesAndSend()."

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    new-instance v8, Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-direct {v8}, Lcom/mediatek/engineermode/bluetooth/BtTest;-><init>()V

    iput-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    .line 423
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v5

    .line 424
    .local v5, nPatternIdx:I
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPocketType:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v6

    .line 425
    .local v6, nPocketTypeIdx:I
    const/4 v4, 0x0

    .line 426
    .local v4, nFreq:I
    const/4 v3, 0x0

    .line 428
    .local v3, nAddress:I
    :try_start_0
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdFreq:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 429
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdAddr:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 430
    .local v1, longAdd:J
    long-to-int v3, v1

    .line 431
    if-ltz v4, :cond_0

    const/16 v8, 0x4e

    if-le v4, v8, :cond_1

    .line 435
    :cond_0
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 462
    .end local v1           #longAdd:J
    :goto_0
    return-void

    .line 438
    .restart local v1       #longAdd:J
    :cond_1
    if-nez v3, :cond_2

    .line 439
    const v3, 0xa5f0c3

    .line 440
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :cond_2
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    invoke-virtual {v8, v5, v6, v4, v3}, Lcom/mediatek/engineermode/bluetooth/BtTest;->noSigRxTestStart(IIII)Z

    move-result v7

    .line 450
    .local v7, rc:Z
    if-eqz v7, :cond_3

    .line 451
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 461
    :goto_1
    const-string v8, "NoSigRxLOG"

    const-string v9, "Leave GetValuesAndSend()."

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 442
    .end local v1           #longAdd:J
    .end local v7           #rc:Z
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v8, "NoSigRxLOG"

    const-string v9, "input number error!"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #longAdd:J
    .restart local v7       #rc:Z
    :cond_3
    const-string v8, "NoSigRxLOG"

    const-string v9, "no signal rx test failed."

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mStateBt:I

    if-eq v11, v8, :cond_4

    iget v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mStateBt:I

    if-ne v12, v8, :cond_5

    .line 456
    :cond_4
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->enableBluetooth(Z)V

    .line 458
    :cond_5
    iget-object v8, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v8, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "NoSigRxLOG"

    const-string v1, "-->onBackPressed "

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtTest:Lcom/mediatek/engineermode/bluetooth/BtTest;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 249
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 366
    const-string v0, "NoSigRxLOG"

    const-string v1, "-->onCancel"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 368
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mDoneFinished:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v0, "NoSigRxLOG"

    const-string v1, "last click is not finished yet."

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const v1, 0x7f030078

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->setValuesSpinner()V

    .line 126
    const v1, 0x7f0b03c0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdFreq:Landroid/widget/EditText;

    .line 127
    const v1, 0x7f0b03c1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mEdAddr:Landroid/widget/EditText;

    .line 128
    const v1, 0x7f0b03c2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtnStartTest:Landroid/widget/Button;

    .line 129
    const v1, 0x7f0b03c3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackCnt:Landroid/widget/TextView;

    .line 130
    const v1, 0x7f0b03c4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPackErrRate:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0b03c5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mRxByteCnt:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0b03c6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBitErrRate:Landroid/widget/TextView;

    .line 134
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtnStartTest:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NoSigRxLOG"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    .line 137
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 139
    iget-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 140
    .local v0, looper:Landroid/os/Looper;
    new-instance v1, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$WorkHandler;-><init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;Landroid/os/Looper;Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkHandler:Landroid/os/Handler;

    .line 142
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    const v4, 0x7f080295

    const v3, 0x7f080294

    const/4 v2, 0x0

    .line 195
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 196
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080297

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$2;-><init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 208
    :cond_0
    const/16 v1, 0x15

    if-ne p1, v1, :cond_1

    .line 211
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0802a1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity$3;-><init>(Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 221
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 222
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/16 v1, 0x16

    if-ne p1, v1, :cond_2

    .line 223
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 226
    const v1, 0x7f0802a0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    const v1, 0x7f0802bd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 228
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_0

    .line 231
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v1, 0x17

    if-ne p1, v1, :cond_3

    .line 232
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 233
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f08029e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 234
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 235
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 238
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 253
    const-string v0, "NoSigRxLOG"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mWorkThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 258
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 374
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 375
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 378
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 380
    :cond_1
    return-void
.end method

.method protected setValuesSpinner()V
    .locals 5

    .prologue
    const v4, 0x1090009

    const v3, 0x1090008

    .line 291
    const v2, 0x7f0b03be

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPattern:Landroid/widget/Spinner;

    .line 292
    const v2, 0x7f060018

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 295
    .local v0, adapterPattern:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 297
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPattern:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 306
    const v2, 0x7f0b03bf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPocketType:Landroid/widget/Spinner;

    .line 307
    const v2, 0x7f060019

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 310
    .local v1, adapterPocketType:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 312
    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/NoSigRxTestActivity;->mPocketType:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 318
    return-void
.end method
