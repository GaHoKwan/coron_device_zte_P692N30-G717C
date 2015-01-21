.class public Lcom/mediatek/connectivity/CdsRadioInfoActivity;
.super Landroid/app/Activity;
.source "CdsRadioInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/connectivity/CdsRadioInfoActivity$8;,
        Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;
    }
.end annotation


# static fields
.field private static final CMDLINES:[Ljava/lang/String; = null

.field private static final EVENT_AT_CMD_DONE:I = 0x3eb

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x64

.field private static final EVENT_QUERY_DATACALL_LIST_DONE:I = 0x3ea

.field private static final EVENT_QUERY_NEIGHBORING_CIDS_DONE:I = 0x3e9

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x12c

.field private static final EVENT_SIGNAL_STRENGTH_CHANGED:I = 0xc8

.field private static final NA:Ljava/lang/String; = "N/A"

.field private static final RADIO_SYSTEM_PROPERTY:[Ljava/lang/String; = null

.field private static final SIMID:Ljava/lang/String; = "simId"

.field private static final TAG:Ljava/lang/String; = "cds_phone"

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private mAtBtnCmd:Landroid/widget/Button;

.field mAtButtonHandler:Landroid/view/View$OnClickListener;

.field private mAttempts:Landroid/widget/TextView;

.field private mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:Landroid/widget/TextView;

.field private mCmdLineList:Landroid/widget/AutoCompleteTextView;

.field private mContext:Landroid/content/Context;

.field private mDbm:Landroid/widget/TextView;

.field private mDeviceId:Landroid/widget/TextView;

.field private mDisconnects:Landroid/widget/TextView;

.field private mGprsAttachState:Landroid/widget/TextView;

.field private mGprsState:Landroid/widget/TextView;

.field private mGsmPhone:Lcom/android/internal/telephony/Phone;

.field private mGsmState:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsi:Landroid/widget/TextView;

.field private mLocation:Landroid/widget/TextView;

.field private mNeighboringCids:Landroid/widget/TextView;

.field private mNetwork:Landroid/widget/TextView;

.field private mNumber:Landroid/widget/TextView;

.field private mOperatorName:Landroid/widget/TextView;

.field private mPhoneStateListener:Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostname:Landroid/widget/TextView;

.field private mPingHostnameResult:Ljava/lang/String;

.field private mPingIpAddr:Landroid/widget/TextView;

.field private mPingIpAddrResult:Ljava/lang/String;

.field private mPingTestButton:Landroid/widget/Button;

.field private mRadioState:Landroid/widget/TextView;

.field private mReceived:Landroid/widget/TextView;

.field private mResets:Landroid/widget/TextView;

.field private mRoamingState:Landroid/widget/TextView;

.field private mSent:Landroid/widget/TextView;

.field private mSentSinceReceived:Landroid/widget/TextView;

.field private mServiceState:Landroid/widget/TextView;

.field private mSimId:I

.field private mSimState:Landroid/widget/TextView;

.field private mSuccesses:Landroid/widget/TextView;

.field private mSystemProperties:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AT+EGMR=1,7,\"\""

    aput-object v1, v0, v3

    const-string v1, "AT+EGMR=1,10,\"\""

    aput-object v1, v0, v4

    const-string v1, "AT+EGMR=1,11,\"\""

    aput-object v1, v0, v5

    const-string v1, "AT+EGMR=1,12,\"\""

    aput-object v1, v0, v6

    const-string v1, "AT+CGEQREQ=1,2,128,128"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "AT+CGEQREQ=2,2,128,128"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->CMDLINES:[Ljava/lang/String;

    .line 199
    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "gsm.operator.alpha"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.operator.default-name"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.operator.iso-country"

    aput-object v1, v0, v5

    const-string v1, "gsm.sim.operator.alpha"

    aput-object v1, v0, v6

    const-string v1, "gsm.sim.operator.numeric"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "gsm.mNetwork.type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gsm.cs.mNetwork.type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "gsm.ril.uicctype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "gsm.baseband.capability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "gsm.gcf.testmode"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gsm.sim.state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "gsm.sim.ril.phbready"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "gsm.sim.retry.pin1"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "gsm.sim.retry.pin2"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "gsm.sim.retry.puk1"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "gsm.sim.retry.puk2"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "gsm.operator.alpha.2"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "gsm.sim.operator.default-name.2"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "gsm.sim.operator.iso-country.2"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "gsm.sim.operator.alpha.2"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "gsm.sim.operator.numeric.2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "gsm.mNetwork.type.2"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "gsm.cs.mNetwork.type.2"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "gsm.ril.uicctype.2"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "gsm.baseband.capability2"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "gsm.gcf.testmode2"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "gsm.sim.retry.pin1.2"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "gsm.sim.retry.pin2.2"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "gsm.sim.retry.puk1.2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "gsm.sim.retry.puk2.2"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "gsm.sim.state.2"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "gsm.sim.ril.phbready.2"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "gsm.3gswitch"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "gsm.current.phone-type"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "gsm.defaultpdpcontext.active"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "gsm.nitz.time"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "gsm.phone.created"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "gsm.sim.inserted"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "gsm.siminfo.ready"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "gsm.version.baseband"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "init.svc.ril-daemon"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "init.svc.gsm0710muxd"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "persist.gemini.sim_num"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "persist.radio.default_sim"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "persist.radio.default_sim_mode"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "persist.radio.fd.counter"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "persist.radio.fd.off.counter"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "persist.radio.gprs.attach.type"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "ro.mediatek.gemini_support"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->RADIO_SYSTEM_PROPERTY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    .line 291
    new-instance v0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$1;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;

    .line 933
    new-instance v0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$6;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 939
    new-instance v0, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$7;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAtButtonHandler:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataState()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataCallList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateNeighboringCids(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNeighboringCids:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostname:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePdpList()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->pingHostname()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->httpClientTest()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePingState()V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/telephony/CellLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePhoneState()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateSignalStrength()V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateServiceState()V

    return-void
.end method

.method private httpClientTest()V
    .locals 6

    .prologue
    .line 847
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 849
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v4, "http://www.google.com"

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 850
    .local v2, request:Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 851
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 852
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    .line 856
    :goto_0
    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 860
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 854
    .restart local v2       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #response:Lorg/apache/http/HttpResponse;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail: Code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 857
    .end local v2           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 858
    .local v1, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_1
.end method

.method private isRadioOn()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 507
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private final pingHostname()V
    .locals 5

    .prologue
    .line 827
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "ping -c 1 www.google.com"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 828
    .local v1, p:Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 829
    .local v2, status:I
    if-nez v2, :cond_0

    .line 830
    const-string v3, "Pass"

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    .line 841
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :goto_0
    return-void

    .line 832
    .restart local v1       #p:Ljava/lang/Process;
    .restart local v2       #status:I
    :cond_0
    const-string v3, "Fail: Host unreachable"

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 834
    .end local v1           #p:Ljava/lang/Process;
    .end local v2           #status:I
    :catch_0
    move-exception v0

    .line 835
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v3, "Fail: Unknown Host"

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 836
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 837
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Fail: IOException"

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0

    .line 838
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 839
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Fail: InterruptedException"

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final pingIpAddr()V
    .locals 7

    .prologue
    .line 807
    :try_start_0
    const-string v1, "74.125.47.104"

    .line 808
    .local v1, ipAddress:Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ping -c 1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 809
    .local v2, p:Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v3

    .line 810
    .local v3, status:I
    if-nez v3, :cond_0

    .line 811
    const-string v4, "Pass"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    .line 820
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :goto_0
    return-void

    .line 813
    .restart local v1       #ipAddress:Ljava/lang/String;
    .restart local v2       #p:Ljava/lang/Process;
    .restart local v3       #status:I
    :cond_0
    const-string v4, "Fail: IP addr not reachable"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 815
    .end local v1           #ipAddress:Ljava/lang/String;
    .end local v2           #p:Ljava/lang/Process;
    .end local v3           #status:I
    :catch_0
    move-exception v0

    .line 816
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Fail: IOException"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0

    .line 817
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 818
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "Fail: InterruptedException"

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateDataCallList(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 915
    .local p1, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "========DATA=======\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 918
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 919
    const-string v3, "no data call lists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDisconnects:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    return-void

    .line 921
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataCallState;

    .line 922
    .local v0, dataCallState:Lcom/android/internal/telephony/DataCallState;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 926
    .end local v0           #dataCallState:Lcom/android/internal/telephony/DataCallState;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateDataState()V
    .locals 6

    .prologue
    .line 655
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 658
    .local v3, state:Lcom/android/internal/telephony/PhoneConstants$DataState;
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 663
    :goto_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 664
    .local v2, r:Landroid/content/res/Resources;
    const v4, 0x7f05006c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 667
    .local v0, display:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/connectivity/CdsRadioInfoActivity$8;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 684
    :goto_1
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGprsState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 685
    return-void

    .line 659
    .end local v0           #display:Ljava/lang/String;
    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .line 660
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 669
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #display:Ljava/lang/String;
    .restart local v2       #r:Landroid/content/res/Resources;
    :pswitch_0
    const v4, 0x7f05007d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 670
    goto :goto_1

    .line 672
    :pswitch_1
    const v4, 0x7f05007c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 673
    goto :goto_1

    .line 675
    :pswitch_2
    const v4, 0x7f05007b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 676
    goto :goto_1

    .line 678
    :pswitch_3
    const v4, 0x7f05007e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 679
    goto :goto_1

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final updateDataStats()V
    .locals 3

    .prologue
    .line 769
    const-string v1, "net.gsm.radio-reset"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mResets:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    const-string v1, "net.gsm.attempt-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 773
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAttempts:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    const-string v1, "net.gsm.succeed-gprs"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSuccesses:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const-string v1, "net.gsm.disconnect"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDisconnects:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    const-string v1, "net.ppp.reset-by-timeout"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSentSinceReceived:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    return-void
.end method

.method private final updateDataStats2()V
    .locals 14

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 788
    .local v2, r:Landroid/content/res/Resources;
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v9

    .line 789
    .local v9, txPackets:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v5

    .line 790
    .local v5, rxPackets:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v7

    .line 791
    .local v7, txBytes:J
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v3

    .line 793
    .local v3, rxBytes:J
    const v11, 0x7f05006d

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, packets:Ljava/lang/String;
    const v11, 0x7f05006e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, bytes:Ljava/lang/String;
    iget-object v11, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSent:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v11, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mReceived:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    return-void
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 9
    .parameter "location"

    .prologue
    const/4 v8, -0x1

    .line 728
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 730
    .local v3, r:Landroid/content/res/Resources;
    const-string v4, "cds_phone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GsmCellLocation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    instance-of v4, p1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_2

    move-object v2, p1

    .line 733
    check-cast v2, Landroid/telephony/gsm/GsmCellLocation;

    .line 734
    .local v2, loc:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 735
    .local v1, lac:I
    invoke-virtual {v2}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 737
    .local v0, cid:I
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f050071

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v1, v8, :cond_0

    const-string v4, "unknown"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f050072

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v0, v8, :cond_1

    const-string v4, "unknown"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 746
    .end local v0           #cid:I
    .end local v1           #lac:I
    .end local v2           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :goto_2
    return-void

    .line 737
    .restart local v0       #cid:I
    .restart local v1       #lac:I
    .restart local v2       #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "[0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "[0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 743
    .end local v0           #cid:I
    .end local v1           #lac:I
    .end local v2           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_2
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mLocation:Landroid/widget/TextView;

    const-string v5, "unknown"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private final updateNeighboringCids(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, cids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 751
    .local v2, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_2

    .line 752
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 753
    const-string v3, "no neighboring cells"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    return-void

    .line 755
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 756
    .local v0, cell:Landroid/telephony/NeighboringCellInfo;
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 760
    .end local v0           #cell:Landroid/telephony/NeighboringCellInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private final updateNetworkType()V
    .locals 5

    .prologue
    .line 688
    const-string v2, "gsm.Network.type"

    .line 689
    .local v2, sysProp:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 692
    .local v1, r:Landroid/content/res/Resources;
    iget v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.Network.type."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    :cond_0
    const v3, 0x7f05006c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, display:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNetwork:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    return-void
.end method

.method private final updatePdpList()V
    .locals 3

    .prologue
    .line 911
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 912
    return-void
.end method

.method private final updatePhoneState()V
    .locals 5

    .prologue
    .line 632
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 633
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 634
    .local v1, r:Landroid/content/res/Resources;
    const v3, 0x7f05006c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, display:Ljava/lang/String;
    sget-object v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity$8;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 650
    :goto_0
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    return-void

    .line 638
    :pswitch_0
    const v3, 0x7f050078

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 639
    goto :goto_0

    .line 641
    :pswitch_1
    const v3, 0x7f050079

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    goto :goto_0

    .line 644
    :pswitch_2
    const v3, 0x7f05007a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final updatePingState()V
    .locals 7

    .prologue
    const v6, 0x7f05006c

    .line 865
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 867
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    .line 869
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    .line 871
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddrResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 872
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostname:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostnameResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    new-instance v4, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;

    invoke-direct {v4, p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$2;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;)V

    .line 882
    .local v4, updatePingResults:Ljava/lang/Runnable;
    new-instance v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;

    invoke-direct {v3, p0, v0, v4}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$3;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 889
    .local v3, ipAddr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 891
    new-instance v1, Lcom/mediatek/connectivity/CdsRadioInfoActivity$4;

    invoke-direct {v1, p0, v0, v4}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$4;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 898
    .local v1, hostname:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 900
    new-instance v2, Lcom/mediatek/connectivity/CdsRadioInfoActivity$5;

    invoke-direct {v2, p0, v0, v4}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$5;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 907
    .local v2, httpClient:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 908
    return-void
.end method

.method private updatePowerState()V
    .locals 2

    .prologue
    .line 515
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->isRadioOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f050077

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, buttonText:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mRadioState:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    return-void

    .line 515
    .end local v0           #buttonText:Ljava/lang/String;
    :cond_0
    const v1, 0x7f050076

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private final updateProperties()V
    .locals 4

    .prologue
    const v3, 0x7f05006c

    .line 705
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 707
    .local v0, r:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 708
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 709
    :cond_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 713
    if-nez v1, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 714
    :cond_1
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 717
    if-nez v1, :cond_2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 718
    :cond_2
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mImsi:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    .line 722
    if-nez v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 723
    :cond_3
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimState:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method private final updateServiceState()V
    .locals 11

    .prologue
    const v10, 0x7f050076

    const v9, 0x7f050075

    const v8, 0x7f050074

    const v7, 0x7f050073

    const v6, 0x7f05006c

    .line 553
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 555
    .local v2, serviceState:Landroid/telephony/ServiceState;
    if-nez v2, :cond_0

    .line 627
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 558
    .local v3, state:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 559
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, display:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 578
    :goto_1
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 581
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mRoamingState:Landroid/widget/TextView;

    const v5, 0x7f05007f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 586
    :goto_2
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mOperatorName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mServiceState:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 609
    packed-switch v3, :pswitch_data_1

    .line 625
    :goto_3
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGprsAttachState:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGprsAttachState:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 563
    :pswitch_0
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    goto :goto_1

    .line 566
    :pswitch_1
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    goto :goto_1

    .line 569
    :pswitch_2
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 570
    goto :goto_1

    .line 572
    :pswitch_3
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    goto :goto_1

    .line 583
    :cond_1
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mRoamingState:Landroid/widget/TextView;

    const v5, 0x7f050080

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 611
    :pswitch_4
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 612
    goto :goto_3

    .line 614
    :pswitch_5
    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 615
    goto :goto_3

    .line 617
    :pswitch_6
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 618
    goto :goto_3

    .line 620
    :pswitch_7
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    goto :goto_3

    .line 561
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 609
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private final updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 526
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 528
    .local v3, state:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 530
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_0

    const/4 v4, 0x3

    if-ne v4, v3, :cond_1

    .line 532
    :cond_0
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDbm:Landroid/widget/TextView;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    :cond_1
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmSignalStrengthDbm()I

    move-result v2

    .line 537
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_2

    const/4 v2, 0x0

    .line 539
    :cond_2
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v1

    .line 541
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_3

    const/4 v1, 0x0

    .line 543
    :cond_3
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDbm:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f05006f

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f050070

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    return-void
.end method

.method private updateSystemProperties()V
    .locals 5

    .prologue
    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->RADIO_SYSTEM_PROPERTY:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->RADIO_SYSTEM_PROPERTY:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->RADIO_SYSTEM_PROPERTY:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_0
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSystemProperties:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    return-void
.end method


# virtual methods
.method handleAtCmdResponse(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "ar"

    .prologue
    const/4 v6, 0x1

    .line 955
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 956
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mContext:Landroid/content/Context;

    const-string v4, "AT command is failed to send"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 966
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    .line 959
    .local v1, str:[Ljava/lang/String;
    const-string v2, ""

    .line 960
    .local v2, txt:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 961
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 963
    :cond_1
    const-string v3, "cds_phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resopnse is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mContext:Landroid/content/Context;

    const-string v4, "AT command is mSent"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 337
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 340
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "simId"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    .line 341
    const-string v3, "cds_phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The SIM ID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const v3, 0x7f03000e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 345
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 349
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 350
    .local v1, iTelephony:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 351
    const-string v3, "cds_phone"

    const-string v4, "clocwork worked..."

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->setDefaultPhone(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    .line 363
    .end local v1           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mContext:Landroid/content/Context;

    .line 365
    new-instance v3, Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 367
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x109000a

    sget-object v5, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->CMDLINES:[Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;

    .line 370
    const v3, 0x7f07003d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    .line 371
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 372
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 373
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    const-string v4, "AT+"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    const v3, 0x7f07003f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDeviceId:Landroid/widget/TextView;

    .line 376
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mImsi:Landroid/widget/TextView;

    .line 377
    const v3, 0x7f070041

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mRadioState:Landroid/widget/TextView;

    .line 378
    const v3, 0x7f070042

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimState:Landroid/widget/TextView;

    .line 379
    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNumber:Landroid/widget/TextView;

    .line 380
    const v3, 0x7f07004c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mCallState:Landroid/widget/TextView;

    .line 381
    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mOperatorName:Landroid/widget/TextView;

    .line 382
    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mRoamingState:Landroid/widget/TextView;

    .line 383
    const v3, 0x7f070047

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmState:Landroid/widget/TextView;

    .line 384
    const v3, 0x7f070048

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGprsAttachState:Landroid/widget/TextView;

    .line 385
    const v3, 0x7f070049

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGprsState:Landroid/widget/TextView;

    .line 386
    const v3, 0x7f07004a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNetwork:Landroid/widget/TextView;

    .line 387
    const v3, 0x7f07004b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mServiceState:Landroid/widget/TextView;

    .line 388
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDbm:Landroid/widget/TextView;

    .line 391
    const v3, 0x7f07004d

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mLocation:Landroid/widget/TextView;

    .line 392
    const v3, 0x7f07004e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mNeighboringCids:Landroid/widget/TextView;

    .line 394
    const v3, 0x7f07004f

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mResets:Landroid/widget/TextView;

    .line 395
    const v3, 0x7f070050

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAttempts:Landroid/widget/TextView;

    .line 396
    const v3, 0x7f070051

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSuccesses:Landroid/widget/TextView;

    .line 397
    const v3, 0x7f070052

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDisconnects:Landroid/widget/TextView;

    .line 399
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mResets:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAttempts:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 401
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSuccesses:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDisconnects:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v3, 0x7f070055

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSentSinceReceived:Landroid/widget/TextView;

    .line 405
    const v3, 0x7f070053

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSent:Landroid/widget/TextView;

    .line 406
    const v3, 0x7f070054

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mReceived:Landroid/widget/TextView;

    .line 408
    const v3, 0x7f070058

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingIpAddr:Landroid/widget/TextView;

    .line 409
    const v3, 0x7f070059

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingHostname:Landroid/widget/TextView;

    .line 410
    const v3, 0x7f07005a

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHttpClientTest:Landroid/widget/TextView;

    .line 413
    const v3, 0x7f070057

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingTestButton:Landroid/widget/Button;

    .line 414
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingTestButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    new-instance v3, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 417
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 418
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 419
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyPhoneCallState(I)V

    .line 421
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 423
    const v3, 0x7f07003e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAtBtnCmd:Landroid/widget/Button;

    .line 424
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAtBtnCmd:Landroid/widget/Button;

    iget-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mAtButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 430
    const v3, 0x7f070056

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSystemProperties:Landroid/widget/TextView;

    .line 433
    iget v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    if-ne v3, v8, :cond_1

    .line 434
    new-instance v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    invoke-direct {v3, p0, v8}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;I)V

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateListener:Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    .line 439
    :goto_1
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    throw v3

    .line 436
    :cond_1
    new-instance v3, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    invoke-direct {v3, p0, v7}, Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;-><init>(Lcom/mediatek/connectivity/CdsRadioInfoActivity;I)V

    iput-object v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateListener:Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 482
    const-string v0, "cds_phone"

    const-string v1, "[RadioInfo] onPause: unregister phone & data intents"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 487
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateListener:Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 497
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 443
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 445
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePhoneState()V

    .line 446
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updatePowerState()V

    .line 447
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateSignalStrength()V

    .line 448
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateServiceState()V

    .line 449
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mGsmPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 450
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataState()V

    .line 451
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats()V

    .line 452
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateDataStats2()V

    .line 453
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateProperties()V

    .line 455
    const-string v0, "cds_phone"

    const-string v1, "[RadioInfo] onResume: register phone & data intents"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 460
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mPhoneStateListener:Lcom/mediatek/connectivity/CdsRadioInfoActivity$GeminiPhoneStateListener;

    const/16 v2, 0xd0

    iget v3, p0, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->mSimId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    .line 475
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsRadioInfoActivity;->updateSystemProperties()V

    .line 476
    return-void
.end method
