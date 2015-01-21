.class public Lcom/mediatek/engineermode/wifi/WiFiTx6620;
.super Lcom/mediatek/engineermode/wifi/WiFiTestActivity;
.source "WiFiTx6620.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;,
        Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    }
.end annotation


# static fields
.field private static final ANTENNA:I = 0x0

.field private static final BANDWIDTH_40MHZ_MASK:I = 0x8000

.field private static final BANDWIDTH_INDEX_40:I = 0x1

.field private static final BIT_8_MASK:I = 0xff

.field private static final CCK_RATE_NUMBER:I = 0x4

.field private static final COMMAND_INDEX_CARRIER:I = 0x6

.field private static final COMMAND_INDEX_CARRIER_NEW:I = 0xa

.field private static final COMMAND_INDEX_LOCALFREQ:I = 0x5

.field private static final COMMAND_INDEX_OUTPUTPOWER:I = 0x4

.field private static final COMMAND_INDEX_STARTTX:I = 0x1

.field private static final COMMAND_INDEX_STOPTEST:I = 0x0

.field private static final CWMODE_CCKPI:I = 0x5

.field private static final CWMODE_OFDMLTF:I = 0x2

.field private static final DEFAULT_PKT_CNT:I = 0xbb8

.field private static final DEFAULT_PKT_LEN:I = 0x400

.field private static final DEFAULT_TX_GAIN:I = 0x0

.field private static final HANDLER_EVENT_FINISH:I = 0x4

.field private static final HANDLER_EVENT_GO:I = 0x1

.field private static final HANDLER_EVENT_STOP:I = 0x2

.field private static final HANDLER_EVENT_TIMER:I = 0x3

.field private static final LENGTH_3:I = 0x3

.field private static final MAX_HIGH_RATE_NUMBER:I = 0x15

.field private static final MAX_LOWER_RATE_NUMBER:I = 0xc

.field private static final MAX_VALUE:J = -0x1L

.field private static final MIN_VALUE:I = 0x0

.field private static final ONE_SENCOND:I = 0x3e8

