.class public Lcom/mediatek/engineermode/cpustress/CpuStressTestService;
.super Landroid/app/Service;
.source "CpuStressTestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;,
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;,
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;,
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;,
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;,
        Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;
    }
.end annotation


# static fields
.field public static final CORE_NUMBER_1:I = 0x1

.field public static final CORE_NUMBER_2:I = 0x2

.field public static final CORE_NUMBER_3:I = 0x3

.field public static final CORE_NUMBER_4:I = 0x4

.field public static final CORE_NUMBER_8:I = 0x8

.field protected static final CORE_NUM_MASK:I = 0x30

.field private static final CPU_1_ONLINE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu1/online"

.field private static final CPU_3_ONLINE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu3/online"

.field private static final CPU_7_ONLINE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpu7/online"

.field private static final FAIL:Ljava/lang/String; = "FAIL"

.field private static final HANDLER_THREAD_NAME_APMCU:Ljava/lang/String; = "ApMcu"

.field private static final HANDLER_THREAD_NAME_BACKUPRESTORE:Ljava/lang/String; = "BackupRestore"

.field private static final HANDLER_THREAD_NAME_VIDEO:Ljava/lang/String; = "VideoCodec"

.field private static final INDEX_TEST_APMCU:I = 0x1

.field private static final INDEX_TEST_BACKUP:I = 0x3

.field private static final INDEX_TEST_RESTORE:I = 0x4

.field private static final INDEX_TEST_VIDEOCODEC:I = 0x2

.field private static final LOOPCOUNT_DEFAULT_VALUE:J = 0x5f5e0ffL

.field private static final PASS:Ljava/lang/String; = "PASS"

.field private static final PASS_89:Ljava/lang/String; = "Frame #1950"

.field public static final RESULT_CA9:Ljava/lang/String; = "result_ca9"

.field public static final RESULT_DHRY:Ljava/lang/String; = "result_dhry"

.field private static final RESULT_ERROR:Ljava/lang/String; = "ERROR"

.field public static final RESULT_FDCT:Ljava/lang/String; = "result_fdct"

.field public static final RESULT_IMDCT:Ljava/lang/String; = "result_imdct"

.field public static final RESULT_MEMCPY:Ljava/lang/String; = "result_memcpy"

.field public static final RESULT_NEON:Ljava/lang/String; = "result_neon"

.field public static final RESULT_PASS_CA9:Ljava/lang/String; = "result_pass_ca9"

.field public static final RESULT_PASS_DHRY:Ljava/lang/String; = "result_pass_dhry"

.field public static final RESULT_PASS_FDCT:Ljava/lang/String; = "result_pass_fdct"

.field public static final RESULT_PASS_IMDCT:Ljava/lang/String; = "result_pass_imdct"

.field public static final RESULT_PASS_MEMCPY:Ljava/lang/String; = "result_pass_memcpy"

.field public static final RESULT_PASS_NEON:Ljava/lang/String; = "result_pass_neon"

.field public static final RESULT_PASS_VIDEOCODEC:Ljava/lang/String; = "result_pass_video_codec"

.field private static final RESULT_SEPARATE:Ljava/lang/String; = ";"

.field public static final RESULT_VIDEOCODEC:Ljava/lang/String; = "result_video_codec"

.field private static final SKIP:Ljava/lang/String; = "is powered off"

.field private static final SKIP_89:Ljava/lang/String; = "Frame #"

.field private static final TAG:Ljava/lang/String; = "EM/CpuStressTestService"

.field protected static final THERMAL_ETC_FILE:Ljava/lang/String; = "/etc/.tp/.ht120.mtc"

.field private static final TIME_DELAYED:I = 0x64

.field public static final VALUE_ITERATION:Ljava/lang/String; = "iteration"

.field public static final VALUE_LOOPCOUNT:Ljava/lang/String; = "loopcount"

.field public static final VALUE_MASK:Ljava/lang/String; = "mask"

.field public static final VALUE_RESULT:Ljava/lang/String; = "result"

.field public static final VALUE_RUN:Ljava/lang/String; = "run"

.field public static sCoreNumber:I

.field protected static sIndexMode:I

.field protected static sIsThermalDisabled:Z

.field protected static sIsThermalSupport:Z


# instance fields
.field private final mBinder:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

.field private mHandlerApMcu:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;

.field private mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

