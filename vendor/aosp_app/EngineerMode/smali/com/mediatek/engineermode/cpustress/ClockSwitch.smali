.class public Lcom/mediatek/engineermode/cpustress/ClockSwitch;
.super Landroid/app/Activity;
.source "ClockSwitch.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;


# static fields
.field private static final COMMAND_GET_ALL_PLL:Ljava/lang/String; = "cat /proc/clkmgr/pll_fsel"

.field private static final CPU_MAX_FREQ_CMD:Ljava/lang/String; = "cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

.field private static final CPU_MAX_FREQ_FORMAT:Ljava/lang/String; = "%1.1f"

.field private static final CPU_MAX_FREQ_ORI:Ljava/lang/String; = "1"

.field private static final CPU_SS_DEBUG_MODE:Ljava/lang/String; = "/proc/cpu_ss/cpu_ss_debug_mode"

.field private static final CPU_SS_MODE:Ljava/lang/String; = "/proc/cpu_ss/cpu_ss_mode"

.field private static final CPU_SS_PERIOD:Ljava/lang/String; = "/proc/cpu_ss/cpu_ss_period"

.field private static final CPU_SS_PERIOD_MODE:Ljava/lang/String; = "/proc/cpu_ss/cpu_ss_period_mode"

.field private static final DEFAULT_NSECOND:Ljava/lang/String; = "0"

.field private static final DEFAULT_SECOND:Ljava/lang/String; = "1"

.field private static final DIALOG_WAIT:I = 0x1