.field private static final PACKCONTENT_BUFFER:[J = null

.field private static final RATE_MCS_INDEX:I = 0x20

.field private static final RATE_MODE_MASK:I = 0x1f

.field private static final RATE_NOT_MCS_INDEX:I = 0x7

.field private static final TAG:Ljava/lang/String; = "EM/WiFi_Tx"

.field private static final TEST_MODE_CARRIER:I = 0x2

.field private static final TEST_MODE_DUTY:I = 0x1

.field private static final TEST_MODE_LEAKAGE:I = 0x3

.field private static final TEST_MODE_POWEROFF:I = 0x4

.field private static final TEST_MODE_TX:I = 0x0

.field private static final TXOP_LIMIT_VALUE:I = 0x20000


# instance fields
.field mBandwidth:[Ljava/lang/String;

.field private mBandwidthIndex:I

.field private mBandwidthSpinner:Landroid/widget/Spinner;

.field private mBtnGo:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mCCKRateSelected:Z

.field private mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

.field private mChannelAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelSpinner:Landroid/widget/Spinner;

.field private mCntNum:J

.field private mEtPkt:Landroid/widget/EditText;

.field private mEtPktCnt:Landroid/widget/EditText;

.field private mEtTxGain:Landroid/widget/EditText;

.field private mEventHandler:Landroid/os/Handler;

.field mGuardInterval:[Ljava/lang/String;

.field private mGuardIntervalIndex:I

.field private mGuardIntervalSpinner:Landroid/widget/Spinner;

.field private final mHandler:Landroid/os/Handler;

.field private mHighRateSelected:Z

.field private mLastBandwidth:I

.field private mLastRateGroup:I

.field mMode:[Ljava/lang/String;

.field private mModeAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModeIndex:I

.field private mModeSpinner:Landroid/widget/Spinner;

.field private mPktLenNum:J

.field mPreamble:[Ljava/lang/String;

.field private mPreambleAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreambleIndex:I

.field private mPreambleSpinner:Landroid/widget/Spinner;

.field private mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

.field private mRateSpinner:Landroid/widget/Spinner;

.field private mTestInPorcess:Z

.field private mTestThread:Landroid/os/HandlerThread;

.field private mTxGainVal:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->PACKCONTENT_BUFFER:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x4t 0x0t 0x22t 0xfft 0xfft 0xfft 0xfft 0xfft
        0x6t 0x0t 0x44t 0x33t 0x0t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x66t 0x55t 0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x55t 0x55t 0x0t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0xaat 0xaat 0xfft 0xfft 0xfft 0xfft
        0x1dt 0x0t 0xbbt 0xbbt 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;-><init>()V

    .line 99
    iput-boolean v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    .line 100
    iput-boolean v4, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    .line 101
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    .line 102
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    .line 103
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 104
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    .line 105
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 106
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    .line 107
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    .line 108
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    .line 109
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    .line 110
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    .line 111
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    .line 116
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    .line 117
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    .line 118
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 120
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    .line 121
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    .line 124
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    .line 125
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    .line 126
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    .line 127
    iput v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    .line 130
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    .line 131
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 132
    const-wide/16 v0, 0x400

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    .line 133
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 135
    iput-boolean v3, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    .line 136
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    .line 137
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$1;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "continuous packet tx"

    aput-object v1, v0, v3

    const-string v1, "100% duty cycle"

    aput-object v1, v0, v4

    const-string v1, "carrier suppression"

    aput-object v1, v0, v5

    const-string v1, "local leakage"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "enter power off"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Normal"

    aput-object v1, v0, v3

    const-string v1, "CCK short"

    aput-object v1, v0, v4

    const-string v1, "802.11n mixed mode"

    aput-object v1, v0, v5

    const-string v1, "802.11n green field"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    .line 153
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "20MHz"

    aput-object v1, v0, v3

    const-string v1, "40MHz"

    aput-object v1, v0, v4

    const-string v1, "U20MHz"

    aput-object v1, v0, v5

    const-string v1, "L20MHz"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    .line 154
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "800ns"

    aput-object v1, v0, v3

    const-string v1, "400ns"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    .line 719
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/ChannelInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/Spinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->updateChannels()V

    return-void
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return p1
.end method

.method static synthetic access$1408(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    return p1
.end method

.method static synthetic access$1602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalIndex:I

    return p1
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    return-wide v0
.end method

.method static synthetic access$2100()[J
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->PACKCONTENT_BUFFER:[J

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    return v0
.end method

.method static synthetic access$602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z

    return p1
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z

    return p1
.end method

.method private onClickBtnTxGo()V
    .locals 19

    .prologue
    .line 594
    const-wide/16 v8, 0x0

    .line 595
    .local v8, u4TxGainVal:J
    const/4 v4, 0x0

    .line 600
    .local v4, i:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    .line 601
    .local v7, pwrVal:F
    const/high16 v10, 0x4000

    mul-float/2addr v10, v7

    float-to-long v8, v10

    .line 602
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v12, 0x7f0801f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    long-to-double v15, v8

    const-wide/high16 v17, 0x4000

    div-double v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 614
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    const-wide/16 v12, 0xff

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    const-wide/16 v10, 0xff

    :goto_0
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 615
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const-wide/16 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    .line 616
    const-string v10, "EM/WiFi_Tx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Wifi Tx Test : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    move-object/from16 v0, p0

    iget v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    packed-switch v10, :pswitch_data_0

    .line 669
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-nez v10, :cond_2

    .line 670
    const-string v10, "EM/WiFi_Tx"

    const-string v11, "eventHandler = null"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    .end local v7           #pwrVal:F
    :goto_3
    return-void

    .line 608
    :catch_0
    move-exception v3

    .line 609
    .local v3, e:Ljava/lang/NumberFormatException;
    const-string v10, "invalid input value"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 614
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v7       #pwrVal:F
    :cond_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    goto :goto_0

    .line 615
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTxGainVal:J

    goto :goto_1

    .line 620
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 621
    .local v5, pktNum:J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 627
    .local v1, cntNum:J
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPktLenNum:J

    .line 628
    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCntNum:J

    goto :goto_2

    .line 622
    .end local v1           #cntNum:J
    .end local v5           #pktNum:J
    :catch_1
    move-exception v3

    .line 623
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const-string v10, "invalid input value"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 672
    .end local v3           #e:Ljava/lang/NumberFormatException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 674
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    goto :goto_3

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onClickBtnTxStop()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 698
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "eventHandler = null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_0
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I

    sparse-switch v0, :sswitch_data_0

    .line 713
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setStandBy()I

    .line 717
    :goto_1
    :sswitch_0
    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 706
    :sswitch_1
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setPnpPower(J)I

    .line 707
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setTestMode()I

    .line 708
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelFreq()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/EMWifi;->setChannel(J)I

    .line 709
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    goto :goto_1

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method

.method private setViewEnabled(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 681
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 682
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 683
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 685
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 686
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 687
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 692
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 693
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 694
    return-void

    .line 693
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private uiUpdateTxPower()V
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v5, 0x3

    const/4 v10, 0x0

    .line 487
    const/4 v9, 0x0

    .line 488
    .local v9, ucGain:S
    const-wide/16 v7, 0x0

    .line 491
    .local v7, i4TxPwrGain:J
    new-array v4, v5, [J

    .line 492
    .local v4, gain:[J
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->getChannelIndex()I

    move-result v6

    .line 494
    .local v6, comboChannelIndex:I
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-ne v0, v11, :cond_1

    const v0, 0x8000

    :goto_0
    or-int/2addr v6, v0

    .line 497
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channelIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rateIdx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " gain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Len "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    int-to-long v0, v6

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    int-to-long v2, v2

    invoke-static/range {v0 .. v5}, Lcom/mediatek/engineermode/wifi/EMWifi;->readTxPowerFromEEPromEx(JJ[JI)I

    move-result v0

    if-nez v0, :cond_0

    .line 502
    aget-wide v7, v4, v10

    .line 505
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "i4TxPwrGain from uiUpdateTxPower is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-wide/16 v0, 0xff

    and-long/2addr v0, v7

    long-to-int v0, v0

    int-to-short v9, v0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v2, 0x7f0801f0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v11, [Ljava/lang/Object;

    int-to-double v11, v9

    const-wide/high16 v13, 0x4000

    div-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 517
    return-void

    :cond_1
    move v0, v10

    .line 494
    goto/16 :goto_0
.end method

.method private updateChannels()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 523
    const/4 v1, 0x0

    .line 524
    .local v1, bUpdateWifiChannel:Z
    sget-boolean v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sHasUpper14Ch:Z

    if-eqz v6, :cond_0

    .line 525
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v7}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v7

    if-eq v6, v7, :cond_0

    .line 526
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I

    if-nez v6, :cond_9

    .line 527
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-ne v6, v10, :cond_6

    .line 528
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertBw40MChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V

    .line 529
    const/4 v1, 0x1

    .line 554
    :cond_0
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    iget v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-eq v6, v7, :cond_4

    .line 555
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I

    if-ne v6, v10, :cond_2

    .line 556
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->removeBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V

    .line 557
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v6}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v6

    if-eqz v6, :cond_1

    .line 558
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->remove5GChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V

    .line 559
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertBw40MChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V

    .line 561
    :cond_1
    const/4 v1, 0x1

    .line 563
    :cond_2
    iget v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I

    if-ne v6, v10, :cond_4

    .line 564
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insertBw40mUnsupported2dot4GChannels(Landroid/widget/ArrayAdapter;)V

    .line 566
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v6}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v6

    if-eqz v6, :cond_3

    .line 567
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->removeBw40MChannelsFromAdapter(Landroid/widget/ArrayAdapter;)V

    .line 568
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v7}, Lcom/mediatek/engineermode/wifi/ChannelInfo;->insert5GChannelsIntoAdapter(Landroid/widget/ArrayAdapter;)V

    .line 570
    :cond_3
    const/4 v1, 0x1

    .line 573
    :cond_4
    if-eqz v1, :cond_5

    .line 574
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v6, v7, v8}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->updateWifiChannel(Lcom/mediatek/engineermode/wifi/ChannelInfo;Landroid/widget/ArrayAdapter;Landroid/widget/Spinner;)V

    .line 575
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V

    .line 577
    :cond_5
    return-void

    .line 531
    :cond_6
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    int-to-long v6, v2

    sget-object v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    cmp-long v6, v6, v8

    if-gtz v6, :cond_0

    .line 532
    sget-object v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v6, v6, v2

    const-wide/16 v8, 0xe

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 533
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v0, v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v5, v0, v3

    .line 534
    .local v5, s:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Channel "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v7, v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 536
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 537
    const/4 v1, 0x1

    .line 531
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #s:Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 544
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_9
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v6}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v6

    if-nez v6, :cond_0

    .line 546
    const/16 v2, 0xe

    .line 547
    .restart local v2       #i:I
    :goto_2
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v6, v6, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 548
    iget-object v6, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v7, v7, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 549
    const/4 v1, 0x1

    .line 547
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 455
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v0, :cond_1

    .line 456
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 461
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onClickBtnTxGo()V

    goto :goto_0

    .line 462
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onClickBtnTxStop()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x1090009

    const v12, 0x1090008

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const v8, 0x7f0300a0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->setContentView(I)V

    .line 236
    const v8, 0x7f0b04c6

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    .line 237
    const v8, 0x7f0b04d2

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    .line 238
    const v8, 0x7f0b04c8

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPkt:Landroid/widget/EditText;

    .line 239
    const v8, 0x7f0b04ca

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtPktCnt:Landroid/widget/EditText;

    .line 240
    const v8, 0x7f0b04cc

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEtTxGain:Landroid/widget/EditText;

    .line 241
    const v8, 0x7f0b04ce

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    .line 242
    const v8, 0x7f0b04d0

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    .line 247
    const v8, 0x7f0b04d4

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    .line 248
    const v8, 0x7f0b04d5

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    .line 249
    const v8, 0x7f0b04bd

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    .line 250
    const v8, 0x7f0b04d3

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    .line 252
    new-instance v8, Landroid/os/HandlerThread;

    const-string v9, "Wifi Tx Test"

    invoke-direct {v8, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    .line 253
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 254
    new-instance v8, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$EventHandler;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Landroid/os/Looper;)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    .line 255
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnGo:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    new-instance v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;

    invoke-direct {v8}, Lcom/mediatek/engineermode/wifi/ChannelInfo;-><init>()V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    .line 258
    new-instance v8, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-direct {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;-><init>()V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    .line 271
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    .line 273
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 275
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    int-to-long v8, v3

    sget-object v10, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    cmp-long v8, v8, v10

    if-gtz v8, :cond_0

    .line 276
    sget-object v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, 0xe

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 286
    :cond_0
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 287
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$2;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 304
    new-instance v6, Landroid/widget/ArrayAdapter;

    invoke-direct {v6, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 306
    .local v6, rateAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v6, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 308
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    invoke-virtual {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getRateNumber()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 309
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mPszRate:[Ljava/lang/String;
    invoke-static {v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->access$400(Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v6, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 308
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v6           #rateAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannel:Lcom/mediatek/engineermode/wifi/ChannelInfo;

    iget-object v0, v8, Lcom/mediatek/engineermode/wifi/ChannelInfo;->mFullChannelName:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 280
    .local v7, s:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Channel "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/mediatek/engineermode/wifi/ChannelInfo;->sChannels:[J

    aget-wide v9, v9, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 281
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mChannelAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 275
    .end local v7           #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 279
    .restart local v7       #s:Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 311
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #s:Ljava/lang/String;
    .restart local v6       #rateAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_4
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 312
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 355
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRateSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    iget v9, v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mOFDMStartIndex:I

    invoke-virtual {v8, v9}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 356
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    .line 358
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 360
    const/4 v3, 0x0

    :goto_3
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_5

    .line 361
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 360
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 363
    :cond_5
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 364
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 382
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    .line 384
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 386
    const/4 v3, 0x0

    :goto_4
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 387
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 389
    :cond_6
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    iget-object v9, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v9}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 390
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 404
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-direct {v1, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 406
    .local v1, bandwidthAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 408
    const/4 v3, 0x0

    :goto_5
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_7

    .line 409
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 408
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 411
    :cond_7
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 412
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 429
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 431
    .local v2, guardIntervalAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v2, v13}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 433
    const/4 v3, 0x0

    :goto_6
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_8

    .line 434
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardInterval:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v2, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 436
    :cond_8
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 437
    iget-object v8, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mGuardIntervalSpinner:Landroid/widget/Spinner;

    new-instance v9, Lcom/mediatek/engineermode/wifi/WiFiTx6620$7;

    invoke-direct {v9, p0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$7;-><init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    invoke-virtual {v8, v9}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 449
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->setViewEnabled(Z)V

    .line 450
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    if-eqz v0, :cond_1

    .line 472
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v0, :cond_0

    .line 473
    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/engineermode/wifi/EMWifi;->setATParam(JJ)I

    .line 476
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestInPorcess:Z

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mTestThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 481
    return-void
.end method