.field private final mHandlerThreadApMcu:Landroid/os/HandlerThread;

.field private final mHandlerThreadBackupRestore:Landroid/os/HandlerThread;

.field private final mHandlerThreadVideoCodec:Landroid/os/HandlerThread;

.field private mHandlerVideoCodec:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;

.field private mIterationVideoCodec:I

.field private mLoopCountApMcu:J

.field private mLoopCountVideoCodec:J

.field private mResultApMcu:J

.field private mResultPassCa9:I

.field private mResultPassDhry:I

.field private mResultPassFdct:I

.field private mResultPassImdct:I

.field private mResultPassL2C:I

.field private mResultPassMemcpy:I

.field private mResultPassNeon:I

.field private mResultPassVideoCodec:I

.field private mResultTotalCa9:I

.field private mResultTotalDhry:I

.field private mResultTotalFdct:I

.field private mResultTotalImdct:I

.field private mResultTotalL2C:I

.field private mResultTotalMemcpy:I

.field private mResultTotalNeon:I

.field private mResultTotalVideoCodec:I

.field private mResultVideoCodec:I

.field private mTestApMcuMask:I

.field private mTestApMcuRunning:Z

.field protected mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

.field private mTestClockSwitchRunning:Z

.field private mTestVideoCodecRunning:Z

.field private mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

.field protected mWantStopApmcu:Z

.field protected mWantStopSwCodec:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    sput v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    .line 118
    sput-boolean v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalSupport:Z

    .line 119
    sput-boolean v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalDisabled:Z

    .line 120
    sput v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/32 v4, 0x5f5e0ff

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 122
    iput-wide v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    .line 123
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 125
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    .line 126
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassL2C:I

    .line 127
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalL2C:I

    .line 128
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassNeon:I

    .line 129
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalNeon:I

    .line 130
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassCa9:I

    .line 131
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalCa9:I

    .line 132
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassDhry:I

    .line 133
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalDhry:I

    .line 134
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassMemcpy:I

    .line 135
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalMemcpy:I

    .line 136
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassFdct:I

    .line 137
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalFdct:I

    .line 138
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassImdct:I

    .line 139
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalImdct:I

    .line 141
    iput-wide v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    .line 142
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mIterationVideoCodec:I

    .line 143
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    .line 145
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassVideoCodec:I

    .line 146
    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalVideoCodec:I

    .line 148
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClockSwitchRunning:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    .line 151
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    .line 152
    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    .line 154
    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    .line 156
    new-instance v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;-><init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mBinder:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

    .line 157
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApMcu"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadApMcu:Landroid/os/HandlerThread;

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoCodec"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadVideoCodec:Landroid/os/HandlerThread;

    .line 161
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackupRestore"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadBackupRestore:Landroid/os/HandlerThread;

    .line 163
    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerApMcu:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;

    .line 164
    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerVideoCodec:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;

    .line 165
    iput-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    .line 852
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    return-wide p1
.end method