.field private static final FILES:[Ljava/lang/String; = null

.field private static final GET_COMMAND_FORMAT:Ljava/lang/String; = "cat %1$s"

.field private static final INDEX_QUERY_DEBUG_MODE:I = 0xd

.field private static final INDEX_QUERY_MODE:I = 0xa

.field private static final INDEX_QUERY_PERIOD:I = 0xb

.field private static final INDEX_QUERY_PERIOD_MODE:I = 0xc

.field private static final INDEX_SET_DEBUG_MODE:I = 0x3

.field private static final INDEX_SET_DEBUG_MODE_VALUE_D:Ljava/lang/String; = "disable"

.field private static final INDEX_SET_DEBUG_MODE_VALUE_E:Ljava/lang/String; = "enable"

.field private static final INDEX_SET_MODE:I = 0x0

.field private static final INDEX_SET_MODE_VALUE_0:Ljava/lang/String; = "0"

.field private static final INDEX_SET_MODE_VALUE_1:Ljava/lang/String; = "1"

.field private static final INDEX_SET_PERIOD:I = 0x1

.field private static final INDEX_SET_PERIOD_MODE:I = 0x2

.field private static final INDEX_SET_PERIOD_MODE_VALUE_D:Ljava/lang/String; = "disable"

.field private static final INDEX_SET_PERIOD_MODE_VALUE_E:Ljava/lang/String; = "enable"

.field private static final INDEX_SET_QUERY_DELTA:I = 0xa

.field private static final INDEX_UPDATE_PLL:I = 0x12

.field private static final MHZ:D = 1000000.0

.field private static final PLL_NAME_ARM:Ljava/lang/String; = "ARMPLL"

.field private static final PLL_VALUE_PATTERN:Ljava/lang/String; = "^[0-9a-fA-F]{1,16}$"

.field private static final PLL_VALUE_PRE:Ljava/lang/String; = "-1"

.field private static final QUERY_ALL_RECORD_MASK:I = 0xf

.field private static final REGEX_PLL_GROUP:Ljava/lang/String; = "\\[[\\s\\S]*?\\]"

.field private static final SET_COMMAND_FORMAT:Ljava/lang/String; = "echo %1$s > %2$s"

.field private static final TAG:Ljava/lang/String; = "EM/CpuStress_ClockSwitch"


# instance fields
.field private mArmPllId:I

.field private mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

.field private mBtnSet:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnSwitchG:Landroid/widget/Button;

.field private mBtnSwitchM:Landroid/widget/Button;

.field private mCbDebugMsgEnable:Landroid/widget/CheckBox;

.field private mEtArmPllValue:Landroid/widget/EditText;

.field private mEtNSecond:Landroid/widget/EditText;

.field private mEtSecond:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private mQueryRecordMask:I

.field private mTvDebugMsgEnable:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/proc/cpu_ss/cpu_ss_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/proc/cpu_ss/cpu_ss_period"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/proc/cpu_ss/cpu_ss_period_mode"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/proc/cpu_ss/cpu_ss_debug_mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->FILES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I

    .line 115
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 116
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    .line 117
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mTvDebugMsgEnable:Landroid/widget/TextView;

    .line 118
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    .line 119
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    .line 120
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    .line 121
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    .line 122
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    .line 123
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;

    .line 124
    iput-object v1, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mArmPllId:I

    .line 127
    new-instance v0, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch$1;-><init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getResponse(I)V

    return-void
.end method

.method static synthetic access$176(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iget v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updatePeriodView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateAutoTestView(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateArmPll()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/cpustress/ClockSwitch;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getCurrentStatus(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->setCommand(Ljava/lang/String;I)V

    return-void
.end method

.method private getCurrentStatus(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 422
    packed-switch p1, :pswitch_data_0

    .line 430
    const-string v0, "EM/CpuStress_ClockSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentStatus: index is error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :goto_0
    return-void

    .line 427
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getStatus(I)V

    goto :goto_0

    .line 422
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getResponse(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 363
    packed-switch p1, :pswitch_data_0

    .line 371
    const-string v0, "EM/CpuStress_ClockSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResponse: index is error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :goto_0
    return-void

    .line 368
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->getStatus(I)V

    goto :goto_0

    .line 363
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getStatus(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x1

    .line 442
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enter getStatus: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, bError:Z
    const/4 v1, 0x0

    .line 446
    .local v1, command:Ljava/lang/String;
    :try_start_0
    const-string v4, "cat %1$s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    sget-object v7, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->FILES:[Ljava/lang/String;

    rem-int/lit8 v8, p1, 0xa

    aget-object v7, v7, v8

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 448
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCommand: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 458
    :goto_0
    if-eqz v0, :cond_0

    .line 459
    const v4, 0x7f080150

    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 473
    :goto_1
    return-void

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v0, 0x1

    .line 451
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command format NullPointerException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 453
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 454
    .local v2, e:Ljava/util/IllegalFormatException;
    const/4 v0, 0x1

    .line 455
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command format IllegalFormatException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 462
    .end local v2           #e:Ljava/util/IllegalFormatException;
    :cond_0
    monitor-enter p0

    .line 464
    :try_start_1
    invoke-static {v1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    .line 465
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 466
    .local v3, m:Landroid/os/Message;
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 471
    .end local v3           #m:Landroid/os/Message;
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 468
    :catch_2
    move-exception v2

    .line 469
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exec command IOException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private handleEvent(Ljava/lang/String;I)V
    .locals 3
    .parameter "value"
    .parameter "index"

    .prologue
    .line 346
    const-string v0, "EM/CpuStress_ClockSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/mediatek/engineermode/cpustress/ClockSwitch$3;-><init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;Ljava/lang/String;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 354
    return-void
.end method

.method private setArmPll()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 529
    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    .local v2, editValue:Ljava/lang/String;
    const-string v6, "^[0-9a-fA-F]{1,16}$"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 531
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 532
    .local v3, m:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 533
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "echo "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mArmPllId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " > /proc/clkmgr/pll_fsel"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, cmd:Ljava/lang/String;
    const/4 v5, 0x0

    .line 537
    .local v5, result:Z
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 538
    const/4 v5, 0x1

    .line 543
    :cond_0
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set ARMPLL value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v5, :cond_1

    const-string v6, "success"

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 550
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #result:Z
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateArmPll()V

    .line 551
    return-void

    .line 540
    .restart local v0       #cmd:Ljava/lang/String;
    .restart local v5       #result:Z
    :catch_0
    move-exception v1

    .line 541
    .local v1, e:Ljava/io/IOException;
    const-string v6, "EM/CpuStress_ClockSwitch"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setArmPll IOException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    const-string v6, "fail"

    goto :goto_1

    .line 547
    .end local v0           #cmd:Ljava/lang/String;
    .end local v5           #result:Z
    :cond_2
    const-string v6, "Input ARMPLL error"

    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private setCommand(Ljava/lang/String;I)V
    .locals 9
    .parameter "value"
    .parameter "index"

    .prologue
    const/4 v8, 0x1

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, command:Ljava/lang/String;
    const/4 v0, 0x0

    .line 388
    .local v0, bError:Z
    :try_start_0
    const-string v3, "echo %1$s > %2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->FILES:[Ljava/lang/String;

    rem-int/lit8 v7, p2, 0xa

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 390
    const-string v3, "EM/CpuStress_ClockSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 400
    :goto_0
    if-eqz v0, :cond_0

    .line 401
    const v3, 0x7f080150

    invoke-static {p0, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 413
    :goto_1
    return-void

    .line 391
    :catch_0
    move-exception v2

    .line 392
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v0, 0x1

    .line 393
    const-string v3, "EM/CpuStress_ClockSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command format NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 395
    .end local v2           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 396
    .local v2, e:Ljava/util/IllegalFormatException;
    const/4 v0, 0x1

    .line 397
    const-string v3, "EM/CpuStress_ClockSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command format IllegalFormatException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v2           #e:Ljava/util/IllegalFormatException;
    :cond_0
    monitor-enter p0

    .line 407
    :try_start_1
    invoke-static {v1}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 411
    :goto_2
    :try_start_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 408
    :catch_2
    move-exception v2

    .line 409
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "EM/CpuStress_ClockSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exec command IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method private updateArmPll()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 476
    const/4 v8, 0x0

    .line 477
    .local v8, pllInfo:Ljava/lang/String;
    const/4 v0, 0x0

    .line 478
    .local v0, bSuccess:Z
    const-string v9, ""

    .line 480
    .local v9, value:Ljava/lang/String;
    :try_start_0
    const-string v11, "cat /proc/clkmgr/pll_fsel"

    invoke-static {v11}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_4

    .line 482
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v8

    .line 483
    const-string v11, "\\[[\\s\\S]*?\\]"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 484
    .local v7, pat:Ljava/util/regex/Pattern;
    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 485
    .local v4, matcher:Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 486
    .local v3, index:I
    const/4 v6, 0x0

    .line 487
    .local v6, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, content:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 489
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_0

    .line 493
    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 494
    if-nez v3, :cond_1

    .line 495
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mArmPllId:I

    .line 496
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_1
    if-ne v10, v3, :cond_2

    .line 498
    move-object v6, v1

    .line 499
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 501
    :cond_2
    move-object v9, v1

    .line 502
    const/4 v3, 0x0

    .line 503
    const-string v11, "ARMPLL"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 504
    const-string v11, "EM/CpuStress_ClockSwitch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "find ARMPLL: id "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mArmPllId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_3
    if-eqz v9, :cond_4

    .line 511
    const/4 v0, 0x1

    .line 512
    const-string v11, "-1"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 513
    const-string v9, "-1"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 522
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pat:Ljava/util/regex/Pattern;
    :cond_4
    :goto_1
    iget-object v11, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mHandler:Landroid/os/Handler;

    const/16 v12, 0x12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 523
    .local v5, msg:Landroid/os/Message;
    if-eqz v0, :cond_6

    :goto_2
    iput v10, v5, Landroid/os/Message;->arg1:I

    .line 524
    iput-object v9, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 525
    iget-object v10, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    return-void

    .line 515
    .end local v5           #msg:Landroid/os/Message;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #index:I
    .restart local v4       #matcher:Ljava/util/regex/Matcher;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #pat:Ljava/util/regex/Pattern;
    :cond_5
    const/4 v11, 0x2

    :try_start_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_1

    .line 519
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #matcher:Ljava/util/regex/Matcher;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #pat:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v2

    .line 520
    .local v2, e:Ljava/io/IOException;
    const-string v11, "EM/CpuStress_ClockSwitch"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateArmPll IOException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 523
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #msg:Landroid/os/Message;
    :cond_6
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private updateAutoTestView(Z)V
    .locals 4
    .parameter "bRun"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 306
    if-eqz p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f08014c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    const v1, 0x7f08014b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 314
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 316
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePeriodView(Ljava/lang/String;)V
    .locals 7
    .parameter "period"

    .prologue
    const/16 v6, 0x28

    const/4 v5, -0x1

    .line 277
    const-string v2, "EM/CpuStress_ClockSwitch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter updatePeriodView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 281
    .local v0, begin:I
    if-eq v5, v0, :cond_0

    .line 282
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 285
    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 286
    .local v1, end:I
    if-eq v5, v0, :cond_1

    if-eq v5, v1, :cond_1

    if-ge v0, v1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    if-eqz v2, :cond_2

    .line 290
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->isClockSwitchRun()Z

    move-result v2

    if-nez v2, :cond_2

    .line 291
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 296
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 297
    return-void
.end method

.method private updateSwitchView(Z)V
    .locals 3
    .parameter "bM"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 328
    if-eqz p1, :cond_0

    .line 329
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 555
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 557
    const-string v0, "EM/CpuStress_ClockSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckBox is checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    if-eqz p2, :cond_1

    const-string v0, "enable"

    :goto_0
    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    .line 564
    :cond_0
    :goto_1
    return-void

    .line 558
    :cond_1
    const-string v0, "disable"

    goto :goto_0

    .line 561
    :cond_2
    const-string v0, "EM/CpuStress_ClockSwitch"

    const-string v1, "Unknown event"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "arg0"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 568
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mTvDebugMsgEnable:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 569
    const-string v4, "EM/CpuStress_ClockSwitch"

    const-string v5, "TextView is clicked"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->performClick()Z

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 572
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is clicked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08014b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 576
    const/4 v3, 0x0

    .line 577
    .local v3, second:I
    const-wide/16 v1, 0x0

    .line 579
    .local v1, nsecond:J
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 580
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 587
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v8}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    .line 588
    const-string v4, "enable"

    invoke-direct {p0, v4, v9}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    .line 590
    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateAutoTestView(Z)V

    .line 591
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    if-eqz v4, :cond_0

    .line 592
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->startTest(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, nfe:Ljava/lang/NumberFormatException;
    const-string v4, "EM/CpuStress_ClockSwitch"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v4, "Time period value error"

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 595
    .end local v0           #nfe:Ljava/lang/NumberFormatException;
    .end local v1           #nsecond:J
    .end local v3           #second:I
    :cond_2
    const-string v4, "disable"

    invoke-direct {p0, v4, v9}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    .line 597
    invoke-direct {p0, v7}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->updateAutoTestView(Z)V

    .line 598
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->stopTest()V

    .line 600
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-virtual {v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    goto/16 :goto_0

    .line 603
    :cond_3
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 604
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is clicked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v4, "0"

    invoke-direct {p0, v4, v7}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 606
    :cond_4
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 607
    const-string v4, "EM/CpuStress_ClockSwitch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is clicked"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v4, "1"

    invoke-direct {p0, v4, v7}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->handleEvent(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 609
    :cond_5
    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 610
    const-string v4, "EM/CpuStress_ClockSwitch"

    const-string v5, "Set ARM pll is clicked"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->setArmPll()V

    goto/16 :goto_0

    .line 613
    :cond_6
    const-string v4, "EM/CpuStress_ClockSwitch"

    const-string v5, "Unknown event"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x8

    .line 184
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 185
    const v3, 0x7f030041

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 186
    const v3, 0x7f0b01fa

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    .line 187
    const v3, 0x7f0b01f9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mTvDebugMsgEnable:Landroid/widget/TextView;

    .line 188
    const v3, 0x7f0b01fd

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    .line 189
    const v3, 0x7f0b01fe

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    .line 190
    const v3, 0x7f0b01ff

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    .line 191
    const v3, 0x7f0b01fb

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtSecond:Landroid/widget/EditText;

    .line 192
    const v3, 0x7f0b01fc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtNSecond:Landroid/widget/EditText;

    .line 193
    const v3, 0x7f0b0201

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;

    .line 194
    const v3, 0x7f0b0202

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    .line 195
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mCbDebugMsgEnable:Landroid/widget/CheckBox;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 196
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mTvDebugMsgEnable:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchM:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const/16 v3, 0x10

    invoke-static {}, Lcom/mediatek/engineermode/ChipSupport;->getChip()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 203
    :try_start_0
    const-string v3, "cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v3}, Lcom/mediatek/engineermode/ShellExe;->execCommand(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 205
    invoke-static {}, Lcom/mediatek/engineermode/ShellExe;->getOutput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, freq:I
    const-string v3, "%1.1f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    int-to-double v6, v1

    const-wide v8, 0x412e848000000000L

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSwitchG:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v1           #freq:I
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/io/IOException;
    const-string v3, "EM/CpuStress_ClockSwitch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get max freq IOException: "

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

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const v3, 0x7f0b0200

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mEtArmPllValue:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBtnSet:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    .line 250
    const/4 v0, 0x0

    .line 251
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-ne p1, v2, :cond_0

    .line 252
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 253
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 254
    const v1, 0x7f080118

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 256
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 262
    :goto_0
    return-object v0

    .line 258
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 259
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 260
    const v1, 0x7f08011a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 619
    const-string v0, "EM/CpuStress_ClockSwitch"

    const-string v1, "Enter onServiceConnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    check-cast p2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;->getService()Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 622
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    iput-object p0, v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    .line 624
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 628
    const-string v0, "EM/CpuStress_ClockSwitch"

    const-string v1, "Enter onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mBoundService:Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    .line 631
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 225
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;->mQueryRecordMask:I

    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/cpustress/ClockSwitch$2;-><init>(Lcom/mediatek/engineermode/cpustress/ClockSwitch;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, p0, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 239
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 244
    invoke-virtual {p0, p0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 246
    return-void
.end method

.method public onUpdateTestResult()V
    .locals 2

    .prologue
    .line 635
    const-string v0, "EM/CpuStress_ClockSwitch"

    const-string v1, "Enter onupdateTestResult"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method
