.class public Lcom/mediatek/engineermode/usb/UsbTest;
.super Landroid/app/Activity;
.source "UsbTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;,
        Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;
    }
.end annotation


# static fields
.field private static final A_UUT:I = 0x5

.field private static final BUTTONS_IDS_EX:[I = null

.field private static final BUTTONS_IDS_IF:[I = null

.field private static final B_UUT:I = 0x6

.field private static final DETECT_SRP:I = 0x3

.field private static final DETECT_VBUS:I = 0x4

.field private static final DLG_ERROR_MSG:I = 0x4

.field private static final DLG_MSG:I = 0x2

.field private static final DLG_STOP:I = 0x1

.field private static final DLG_UNKNOW_MSG:I = 0x3

.field private static final ENABLE_SRP:I = 0x2

.field private static final ENABLE_VBUS:I = 0x1

.field private static final ERROR_MSG:I = 0xd

.field private static final EX_COMMAND:[I = null

.field private static final GET_DESCRIPTOR:I = 0xc

.field private static final GET_MSG:I = 0x14

.field private static final IF_COMMOND:[I = null

.field private static final OP_FINISH:I = 0xb

.field private static final OP_IN_PROCESS:I = 0xa

.field private static final SET_FEATURE:I = 0xd

.field private static final START_TEST:I = 0x15

.field private static final SUSPEND_RESUME:I = 0xb

.field private static final TAG:Ljava/lang/String; = "USBTest"

.field private static final TD_5_9:I = 0xe

.field private static final TEST_J:I = 0x8

.field private static final TEST_K:I = 0x9

.field private static final TEST_PACKET:I = 0xa

.field private static final TEST_SE0_NAK:I = 0x7

.field private static final UPDATAT_MSG:I = 0xc


# instance fields
.field private mBtnAUutStart:Landroid/widget/Button;

.field private mBtnAUutStop:Landroid/widget/Button;

.field private mBtnBUutStart:Landroid/widget/Button;

.field private mBtnBUutStop:Landroid/widget/Button;

.field private mBtnBUutTD59:Landroid/widget/Button;

.field private mBtnDeSrpStart:Landroid/widget/Button;

.field private mBtnDeSrpStop:Landroid/widget/Button;

.field private mBtnDeVbusStart:Landroid/widget/Button;

.field private mBtnDeVbusStop:Landroid/widget/Button;

.field private mBtnEnSrpStart:Landroid/widget/Button;

.field private mBtnEnSrpStop:Landroid/widget/Button;

.field private mBtnEnVbusStart:Landroid/widget/Button;

.field private mBtnEnVbusStop:Landroid/widget/Button;

.field private mBtnIds:[I

.field private mBtnList:[Landroid/widget/Button;

.field private mCommand:I

.field private mMsg:I

.field private mResultCollectHandler:Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;

.field private mResultCollectThread:Landroid/os/HandlerThread;

.field private mRun:Z

.field private mTestHandler:Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;

.field private mTestIf:Z

.field private mTestThread:Landroid/os/HandlerThread;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_IF:[I

    .line 128
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_EX:[I

    .line 136
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/mediatek/engineermode/usb/UsbTest;->IF_COMMOND:[I

    .line 138
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/mediatek/engineermode/usb/UsbTest;->EX_COMMAND:[I

    return-void

    .line 121
    nop

    :array_0
    .array-data 0x4
        0x56t 0x4t 0xbt 0x7ft
        0x57t 0x4t 0xbt 0x7ft
        0x58t 0x4t 0xbt 0x7ft
        0x59t 0x4t 0xbt 0x7ft
        0x5at 0x4t 0xbt 0x7ft
        0x5bt 0x4t 0xbt 0x7ft
        0x5ct 0x4t 0xbt 0x7ft
        0x5dt 0x4t 0xbt 0x7ft
        0x5et 0x4t 0xbt 0x7ft
        0x5ft 0x4t 0xbt 0x7ft
        0x60t 0x4t 0xbt 0x7ft
        0x61t 0x4t 0xbt 0x7ft
        0x62t 0x4t 0xbt 0x7ft
    .end array-data

    .line 128
    :array_1
    .array-data 0x4
        0x63t 0x4t 0xbt 0x7ft
        0x64t 0x4t 0xbt 0x7ft
        0x65t 0x4t 0xbt 0x7ft
        0x66t 0x4t 0xbt 0x7ft
        0x67t 0x4t 0xbt 0x7ft
        0x68t 0x4t 0xbt 0x7ft
        0x69t 0x4t 0xbt 0x7ft
        0x6at 0x4t 0xbt 0x7ft
        0x6bt 0x4t 0xbt 0x7ft
        0x6ct 0x4t 0xbt 0x7ft
        0x6dt 0x4t 0xbt 0x7ft
        0x6et 0x4t 0xbt 0x7ft
        0x6ft 0x4t 0xbt 0x7ft
        0x70t 0x4t 0xbt 0x7ft
    .end array-data

    .line 136
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 138
    :array_3
    .array-data 0x4
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    .line 98
    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectThread:Landroid/os/HandlerThread;

    .line 99
    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectHandler:Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;

    .line 100
    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestThread:Landroid/os/HandlerThread;

    .line 101
    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestHandler:Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;

    .line 141
    iput v1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    .line 142
    iput v1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I

    .line 143
    iput-boolean v1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestIf:Z

    .line 184
    new-instance v0, Lcom/mediatek/engineermode/usb/UsbTest$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/usb/UsbTest$1;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mUiHandler:Landroid/os/Handler;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/usb/UsbTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/usb/UsbTest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/usb/UsbTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/usb/UsbTest;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/usb/UsbTest;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    return v0
.end method

.method private findBtnIndex(I)I
    .locals 4
    .parameter "id"

    .prologue
    .line 343
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 345
    const-string v1, "USBTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find btn index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    .end local v0           #i:I
    :goto_1
    return v0

    .line 343
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_1
    const-string v1, "USBTest"

    const-string v2, "find btn index error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeOneBtnEnable(Landroid/widget/Button;)V
    .locals 5
    .parameter "selBtn"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    .local v0, arr$:[Landroid/widget/Button;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 227
    .local v1, btn:Landroid/widget/Button;
    if-ne v1, p1, :cond_0

    .line 228
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 226
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 233
    .end local v1           #btn:Landroid/widget/Button;
    :cond_1
    return-void
.end method

.method private updateAllBtn(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    .local v0, arr$:[Landroid/widget/Button;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 216
    .local v1, btn:Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v1           #btn:Landroid/widget/Button;
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "arg0"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, isSTART:Z
    const/4 v2, 0x0

    .line 308
    .local v2, stopBtn:Landroid/widget/Button;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sget-object v4, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_IF:[I

    sget-object v5, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_IF:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 309
    const/16 v3, 0xe

    iput v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    .line 310
    const/4 v1, 0x1

    .line 311
    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x3

    aget-object v2, v3, v4

    .line 322
    :cond_0
    :goto_0
    const-string v3, "USBTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSTART--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v3, "USBTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command--"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    if-eqz v1, :cond_4

    .line 325
    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeCleanMsg()Z

    .line 326
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/usb/UsbTest;->makeOneBtnEnable(Landroid/widget/Button;)V

    .line 327
    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestHandler:Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 328
    iput-boolean v7, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    .line 329
    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectHandler:Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 340
    :cond_1
    :goto_1
    return-void

    .line 313
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/usb/UsbTest;->findBtnIndex(I)I

    move-result v0

    .line 314
    .local v0, btnIndex:I
    iget-boolean v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestIf:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/mediatek/engineermode/usb/UsbTest;->IF_COMMOND:[I

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    :goto_2
    iput v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    .line 316
    const/4 v1, 0x0

    .line 317
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_0

    .line 318
    const/4 v1, 0x1

    .line 319
    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    add-int/lit8 v4, v0, 0x1

    aget-object v2, v3, v4

    goto :goto_0

    .line 314
    :cond_3
    sget-object v3, Lcom/mediatek/engineermode/usb/UsbTest;->EX_COMMAND:[I

    div-int/lit8 v4, v0, 0x2

    aget v3, v3, v4

    goto :goto_2

    .line 330
    .end local v0           #btnIndex:I
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    if-eqz v3, :cond_1

    .line 331
    iput-boolean v6, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    .line 332
    iget v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    invoke-static {v3}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeStopTest(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 333
    const v3, 0x7f080391

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 336
    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeCleanMsg()Z

    .line 338
    :cond_5
    invoke-direct {p0, v7}, Lcom/mediatek/engineermode/usb/UsbTest;->updateAllBtn(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, extra:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 153
    const-string v2, "if_test"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestIf:Z

    .line 155
    :cond_0
    const-string v2, "USBTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is test IF ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestIf:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-boolean v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestIf:Z

    if-eqz v2, :cond_1

    .line 157
    const v2, 0x7f030091

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 158
    sget-object v2, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_IF:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    .line 159
    sget-object v2, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_IF:[I

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    .line 166
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 167
    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    aget v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    aput-object v2, v3, v1

    .line 168
    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 161
    .end local v1           #i:I
    :cond_1
    const v2, 0x7f08038b

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 162
    const v2, 0x7f030092

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 163
    sget-object v2, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_EX:[I

    array-length v2, v2

    new-array v2, v2, [Landroid/widget/Button;

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnList:[Landroid/widget/Button;

    .line 164
    sget-object v2, Lcom/mediatek/engineermode/usb/UsbTest;->BUTTONS_IDS_EX:[I

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mBtnIds:[I

    goto :goto_0

    .line 170
    .restart local v1       #i:I
    :cond_2
    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeInit()Z

    move-result v2

    if-nez v2, :cond_3

    .line 171
    const v2, 0x7f080390

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 173
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 176
    :cond_3
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "USBTest/ResultCollect"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectThread:Landroid/os/HandlerThread;

    .line 177
    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 178
    new-instance v2, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;

    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectHandler:Lcom/mediatek/engineermode/usb/UsbTest$ResultCollectHandler;

    .line 179
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "USBTest/Test"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestThread:Landroid/os/HandlerThread;

    .line 180
    iget-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 181
    new-instance v2, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;

    iget-object v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestHandler:Lcom/mediatek/engineermode/usb/UsbTest$TestHandler;

    .line 182
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f08038f

    const v4, 0x7f080294

    const/4 v3, 0x0

    .line 247
    const-string v1, "USBTest"

    const-string v2, "-->onCreateDialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-ne p1, v6, :cond_0

    .line 249
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f08038a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 251
    const v1, 0x7f08039d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 252
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 253
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 286
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :goto_0
    return-object v0

    .line 255
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 256
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/engineermode/usb/UsbDriver;->MSG:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/usb/UsbTest$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/usb/UsbTest$2;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 264
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 265
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 266
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mMsg:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/usb/UsbTest$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/usb/UsbTest$3;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 274
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 275
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f08038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/engineermode/usb/UsbTest$4;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/usb/UsbTest$4;-><init>(Lcom/mediatek/engineermode/usb/UsbTest;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 284
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 286
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 291
    const-string v0, "USBTest"

    const-string v1, "-->onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mRun:Z

    .line 294
    iget v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mCommand:I

    invoke-static {v0}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeStopTest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    const-string v0, "USBTest"

    const-string v1, "onDestroy() nativeStopTest fail"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeCleanMsg()Z

    .line 299
    invoke-static {}, Lcom/mediatek/engineermode/usb/UsbDriver;->nativeDeInit()V

    .line 300
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mResultCollectThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    iget-object v0, p0, Lcom/mediatek/engineermode/usb/UsbTest;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 302
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 303
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 237
    packed-switch p1, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 240
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->removeDialog(I)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