.method static synthetic access$010(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    return-wide p1
.end method

.method static synthetic access$310(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)J
    .locals 4
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doVideoCodecTest()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doBackupRestore(I)V

    return-void
.end method

.method private backup(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 716
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter backup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, m:Landroid/os/Message;
    add-int/lit8 v1, p1, 0x14

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 719
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method private coreNum()I
    .locals 2

    .prologue
    .line 653
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpu7/online"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    const/16 v0, 0x8

    .line 660
    :goto_0
    return v0

    .line 655
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpu3/online"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    const/4 v0, 0x4

    goto :goto_0

    .line 657
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/cpu1/online"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    const/4 v0, 0x2

    goto :goto_0

    .line 660
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private dataGenerator(I)Landroid/os/Bundle;
    .locals 4
    .parameter "index"

    .prologue
    .line 593
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataGenerator index is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 595
    .local v0, data:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 625
    :goto_0
    return-object v0

    .line 597
    :pswitch_0
    const-string v1, "run"

    iget-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    const-string v1, "loopcount"

    iget-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 599
    const-string v1, "mask"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    const-string v1, "result"

    iget-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 601
    const-string v1, "result_neon"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalNeon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 602
    const-string v1, "result_pass_neon"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassNeon:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 603
    const-string v1, "result_ca9"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalCa9:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 604
    const-string v1, "result_pass_ca9"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassCa9:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v1, "result_dhry"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalDhry:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string v1, "result_pass_dhry"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassDhry:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    const-string v1, "result_memcpy"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalMemcpy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 608
    const-string v1, "result_pass_memcpy"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassMemcpy:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    const-string v1, "result_fdct"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalFdct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 610
    const-string v1, "result_pass_fdct"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassFdct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 611
    const-string v1, "result_imdct"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalImdct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 612
    const-string v1, "result_pass_imdct"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassImdct:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 615
    :pswitch_1
    const-string v1, "run"

    iget-boolean v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 616
    const-string v1, "loopcount"

    iget-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 617
    const-string v1, "iteration"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mIterationVideoCodec:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 618
    const-string v1, "result"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 619
    const-string v1, "result_video_codec"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalVideoCodec:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 620
    const-string v1, "result_pass_video_codec"

    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassVideoCodec:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doApMcuTest()V
    .locals 5

    .prologue
    .line 352
    const-string v1, "EM/CpuStressTestService"

    const-string v2, "enter doApMpuTest"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x1

    .line 354
    .local v0, testCoreNumber:I
    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    packed-switch v1, :pswitch_data_0

    .line 377
    :goto_0
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 378
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 380
    :cond_0
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 381
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 383
    :cond_1
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 384
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 386
    :cond_2
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 387
    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 389
    :cond_3
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 390
    const/4 v1, 0x4

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 392
    :cond_4
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 393
    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->doApMcuTest(II)V

    .line 396
    :cond_5
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iResultApMpu is 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 356
    :pswitch_0
    const/4 v0, 0x1

    .line 357
    goto :goto_0

    .line 359
    :pswitch_1
    const/4 v0, 0x2

    .line 360
    goto :goto_0

    .line 362
    :pswitch_2
    const/4 v0, 0x3

    .line 363
    goto :goto_0

    .line 365
    :pswitch_3
    const/4 v0, 0x4

    .line 366
    goto :goto_0

    .line 368
    :pswitch_4
    const/16 v0, 0x8

    .line 369
    goto :goto_0

    .line 371
    :pswitch_5
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    .line 372
    goto :goto_0

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private doApMcuTest(II)V
    .locals 6
    .parameter "index"
    .parameter "coreNumber"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 406
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doApMpuTest index is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const v1, 0x9c41

    new-array v2, v5, [I

    aput p1, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    invoke-direct {p0, v1, v5, v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, response:Ljava/lang/String;
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doApMcuTest response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 413
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 415
    :pswitch_0
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalNeon:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalNeon:I

    .line 416
    invoke-direct {p0, v0, v4}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassNeon:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassNeon:I

    goto :goto_0

    .line 421
    :pswitch_1
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalCa9:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalCa9:I

    .line 422
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassCa9:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassCa9:I

    goto :goto_0

    .line 427
    :pswitch_2
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalDhry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalDhry:I

    .line 428
    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassDhry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassDhry:I

    goto :goto_0

    .line 433
    :pswitch_3
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalMemcpy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalMemcpy:I

    .line 434
    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassMemcpy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassMemcpy:I

    goto :goto_0

    .line 439
    :pswitch_4
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalFdct:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalFdct:I

    .line 440
    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassFdct:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassFdct:I

    goto :goto_0

    .line 445
    :pswitch_5
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalImdct:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalImdct:I

    .line 446
    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->parseApMcuTestResult(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    iget v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassImdct:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassImdct:I

    goto :goto_0

    .line 413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private doBackupRestore(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 342
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter doBackupRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const v1, 0x9c43

    new-array v2, v4, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-direct {p0, v1, v4, v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, result:Ljava/lang/String;
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBackupRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    return-void
.end method

.method private doVideoCodecTest()V
    .locals 12

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 504
    const-string v7, "EM/CpuStressTestService"

    const-string v8, "enter doVideoCodecTest"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v3, ""

    .line 506
    .local v3, response:Ljava/lang/String;
    const/4 v6, -0x1

    .line 507
    .local v6, testCoreNumber:I
    sget v7, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    packed-switch v7, :pswitch_data_0

    .line 530
    :goto_0
    const/4 v7, -0x1

    if-ne v7, v6, :cond_1

    .line 583
    :cond_0
    :goto_1
    return-void

    .line 509
    :pswitch_0
    const/4 v6, 0x1

    .line 510
    goto :goto_0

    .line 512
    :pswitch_1
    const/4 v6, 0x2

    .line 513
    goto :goto_0

    .line 515
    :pswitch_2
    const/4 v6, 0x3

    .line 516
    goto :goto_0

    .line 518
    :pswitch_3
    const/4 v6, 0x4

    .line 519
    goto :goto_0

    .line 521
    :pswitch_4
    const/16 v6, 0x8

    .line 522
    goto :goto_0

    .line 524
    :pswitch_5
    sget v6, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    .line 525
    goto :goto_0

    .line 533
    :cond_1
    const v7, 0x9c42

    new-array v8, v9, [I

    aput v6, v8, v11

    aput v10, v8, v10

    invoke-direct {p0, v7, v9, v8}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->runCmdInNative(II[I)Ljava/lang/String;

    move-result-object v3

    .line 536
    const-string v7, "EM/CpuStressTestService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doVideoCodecTest response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    if-eqz v3, :cond_0

    .line 540
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalVideoCodec:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalVideoCodec:I

    .line 541
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 542
    .local v4, resultArray:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 543
    .local v0, bPass:Z
    array-length v7, v4

    if-lez v7, :cond_8

    .line 544
    const/4 v7, 0x4

    sget v8, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    if-gt v7, v8, :cond_4

    .line 545
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v7, v4

    if-ge v1, v7, :cond_9

    .line 546
    aget-object v7, v4, v1

    const-string v8, "Frame #1950"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 547
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    or-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 545
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 548
    :cond_2
    aget-object v7, v4, v1

    const-string v8, "Frame #"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 549
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    or-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 550
    const-string v7, "EM/CpuStressTestService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoCodec test, CPU"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OFFLINE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 552
    :cond_3
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 553
    const/4 v0, 0x0

    goto :goto_3

    .line 557
    .end local v1           #i:I
    :cond_4
    const-string v2, "Frame #1950"

    .line 558
    .local v2, passTag:Ljava/lang/String;
    const-string v5, "Frame #"

    .line 559
    .local v5, skipTag:Ljava/lang/String;
    const/16 v7, 0x10

    invoke-static {v7, v10}, Lcom/mediatek/engineermode/ChipSupport;->isCurrentChipHigher(IZ)Z

    move-result v7

    if-nez v7, :cond_5

    .line 560
    const-string v2, "PASS"

    .line 561
    const-string v5, "is powered off"

    .line 563
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_9

    .line 564
    aget-object v7, v4, v1

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 565
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    or-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 563
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 566
    :cond_6
    aget-object v7, v4, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 567
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    or-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 568
    const-string v7, "EM/CpuStressTestService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoCodec test, CPU"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " OFFLINE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 570
    :cond_7
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int v8, v10, v1

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 571
    const/4 v0, 0x0

    goto :goto_5

    .line 576
    .end local v1           #i:I
    .end local v2           #passTag:Ljava/lang/String;
    .end local v5           #skipTag:Ljava/lang/String;
    :cond_8
    iput v11, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 577
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    sget v8, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    shl-int/lit8 v8, v8, 0x30

    or-int/2addr v7, v8

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 578
    const/4 v0, 0x0

    .line 580
    :cond_9
    if-eqz v0, :cond_0

    .line 581
    iget v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassVideoCodec:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassVideoCodec:I

    goto/16 :goto_1

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private parseApMcuTestResult(Ljava/lang/String;I)Z
    .locals 8
    .parameter "response"
    .parameter "index"

    .prologue
    const/4 v7, 0x1

    .line 456
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 457
    .local v2, result:[Ljava/lang/String;
    const/4 v0, 0x1

    .line 458
    .local v0, bPass:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 459
    aget-object v3, v2, v1

    const-string v4, "PASS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    iget-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    add-int v5, p2, v1

    shl-int v5, v7, v5

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 458
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    :cond_0
    aget-object v3, v2, v1

    const-string v4, "is powered off"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 462
    iget-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    add-int v5, p2, v1

    shl-int v5, v7, v5

    int-to-long v5, v5

    or-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 463
    const-string v3, "EM/CpuStressTestService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NEON test, CPU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OFFLINE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    :cond_1
    const/4 v0, 0x0

    .line 466
    iget-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    add-int v5, p2, v1

    shl-int v5, v7, v5

    xor-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    goto :goto_1

    .line 469
    :cond_2
    return v0
.end method

.method private restore(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 729
    const-string v1, "EM/CpuStressTestService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 731
    .local v0, m:Landroid/os/Message;
    add-int/lit8 v1, p1, 0x28

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 732
    iget-object v1, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 733
    return-void
.end method

.method private varargs runCmdInNative(II[I)Ljava/lang/String;
    .locals 11
    .parameter "index"
    .parameter "paramNum"
    .parameter "param"

    .prologue
    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .local v1, build:Ljava/lang/StringBuilder;
    new-instance v2, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;

    invoke-direct {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;-><init>()V

    .line 475
    .local v2, functionCall:Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;
    invoke-virtual {v2, p1}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->startCallFunctionStringReturn(I)Z

    move-result v7

    .line 476
    .local v7, result:Z
    invoke-virtual {v2, p2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamNo(I)Z

    .line 477
    move-object v0, p3

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v3, v0, v4

    .line 478
    .local v3, i:I
    invoke-virtual {v2, v3}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->writeParamInt(I)Z

    .line 477
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 480
    .end local v3           #i:I
    :cond_0
    if-eqz v7, :cond_4

    .line 483
    :cond_1
    invoke-virtual {v2}, Lcom/mediatek/engineermode/emsvr/AFMFunctionCallEx;->getNextResult()Lcom/mediatek/engineermode/emsvr/FunctionReturn;

    move-result-object v6

    .line 484
    .local v6, r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 489
    :goto_1
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_2

    .line 490
    const-string v8, "EM/CpuStressTestService"

    const-string v9, "AFMFunctionCallEx: RESULT_IO_ERR"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v8, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    const-string v10, "ERROR"

    invoke-virtual {v1, v8, v9, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 487
    .restart local v6       #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_3
    iget-object v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnString:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget v8, v6, Lcom/mediatek/engineermode/emsvr/FunctionReturn;->mReturnCode:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_1

    goto :goto_1

    .line 494
    .end local v6           #r:Lcom/mediatek/engineermode/emsvr/FunctionReturn;
    :cond_4
    const-string v8, "EM/CpuStressTestService"

    const-string v9, "AFMFunctionCallEx return false"

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v8, "ERROR"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public getData()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isClockSwitchRun()Z
    .locals 1

    .prologue
    .line 644
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClockSwitchRunning:Z

    return v0
.end method

.method public isTestRun()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClockSwitchRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mBinder:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$StressTestBinder;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 175
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 180
    invoke-direct {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->coreNum()I

    move-result v0

    .line 181
    .local v0, coreNumber:I
    sput v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    .line 182
    iget-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    shl-int/lit8 v4, v0, 0x30

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 183
    iget v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    shl-int/lit8 v3, v0, 0x30

    or-int/2addr v2, v3

    iput v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 184
    new-instance v2, Ljava/io/File;

    const-string v3, "/etc/.tp/.ht120.mtc"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    sput-boolean v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIsThermalSupport:Z

    .line 185
    new-instance v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    invoke-direct {v2}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;-><init>()V

    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadApMcu:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 188
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadVideoCodec:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 189
    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadBackupRestore:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 190
    new-instance v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadApMcu:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;-><init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerApMcu:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;

    .line 191
    new-instance v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadVideoCodec:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;-><init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerVideoCodec:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;

    .line 193
    new-instance v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;

    iget-object v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadBackupRestore:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;-><init>(Lcom/mediatek/engineermode/cpustress/CpuStressTestService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerBackupRestore:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerBackupRestore;
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    const-string v2, "EM/CpuStressTestService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Core Number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/IllegalThreadStateException;
    const-string v2, "EM/CpuStressTestService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handler thread IllegalThreadStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const v2, 0x7f08012d

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 207
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->restore(I)V

    .line 208
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadApMcu:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 209
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadVideoCodec:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 210
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerThreadBackupRestore:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 211
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->release()V

    .line 212
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 213
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 217
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "Enter onStartCommand"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x2

    return v0
.end method

.method public setIndexMode(I)V
    .locals 3
    .parameter "indexDefault"

    .prologue
    .line 691
    const-string v0, "EM/CpuStressTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndexMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sIndexMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-ne p1, v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 696
    :cond_0
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    if-nez v0, :cond_1

    .line 697
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->backup(I)V

    .line 704
    :goto_1
    monitor-enter p0

    .line 705
    :try_start_0
    sput p1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    .line 706
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 698
    :cond_1
    if-nez p1, :cond_2

    .line 699
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->restore(I)V

    goto :goto_1

    .line 701
    :cond_2
    sget v0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sIndexMode:I

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->restore(I)V

    .line 702
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->backup(I)V

    goto :goto_1
.end method

.method public startTest(Landroid/os/Bundle;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 228
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "Enter startTest"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ApMcu;

    if-eqz v0, :cond_2

    .line 230
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "startTest for ApMcu"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "ApMpu test is running"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v0, "loopcount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountApMcu:J

    .line 236
    const-string v0, "mask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    .line 237
    iput-boolean v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuRunning:Z

    .line 238
    iput-boolean v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 240
    iget-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    sget v2, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    shl-int/lit8 v2, v2, 0x30

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultApMcu:J

    .line 241
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalL2C:I

    .line 242
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassL2C:I

    .line 243
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalNeon:I

    .line 244
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassNeon:I

    .line 245
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalCa9:I

    .line 246
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassCa9:I

    .line 247
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassDhry:I

    .line 248
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalDhry:I

    .line 249
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassMemcpy:I

    .line 250
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalMemcpy:I

    .line 251
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassFdct:I

    .line 252
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalFdct:I

    .line 253
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassImdct:I

    .line 254
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalImdct:I

    .line 255
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    .line 256
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerApMcu:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerApMcu;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    if-eqz v0, :cond_4

    .line 258
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "startTest for SwVideoCodec"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    if-eqz v0, :cond_3

    .line 260
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "VideoCodec test is running"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 263
    :cond_3
    const-string v0, "loopcount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mLoopCountVideoCodec:J

    .line 264
    const-string v0, "iteration"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mIterationVideoCodec:I

    .line 265
    iput-boolean v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestVideoCodecRunning:Z

    .line 266
    iput-boolean v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    .line 267
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 268
    iget v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    sget v1, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->sCoreNumber:I

    shl-int/lit8 v1, v1, 0x30

    or-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultVideoCodec:I

    .line 269
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultPassVideoCodec:I

    .line 270
    iput v4, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mResultTotalVideoCodec:I

    .line 271
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    .line 272
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mHandlerVideoCodec:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$HandlerVideoCodec;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    if-eqz v0, :cond_0

    .line 274
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "startTest for ClockSwitch"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-boolean v5, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClockSwitchRunning:Z

    .line 276
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->updateWakeLock()V

    goto/16 :goto_0
.end method

.method public stopTest()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    const-string v0, "EM/CpuStressTestService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter stopTest, testObject is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ApMcu;

    if-eqz v0, :cond_1

    .line 286
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "stopTest for ApMcu"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopApmcu:Z

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    if-eqz v0, :cond_2

    .line 290
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "stopTest for SwVideoCodec"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iput-boolean v3, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWantStopSwCodec:Z

    goto :goto_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ClockSwitch;

    if-eqz v0, :cond_0

    .line 294
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "stopTest for ClockSwitch"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClockSwitchRunning:Z

    goto :goto_0
.end method

.method public updateData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 309
    const-string v2, "EM/CpuStressTestService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateData, data is null ? "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-nez p1, :cond_2

    .line 311
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ApMcu;

    if-eqz v0, :cond_1

    .line 312
    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->dataGenerator(I)Landroid/os/Bundle;

    move-result-object v0

    .line 323
    :goto_1
    return-object v0

    .line 309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    if-eqz v0, :cond_3

    .line 314
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->dataGenerator(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/ApMcu;

    if-eqz v0, :cond_4

    .line 318
    const-string v0, "mask"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestApMcuMask:I

    .line 323
    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mTestClass:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$ICpuStressTestComplete;

    instance-of v0, v0, Lcom/mediatek/engineermode/cpustress/SwVideoCodec;

    if-eqz v0, :cond_3

    .line 320
    const-string v0, "EM/CpuStressTestService"

    const-string v1, "VideoCodec test not need to update config"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public updateWakeLock()V
    .locals 1

    .prologue
    .line 739
    monitor-enter p0

    .line 740
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->isTestRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->acquire(Landroid/content/Context;)V

    .line 745
    :goto_0
    monitor-exit p0

    .line 746
    return-void

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cpustress/CpuStressTestService;->mWakeLock:Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cpustress/CpuStressTestService$WakeLock;->release()V

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
