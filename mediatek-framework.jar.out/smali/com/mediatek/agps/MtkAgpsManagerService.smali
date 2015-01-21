.class public Lcom/mediatek/agps/MtkAgpsManagerService;
.super Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;
.source "MtkAgpsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;,
        Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;,
        Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;
    }
.end annotation


# static fields
.field public static final AGPS_CAUSE_BAD_PUSH_CONTENT:I = 0x2

.field public static final AGPS_CAUSE_CNT:I = 0x10

.field public static final AGPS_CAUSE_NETWORK_CREATE_FAIL:I = 0x1

.field public static final AGPS_CAUSE_NETWORK_DISCONN:I = 0x6

.field public static final AGPS_CAUSE_NONE:I = 0x0

.field public static final AGPS_CAUSE_NOT_SUPPORTED:I = 0x3

.field public static final AGPS_CAUSE_NO_POSITION:I = 0xc

.field public static final AGPS_CAUSE_NO_RESOURCE:I = 0x5

.field public static final AGPS_CAUSE_REMOTE_ABORT:I = 0x7

.field public static final AGPS_CAUSE_REMOTE_MSG_ERROR:I = 0x9

.field public static final AGPS_CAUSE_REQ_NOT_ACCEPTED:I = 0x4

.field public static final AGPS_CAUSE_TIMER_EXPIRY:I = 0x8

.field public static final AGPS_CAUSE_TLS_AUTH_FAIL:I = 0xd

.field public static final AGPS_CAUSE_USER_AGREE:I = 0xa

.field public static final AGPS_CAUSE_USER_DENY:I = 0xb

.field public static final AGPS_CMD_AUTO_TEST_OFF:I = 0x7a

.field public static final AGPS_CMD_AUTO_TEST_ON:I = 0x79

.field public static final AGPS_CMD_AUTO_TEST_ON_V2_DT:I = 0x7d

.field public static final AGPS_CMD_AUTO_TEST_ON_V2_GEMINI:I = 0x7c

.field public static final AGPS_CMD_AUTO_TEST_RUN:I = 0x7b

.field public static final AGPS_CMD_AUTO_TEST_RUN_EVDO:I = 0x7f

.field public static final AGPS_CMD_AUTO_TEST_RUN_V2:I = 0x7e

.field public static final AGPS_CMD_CELLINFO:I = 0x6

.field public static final AGPS_CMD_CONFIG:I = 0x4

.field public static final AGPS_CMD_DISABLE:I = 0x2

.field public static final AGPS_CMD_EMERGENCY_STATE:I = 0x9

.field public static final AGPS_CMD_ENABLE:I = 0x1

.field public static final AGPS_CMD_ENABLE_RAW_DATA:I = 0x84

.field public static final AGPS_CMD_EPO_EVENT:I = 0x32

.field public static final AGPS_CMD_EXTRA:I = 0x13

.field public static final AGPS_CMD_GPS_STATE:I = 0x8

.field public static final AGPS_CMD_LOCATION_RESULT:I = 0xf

.field public static final AGPS_CMD_MNL_START_485:I = 0x6a

.field public static final AGPS_CMD_MNL_START_486:I = 0x6c

.field public static final AGPS_CMD_MNL_STOP_485:I = 0x6b

.field public static final AGPS_CMD_MNL_STOP_486:I = 0x6d

.field public static final AGPS_CMD_MNL_TEST_CLOSE:I = 0x69

.field public static final AGPS_CMD_MNL_TEST_NI:I = 0x67

.field public static final AGPS_CMD_MNL_TEST_OPEN:I = 0x68

.field public static final AGPS_CMD_MNL_TEST_ORIGINAL:I = 0x65

.field public static final AGPS_CMD_MNL_TEST_SI:I = 0x66

.field public static final AGPS_CMD_NI_REQ:I = 0x7

.field public static final AGPS_CMD_NW_IPADDR:I = 0x10

.field public static final AGPS_CMD_PROFILE:I = 0x3

.field public static final AGPS_CMD_RESET_AGPSD:I = 0x12

.field public static final AGPS_CMD_RESP:I = 0x5

.field public static final AGPS_CMD_SET_3PARTY_MSISDN:I = 0x15

.field public static final AGPS_CMD_SET_SILR_MSISDN:I = 0x16

.field public static final AGPS_CMD_SIM_CALL_STATE:I = 0xb

.field public static final AGPS_CMD_SIM_DATA_CONN_STATE:I = 0xe

.field public static final AGPS_CMD_SIM_NW_TYPE:I = 0xc

.field public static final AGPS_CMD_SIM_ROAMING_STATE:I = 0xd

.field public static final AGPS_CMD_SIM_STATE:I = 0xa

.field public static final AGPS_CMD_START_SUPL2_SESSION:I = 0x14

.field public static final AGPS_CMD_TEST_CLOSE_GPS:I = 0x70

.field public static final AGPS_CMD_TEST_OPEN_GPS:I = 0x6f

.field public static final AGPS_CMD_TEST_RESET_GPS:I = 0x71

.field public static final AGPS_CMD_TRIG_E_SUPLINIT:I = 0x86

.field public static final AGPS_CMD_TRIG_E_SUPLINIT_ESLP:I = 0x85

.field public static final AGPS_CMD_TRIG_SUPL_INIT_UDP:I = 0x83

.field public static final AGPS_CMD_UPDATE_CDMA_PROFILE:I = 0x17

.field public static final AGPS_CMD_WIFI_DATA_CONN:I = 0x11

.field public static final AGPS_CP_UP_VERIFY_TIMEOUT:I = 0xe

.field public static final AGPS_EM_CNT:I = 0x4

.field public static final AGPS_EM_NONE:I = 0x0

.field public static final AGPS_EM_POS_FIXED:I = 0x2

.field public static final AGPS_EM_RECV_SI_REQ:I = 0x1

.field public static final AGPS_EM_UPDATE_CMCC_LOG:I = 0x3

.field public static final AGPS_IND_CANCEL:I = 0x4

.field public static final AGPS_IND_CONFIG:I = 0x8

.field public static final AGPS_IND_DIALOG_MSG:I = 0xb

.field public static final AGPS_IND_EM:I = 0x1

.field public static final AGPS_IND_ERROR:I = 0x3

.field public static final AGPS_IND_FAKE_GPS_STATE:I = 0xa

.field public static final AGPS_IND_GPS:I = 0x6

.field public static final AGPS_IND_MSG:I = 0x5

.field public static final AGPS_IND_NOTIFY:I = 0x2

.field public static final AGPS_IND_TOAST:I = 0x7

.field public static final AGPS_IND_USER_RESP:I = 0x9

.field public static final AGPS_MODEM_RESET_HAPPEN:I = 0xf

.field public static final AGPS_SUPL2_START_AREA_EVENT:I = 0x2

.field public static final AGPS_SUPL2_START_PERIODIC:I = 0x1

.field public static final AGPS_SUPL2_START_SILR:I = 0x0

.field public static final AGPS_SUPL2_STOP_SESSION:I = 0x3

.field public static final BUF_STREAM_SIZE:I = 0x200

.field private static final CONTENT_MIME_TYPE:Ljava/lang/String; = "application/vnd.omaloc-supl-init"

.field public static final DUAL_SIM:I = 0x3

.field private static final EMERGENCY_CALL_ACTION:Ljava/lang/String; = "android.location.agps.EMERGENCY_CALL"

.field private static final EXTRA_GPSSTATUS:Ljava/lang/String; = "enabled"

.field public static final GPS_CONTROL_CLOSE_GPS_IND:I = 0x0

.field public static final GPS_CONTROL_OPEN_GPS_IND:I = 0x1

.field public static final GPS_CONTROL_RESET_IND:I = 0x2

.field private static final GPS_POS_FIRST_FIXED:Ljava/lang/String; = "android.location.gps.GPS_POS_FIRST_FIXED"

.field private static final GPS_STATUS_CHANGED:Ljava/lang/String; = "android.location.GPS_ENABLED_CHANGE"

.field public static final MAX_RECONNECT:I = 0x14

.field public static final NO_SIM:I = 0x0

.field public static final SINGLE_SIM_SIM1:I = 0x1

.field public static final SINGLE_SIM_SIM2:I = 0x2

.field private static final SMS_DATA_RECEIVED:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final SOCKET_NAME_AGPS:Ljava/lang/String; = "agpsd"

.field private static final STUFFING:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MtkAgps"

.field private static final UNKNOWN_VALUE:Ljava/lang/String; = "UNKNOWN_VALUE"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "MTK_AGPS"

.field private static final WAP_DATA_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"

.field private static final X_APPLICATION_ID_FIELD_VALUE:Ljava/lang/String; = "x-oma-application:ulp.ua"

.field private static final X_WAP_APPLICATION_ID_KEY:Ljava/lang/String; = "X-Wap-Application-Id"


# instance fields
.field private final DATA_CONNECTED:I

.field private final DATA_DISCONNECTED:I

.field private final SMS_MAX_LENGTH:I

.field private gpsStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mAgpsHandler:Landroid/os/Handler;

.field private mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

.field private mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

.field private mCellloc:Landroid/telephony/gsm/GsmCellLocation;

.field private mClientName:Ljava/lang/String;

.field private mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

.field private mContext:Landroid/content/Context;

.field private mDataConnWifi:I

.field private mGpsForceEnabledFlag:I

.field private mGpsStatusObserver:Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

.field private mIpAddr:Ljava/lang/String;

.field private mIsBootCompleted:Z

.field private mIsGPSStart:Z

.field private mIsGemini:Z

.field public mIsSocketOK:Z

.field private mLocListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

.field private mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

.field private mRequestId:Ljava/lang/String;

.field private mSI3PartyMsisdn:[Ljava/lang/String;

.field private mSILRMsisdn:Ljava/lang/String;

.field private mSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mStatus:Z

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mTelephonyServicer:Lcom/android/internal/telephony/ITelephony;

.field private mTotalSimNum:I

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWappushReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiMgr:Landroid/net/wifi/WifiManager;

.field private mlooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 10
    .parameter "context"
    .parameter "isGemini"
    .parameter "isAgpsSupport"
    .parameter "isGpsSupport"

    .prologue
    const/16 v9, 0x71

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 371
    invoke-direct {p0}, Lcom/mediatek/common/agps/IMtkAgpsManager$Stub;-><init>()V

    .line 251
    const/16 v4, 0x100

    iput v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->SMS_MAX_LENGTH:I

    .line 253
    iput v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->DATA_DISCONNECTED:I

    .line 254
    iput v8, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->DATA_CONNECTED:I

    .line 268
    iput-boolean v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    .line 270
    iput-boolean v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    .line 271
    iput-boolean v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    .line 272
    iput-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mRequestId:Ljava/lang/String;

    .line 273
    iput-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mClientName:Ljava/lang/String;

    .line 275
    const-string v4, "127.0.0.0"

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    .line 276
    iput v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    .line 282
    new-instance v4, Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-direct {v4}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;-><init>()V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    .line 299
    iput-boolean v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    .line 302
    iput-boolean v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 304
    const-string v4, ""

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    .line 305
    new-array v4, v8, [Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v7

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    .line 307
    iput-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    .line 309
    iput v8, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    .line 311
    iput v7, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I

    .line 364
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$1;

    invoke-direct {v4, p0}, Lcom/mediatek/agps/MtkAgpsManagerService$1;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;

    .line 493
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$2;

    invoke-direct {v4, p0}, Lcom/mediatek/agps/MtkAgpsManagerService$2;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 592
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$3;

    invoke-direct {v4, p0}, Lcom/mediatek/agps/MtkAgpsManagerService$3;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 660
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$4;

    invoke-direct {v4, p0}, Lcom/mediatek/agps/MtkAgpsManagerService$4;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWappushReceiver:Landroid/content/BroadcastReceiver;

    .line 1500
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$5;

    invoke-direct {v4, p0}, Lcom/mediatek/agps/MtkAgpsManagerService$5;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsHandler:Landroid/os/Handler;

    .line 372
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getSimCount()I

    move-result v4

    iput v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    .line 374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "******** MtkAgpsManagerService isGemini="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isAgpsSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ver=3.03 ********"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 375
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    .line 376
    iput-boolean p2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    .line 378
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 379
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v4, "MTK_AGPS"

    invoke-virtual {v3, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 380
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v7}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 382
    if-ne p3, v8, :cond_5

    if-ne p4, v8, :cond_5

    .line 384
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v4, p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsStatusObserver:Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;

    .line 385
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "location_providers_allowed"

    invoke-static {v5}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsStatusObserver:Lcom/mediatek/agps/MtkAgpsManagerService$GpsStatusObserver;

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 389
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    const-string v5, "/etc/agps_profiles_conf.xml"

    invoke-virtual {v4, v5}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->updateAgpsProfile(Ljava/lang/String;)V

    .line 390
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProfileManager "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 392
    new-instance v4, Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {v4}, Lcom/mediatek/common/agps/MtkAgpsProfile;-><init>()V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 393
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 395
    new-instance v4, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {v4}, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;-><init>()V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 396
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->initCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 398
    new-instance v4, Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {v4}, Lcom/mediatek/common/agps/MtkAgpsConfig;-><init>()V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    .line 399
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 402
    new-instance v4, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const-string v5, "agpsd"

    invoke-direct {v4, p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    .line 403
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->connectSocket()Z

    move-result v4

    if-ne v4, v8, :cond_1

    .line 404
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->start()V

    .line 405
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 406
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeCdmaProfile2Agpsd(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 407
    iput-boolean v8, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    .line 412
    :goto_0
    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    if-ne v4, v8, :cond_2

    .line 413
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 417
    :goto_1
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "location"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    .line 419
    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_0

    .line 420
    const/4 v4, 0x2

    iput v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    .line 423
    :cond_0
    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    new-array v4, v4, [Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    .line 424
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    array-length v4, v4

    if-ge v1, v4, :cond_4

    .line 425
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    new-instance v5, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    iget-boolean v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGemini:Z

    invoke-direct {v5, p0, v6, v1}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;-><init>(Lcom/mediatek/agps/MtkAgpsManagerService;ZI)V

    aput-object v5, v4, v1

    .line 426
    iget v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    if-ne v4, v8, :cond_3

    .line 427
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 424
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 409
    .end local v1           #i:I
    :cond_1
    const-string v4, "connectSocket fail --> no MtkAgpsService!!!!"

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_2
    new-instance v4, Lcom/mediatek/telephony/TelephonyManagerEx;

    invoke-direct {v4, p1}, Lcom/mediatek/telephony/TelephonyManagerEx;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    goto :goto_1

    .line 431
    .restart local v1       #i:I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    aget-object v5, v5, v1

    add-int/lit8 v6, v1, 0x0

    invoke-virtual {v4, v5, v9, v6}, Lcom/mediatek/telephony/TelephonyManagerEx;->listen(Landroid/telephony/PhoneStateListener;II)V

    goto :goto_3

    .line 437
    :cond_4
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 438
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 439
    const-string v4, "android.intent.category.default"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 440
    const-string v4, "sms"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 443
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 444
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v4, "android.intent.category.default"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 447
    :try_start_0
    const-string v4, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    :goto_4
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWappushReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 454
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 455
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.location.GPS_ENABLED_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v4, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    const-string v4, "android.location.gps.GPS_POS_FIRST_FIXED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 462
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 463
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 464
    const-string v4, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 465
    const-string v4, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v4, "com.mediatek.agps.toast"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v4, "com.mediatek.agps.EPO_EVENT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->gpsStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "agps status from xml="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v5}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 472
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v4}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 473
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->enable()V

    .line 479
    .end local v1           #i:I
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_5
    :goto_5
    return-void

    .line 448
    .restart local v1       #i:I
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v4, "Unexpected Content-type WapPush message for AGPS"

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    goto/16 :goto_4

    .line 475
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_6
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->disable()V

    goto :goto_5
.end method

.method private GpsState(Z)V
    .locals 2
    .parameter "state"

    .prologue
    const/16 v1, 0x8

    .line 728
    if-nez p1, :cond_0

    .line 729
    const-string v0, "GPS Stop"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 735
    :goto_0
    return-void

    .line 732
    :cond_0
    const-string v0, "GPS start"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 733
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->isGpsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I

    return p1
.end method

.method static synthetic access$110(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mGpsForceEnabledFlag:I

    return v0
.end method

.method static synthetic access$1100(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/location/Location;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendLocation2Agpsd(Landroid/location/Location;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWifiMgr:Landroid/net/wifi/WifiManager;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mediatek/agps/MtkAgpsManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/agps/MtkAgpsManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 132
    invoke-direct/range {p0 .. p6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/agps/MtkAgpsManagerService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/agps/MtkAgpsManagerService;[B)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->niRequest([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/agps/MtkAgpsManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTotalSimNum:I

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/telephony/TelephonyManagerEx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mTelephonyMgrEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/agps/MtkAgpsManagerService;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/agps/MtkAgpsManagerService;IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 132
    invoke-direct/range {p0 .. p7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/mediatek/agps/MtkAgpsManagerService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->getEmString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/mediatek/agps/MtkAgpsManagerService;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->getErrString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsGPSStart:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/common/agps/MtkAgpsConfig;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/agps/MtkAgpsManagerService;Lcom/mediatek/common/agps/MtkAgpsConfig;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/mediatek/agps/MtkAgpsManagerService;)Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/mediatek/agps/MtkAgpsManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->updateAllCurrnetConfig2Agpsd()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/agps/MtkAgpsManagerService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->GpsState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/agps/MtkAgpsManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    return v0
.end method

.method static synthetic access$502(Lcom/mediatek/agps/MtkAgpsManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/agps/MtkAgpsManagerService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/agps/MtkAgpsManagerService;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/agps/MtkAgpsManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->emergencyCallState(I)V

    return-void
.end method

.method private agpsSendBroadcast(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 1493
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsBootCompleted:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1498
    :goto_0
    return-void

    .line 1496
    :cond_0
    const-string v0, "agpsSendBroadcast failed due to boot is not cimpleted"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dumpAgpsConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpAgpsConfig mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0:MA 1:MB 2:Standalone) molr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (0:UP 1:CP)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niIot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1020
    return-void
.end method

.method private emergencyCallState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 716
    if-nez p1, :cond_0

    .line 717
    const-string v0, "Emergency Call Ended"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 724
    :goto_0
    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 725
    :goto_1
    return-void

    .line 718
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 719
    const-string v0, "Emergency Call Dialed"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 721
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Emergency Call State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getBoolPorperty(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 342
    move v1, p2

    .line 344
    .local v1, ret:Z
    if-eqz p2, :cond_0

    :try_start_0
    const-string v3, "true"

    :goto_0
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, value:Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 346
    const/4 v1, 0x1

    .line 353
    .end local v2           #value:Ljava/lang/String;
    :goto_1
    return v1

    .line 344
    :cond_0
    const-string v3, "false"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 350
    .end local v2           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getCallingProcessInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AppName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEmString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1437
    packed-switch p1, :pswitch_data_0

    .line 1449
    const-string v0, "A-GPS Default String"

    :goto_0
    return-object v0

    .line 1439
    :pswitch_0
    const-string v0, "A-GPS Default String"

    goto :goto_0

    .line 1441
    :pswitch_1
    const-string v0, "SI Request Received"

    goto :goto_0

    .line 1443
    :pswitch_2
    const-string v0, "Position Fixed"

    goto :goto_0

    .line 1445
    :pswitch_3
    const-string v0, "Update CMCC log"

    goto :goto_0

    .line 1437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getErrString(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 1453
    packed-switch p1, :pswitch_data_0

    .line 1489
    const-string v0, "A-GPS Default String"

    :goto_0
    return-object v0

    .line 1455
    :pswitch_0
    const-string v0, "A-GPS Default String"

    goto :goto_0

    .line 1457
    :pswitch_1
    const-string v0, "Network Create Fail"

    goto :goto_0

    .line 1459
    :pswitch_2
    const-string v0, "Incorrect PUSH content"

    goto :goto_0

    .line 1461
    :pswitch_3
    const-string v0, "Unsupported Operation"

    goto :goto_0

    .line 1463
    :pswitch_4
    const-string v0, "Requeset Not Accepted"

    goto :goto_0

    .line 1465
    :pswitch_5
    const-string v0, "No Resourcce to Handle new process"

    goto :goto_0

    .line 1467
    :pswitch_6
    const-string v0, "Network Connection is Down"

    goto :goto_0

    .line 1469
    :pswitch_7
    const-string v0, "Remote Side Abort the Session (receive SUPL END)"

    goto :goto_0

    .line 1471
    :pswitch_8
    const-string v0, "Expect Message not Back During a Specific Time Interval"

    goto :goto_0

    .line 1473
    :pswitch_9
    const-string v0, "Receive Incorrect Message Content"

    goto :goto_0

    .line 1475
    :pswitch_a
    const-string v0, "User agree on confirmation"

    goto :goto_0

    .line 1477
    :pswitch_b
    const-string v0, "User deny on confirmation"

    goto :goto_0

    .line 1479
    :pswitch_c
    const-string v0, "Only for NO Position"

    goto :goto_0

    .line 1481
    :pswitch_d
    const-string v0, "TLS authentication fail"

    goto :goto_0

    .line 1483
    :pswitch_e
    const-string v0, "Waiting verification timeout"

    goto :goto_0

    .line 1485
    :pswitch_f
    const-string v0, "Modem reset happen"

    goto :goto_0

    .line 1453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private getIntProperty(Ljava/lang/String;I)I
    .locals 4
    .parameter "prop"
    .parameter "defaultValue"

    .prologue
    .line 332
    move v1, p2

    .line 334
    .local v1, ret:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 339
    .end local v2           #value:Ljava/lang/String;
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getProcessName(I)Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    .line 2024
    iget-object v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2025
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2026
    .local v3, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_1

    .line 2027
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2028
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2029
    .local v2, procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_0

    .line 2030
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2033
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2           #procInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getSimCount()I
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x1

    .line 358
    .local v0, simCount:I
    const-string v1, "ro.mediatek.gemini_support"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->getBoolPorperty(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    const-string v1, "persist.gemini.sim_num"

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 361
    :cond_0
    return v0
.end method

.method private initAgpsConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    .locals 7
    .parameter "config"

    .prologue
    const/16 v6, 0x3c

    const/16 v5, 0x1e

    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1023
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    .line 1024
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->setId:I

    .line 1025
    const/16 v1, 0x16

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    .line 1026
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopVacc:I

    .line 1027
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopAge:I

    .line 1028
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopDelay:I

    .line 1029
    iput v4, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    .line 1030
    iput v4, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    .line 1031
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 1032
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 1033
    const-string v1, "0123456789*#+"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    .line 1034
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddressEnable:I

    .line 1035
    const-string v1, "0123456789*#+"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    .line 1036
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNumEnable:I

    .line 1037
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplPosProtocol:I

    .line 1038
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->cpMolrType:I

    .line 1039
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->log2file:I

    .line 1040
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->supl2file:I

    .line 1041
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->log2uart:I

    .line 1042
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niIot:I

    .line 1043
    const/16 v1, 0xa

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->logFileMaxSize:I

    .line 1044
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    .line 1045
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    .line 1046
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->caEnable:I

    .line 1047
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    .line 1048
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niTimer:I

    .line 1049
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eCidEnable:I

    .line 1050
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->pmtk9975:I

    .line 1051
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->gpevt:I

    .line 1053
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    .line 1054
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->enable3Party:I

    .line 1055
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    .line 1057
    const/16 v1, 0x32

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I

    .line 1058
    iput v6, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    .line 1059
    iput v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    .line 1061
    iput v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    .line 1062
    const/16 v1, 0xf0

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    .line 1063
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    .line 1064
    iput v6, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    .line 1065
    const/4 v1, 0x6

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    .line 1067
    new-array v1, v2, [Landroid/os/Parcelable;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    .line 1068
    new-instance v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    invoke-direct {v0}, Lcom/mediatek/common/agps/MtkAgpsTargetArea;-><init>()V

    .line 1070
    .local v0, area:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    .line 1071
    const/16 v1, 0x3e8

    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    .line 1072
    iput v3, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    .line 1073
    const v1, 0x420eaaab

    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    .line 1074
    const v1, 0x430bc000

    iput v1, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    .line 1076
    iget-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    aput-object v0, v1, v3

    .line 1078
    const-string v1, ""

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    .line 1079
    new-array v1, v2, [Ljava/lang/String;

    const-string v4, ""

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    .line 1082
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getCpPreferSim()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    .line 1083
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getNiStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 1084
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getRoamingStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    .line 1085
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getCpUpSelection()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 1086
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getNotifyTimeout()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    .line 1087
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getVerifyTimeout()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    .line 1088
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getSiMode()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    .line 1089
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getCaStatus()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->caEnable:I

    .line 1090
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getEcidStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eCidEnable:I

    .line 1091
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getPmtk997_5()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->pmtk9975:I

    .line 1092
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getGpevt()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_6
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->gpevt:I

    .line 1093
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getSuplVersion()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    .line 1094
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getEvdoPrefer()I

    move-result v1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    .line 1095
    return-void

    :cond_0
    move v1, v3

    .line 1083
    goto :goto_0

    :cond_1
    move v1, v3

    .line 1084
    goto :goto_1

    :cond_2
    move v1, v3

    .line 1085
    goto :goto_2

    :cond_3
    move v1, v3

    .line 1089
    goto :goto_3

    :cond_4
    move v1, v3

    .line 1090
    goto :goto_4

    :cond_5
    move v1, v3

    .line 1091
    goto :goto_5

    :cond_6
    move v2, v3

    .line 1092
    goto :goto_6
.end method

.method private initAgpsProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 1098
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;

    move-result-object v0

    .line 1099
    .local v0, p:Lcom/mediatek/common/agps/MtkAgpsProfile;
    if-nez v0, :cond_0

    .line 1100
    const-string v1, "using default Google profile"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1101
    const-string v1, "supl.google.com"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 1102
    const-string v1, "GOOGLE"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 1103
    const/16 v1, 0x1c6b

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 1104
    const/4 v1, 0x1

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 1105
    const-string v1, "GOOGLE"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 1106
    const-string v1, "GOOGLE_SPL_Name"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 1107
    const/4 v1, 0x0

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 1108
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 1109
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 1110
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 1111
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    .line 1112
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    .line 1113
    iput-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    .line 1130
    :goto_0
    return-void

    .line 1115
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using /etc/agps_profiles_conf.xml defaultProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1116
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    .line 1117
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    .line 1118
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    .line 1119
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    .line 1120
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    .line 1121
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    .line 1122
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    .line 1123
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    .line 1124
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    .line 1125
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    .line 1126
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    .line 1127
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    .line 1128
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    goto :goto_0
.end method

.method private initCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
    .locals 4
    .parameter "cdmaProfile"

    .prologue
    const/16 v3, 0x3039

    const/4 v2, 0x0

    .line 1133
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v1}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getDefaultCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    move-result-object v0

    .line 1134
    .local v0, c:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    if-nez v0, :cond_0

    .line 1135
    const-string v1, "using default profile for CDMA"

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1136
    const-string v1, "default CDMA profile"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    .line 1137
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    .line 1138
    const-string v1, "www.cdma.com"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    .line 1139
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    .line 1140
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    .line 1141
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    .line 1142
    const-string v1, "1.1.1.1"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    .line 1143
    const-string v1, "1.2.3.4.5.6.7.8.9.0.1.2.3.4.5.6"

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    .line 1144
    iput v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    .line 1145
    iput v2, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    .line 1146
    const-string v1, ""

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    .line 1162
    :goto_0
    return-void

    .line 1148
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "using /etc/agps_profiles_conf.xml for CDMA defaultProfile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    .line 1150
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    .line 1151
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    .line 1152
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    .line 1153
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    .line 1154
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    .line 1155
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    .line 1156
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    .line 1157
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    .line 1158
    iget v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    iput v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    .line 1159
    iget-object v1, v0, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    iput-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private isGpsAvailable()Z
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2038
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManagerService] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 2042
    const-string v0, "MtkAgps"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MtkAgpsManagerService][agps] ERR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    return-void
.end method

.method private msleep(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 2263
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2267
    :goto_0
    return-void

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private niRequest([B)I
    .locals 7
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 710
    const/4 v1, 0x7

    array-length v2, p1

    move-object v0, p0

    move v4, v3

    move v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII[B)V

    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method private sendLocation2Agpsd(Landroid/location/Location;I)V
    .locals 5
    .parameter "location"
    .parameter "ttff"

    .prologue
    .line 1166
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1167
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1168
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1169
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1170
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1171
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1172
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1174
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 1175
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 1176
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeDouble(D)V

    .line 1177
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeLong(J)V

    .line 1178
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 1179
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 1180
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 1181
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1182
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V

    .line 1184
    :cond_0
    monitor-exit v2

    .line 1188
    :goto_0
    return-void

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1185
    :catch_0
    move-exception v0

    .line 1186
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendProfileUpdate(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 1992
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.agps.PROFILE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1993
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1994
    const-string v1, "addr"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1995
    const-string v1, "port"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1996
    const-string v1, "tls"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1997
    const-string v1, "showType"

    iget v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->showType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1998
    const-string v1, "backupSlpNameVar"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->backupSlpNameVar:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1999
    const-string v1, "code"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2000
    const-string v1, "addrType"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addrType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2001
    const-string v1, "providerId"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->providerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2002
    const-string v1, "defaultApn"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->defaultApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2003
    const-string v1, "optionApn"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    const-string v1, "optionApn2"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->optionApn2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2005
    const-string v1, "appId"

    iget-object v2, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2006
    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V

    .line 2007
    return-void
.end method

.method private sendStatusUpdate()V
    .locals 3

    .prologue
    .line 2010
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.agps.STATUS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2011
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "status"

    iget-boolean v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2012
    const-string v1, "roaming"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2013
    const-string v1, "agpsProtocol"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2014
    const-string v1, "niEnable"

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v2, v2, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2015
    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->agpsSendBroadcast(Landroid/content/Intent;)V

    .line 2016
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v1, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->emEnable:I

    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 489
    .local v0, r:Landroid/widget/Toast;
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 490
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateAllCurrnetConfig2Agpsd()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 738
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIsSocketOK:Z

    if-eqz v0, :cond_5

    .line 739
    const-string v0, "updateAllCurrnetConfig2Agpsd"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 741
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeCdmaProfile2Agpsd(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 742
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    if-ne v0, v1, :cond_0

    .line 743
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->enable()V

    .line 748
    :goto_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    array-length v0, v0

    if-ge v7, v0, :cond_4

    .line 749
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    aget-object v8, v0, v7

    .line 750
    .local v8, listener:Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
    const/16 v0, 0xc

    invoke-virtual {v8}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->getNetworkType()I

    move-result v4

    invoke-direct {p0, v0, v7, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    .line 751
    const/16 v4, 0xd

    invoke-virtual {v8}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_2
    invoke-direct {p0, v4, v7, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    .line 752
    const/16 v4, 0xa

    invoke-virtual {v8}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    invoke-direct {p0, v4, v7, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    .line 753
    const/16 v4, 0xe

    invoke-virtual {v8}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->isDataConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_4
    invoke-direct {p0, v4, v7, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    .line 748
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 745
    .end local v7           #i:I
    .end local v8           #listener:Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->disable()V

    goto :goto_0

    .restart local v7       #i:I
    .restart local v8       #listener:Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
    :cond_1
    move v0, v2

    .line 751
    goto :goto_2

    :cond_2
    move v0, v2

    .line 752
    goto :goto_3

    :cond_3
    move v0, v2

    .line 753
    goto :goto_4

    .line 756
    .end local v8           #listener:Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;
    :cond_4
    const/16 v0, 0x11

    iget v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mDataConnWifi:I

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 758
    const/16 v1, 0x10

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIpAddr:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    .line 760
    const/16 v1, 0x16

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    .line 767
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I[Ljava/lang/String;)V

    .line 769
    .end local v7           #i:I
    :cond_5
    return-void
.end method

.method private writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1191
    if-nez p1, :cond_0

    .line 1192
    const-string v4, "[agps_config] config is null"

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 1287
    :goto_0
    return v3

    .line 1195
    :cond_0
    iget-object v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1196
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[agps_config] something is null extAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mlcNum="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    :cond_2
    iget v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    const/4 v6, 0x2

    if-gt v5, v6, :cond_3

    iget v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    if-gtz v5, :cond_4

    .line 1202
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[agps_config] suplVersion is incorrect "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1206
    :cond_4
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    .line 1207
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 1209
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->dumpAgpsConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 1210
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v5

    .line 1212
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1213
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1214
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1215
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1216
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1217
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1219
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1220
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->setId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1221
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopHacc:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1222
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopVacc:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1223
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopAge:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1224
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->qopDelay:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1225
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->notifyTimeout:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1226
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->verifyTimeout:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1227
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1228
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1229
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddressEnable:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1230
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNumEnable:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1231
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplPosProtocol:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1232
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->cpMolrType:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1233
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niIot:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1234
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->logFileMaxSize:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1235
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->simIdPref:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1236
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1237
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->caEnable:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1238
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eCidEnable:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1239
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->supl2file:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1240
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->pmtk9975:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1241
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->gpevt:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1243
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1244
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1247
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->suplVersion:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1248
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->enable3Party:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1249
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->posMethod:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1251
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicNumOfFix:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1252
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicInterval:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1253
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->periodicStartTime:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1255
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStartTime:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1256
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventStopTime:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1257
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventType:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1258
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventInterval:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1259
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->eventMaxNumReport:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1261
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->evdoAgpsPrefer:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1263
    iget-object v6, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    if-nez v6, :cond_7

    .line 1264
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1277
    :cond_5
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->extAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1278
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->mlcNum:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1280
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :cond_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 1287
    goto/16 :goto_0

    .line 1266
    :cond_7
    :try_start_2
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v7, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    array-length v7, v7

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1267
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    array-length v6, v6

    if-ge v2, v6, :cond_5

    .line 1268
    iget-object v6, p1, Lcom/mediatek/common/agps/MtkAgpsConfig;->targetAreaList:[Landroid/os/Parcelable;

    aget-object v0, v6, v2

    check-cast v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;

    .line 1269
    .local v0, area:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->type:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1270
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->radius:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1271
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->latSign:I

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1272
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lat:F

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V

    .line 1273
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v7, v0, Lcom/mediatek/common/agps/MtkAgpsTargetArea;->lng:F

    invoke-virtual {v6, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeFloat(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1282
    .end local v0           #area:Lcom/mediatek/common/agps/MtkAgpsTargetArea;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 1283
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1284
    monitor-exit v5

    goto/16 :goto_0

    .line 1286
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private writeCdmaProfile2Agpsd(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
    .locals 4
    .parameter "profile"

    .prologue
    .line 1400
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1401
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1403
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1404
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1405
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1406
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1407
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1409
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpEnable:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1410
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpPort:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1411
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeAddrValid:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1412
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIpType:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1414
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdePort:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1415
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlValid:I

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1416
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1417
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1418
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1419
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1420
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1422
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1423
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1424
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1426
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    iget-object v3, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1428
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1433
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1434
    return-void

    .line 1429
    :catch_0
    move-exception v0

    .line 1430
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1433
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(I)V
    .locals 6
    .parameter "cmd"

    .prologue
    const/4 v2, -0x1

    .line 1291
    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1292
    return-void
.end method

.method private writeData2Agpsd(II)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"

    .prologue
    const/4 v3, -0x1

    .line 1294
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1295
    return-void
.end method

.method private writeData2Agpsd(III)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"

    .prologue
    const/4 v4, -0x1

    .line 1297
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1298
    return-void
.end method

.method private writeData2Agpsd(IIII)V
    .locals 6
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"

    .prologue
    .line 1301
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIII)V

    .line 1302
    return-void
.end method

.method private writeData2Agpsd(IIIII)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"

    .prologue
    .line 1305
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1307
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1309
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1310
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1311
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1312
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1313
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 1319
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1318
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIIILjava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"

    .prologue
    .line 1340
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1341
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1343
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1344
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1345
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1346
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1347
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1348
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1354
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1355
    return-void

    .line 1350
    :catch_0
    move-exception v0

    .line 1351
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1354
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"
    .parameter "data6"

    .prologue
    .line 1381
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1382
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1385
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1386
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1387
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1388
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1389
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1390
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1391
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1396
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1397
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1396
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(IIIII[B)V
    .locals 3
    .parameter "cmd"
    .parameter "data1"
    .parameter "data2"
    .parameter "data3"
    .parameter "data4"
    .parameter "data5"

    .prologue
    .line 1322
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v2

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1325
    :try_start_1
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1326
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p2}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1327
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p3}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1328
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1329
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1330
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1, p6}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes([B)V

    .line 1331
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1336
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1337
    return-void

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1336
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeData2Agpsd(I[Ljava/lang/String;)V
    .locals 8
    .parameter "cmd"
    .parameter "strArray"

    .prologue
    .line 1357
    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    monitor-enter v6

    .line 1358
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->IsOutputReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 1360
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5, p1}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1361
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    array-length v7, p2

    invoke-virtual {v5, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1362
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1363
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1364
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1366
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1367
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeInt(I)V

    .line 1368
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5, v4}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->writeBytes(Ljava/lang/String;)V

    .line 1366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1370
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mIO:Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;

    invoke-virtual {v5}, Lcom/mediatek/agps/MtkAgpsManagerService$MtkAgpsIO;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1375
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v6

    .line 1377
    return-void

    .line 1371
    :catch_0
    move-exception v1

    .line 1372
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1375
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[disable]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2064
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    .line 2065
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 2066
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 2067
    return-void
.end method

.method public enable()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[enable] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2050
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v3, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v6, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v7, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 2053
    iput-boolean v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 2055
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeCdmaProfile2Agpsd(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 2057
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 2058
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mAgpsPhoneListener:[Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;

    aget-object v0, v0, v8

    invoke-virtual {v0}, Lcom/mediatek/agps/MtkAgpsManagerService$AgpsPhoneStateListener;->updateCellInfo2Agpsd()I

    .line 2057
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2060
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendStatusUpdate()V

    .line 2061
    return-void
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 7
    .parameter "command"
    .parameter "extra"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[extraCommand] command="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2148
    if-nez p1, :cond_1

    .line 2149
    const-string v3, "[extraCommand] command is null"

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v4, v2

    .line 2258
    :cond_0
    :goto_0
    return v4

    .line 2153
    :cond_1
    const-string v5, "USING_XML"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " using_xml enable agps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v3}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2155
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2156
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->enable()V

    goto :goto_0

    .line 2158
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->disable()V

    goto :goto_0

    .line 2160
    :cond_3
    const-string v5, "RESET_TO_DEFAULT"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2161
    const-string v2, "reset to default"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2163
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    .line 2164
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->initCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    .line 2165
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->initAgpsConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V

    .line 2167
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getAgpsStatus()Z

    move-result v2

    if-ne v2, v3, :cond_4

    .line 2171
    iput-boolean v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    .line 2179
    :goto_1
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getNiStatus()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    iput v2, v5, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 2180
    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getCpUpSelection()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    iput v2, v5, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 2181
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget-object v5, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfileManager:Lcom/mediatek/common/agps/MtkAgpsProfileManager;

    invoke-virtual {v5}, Lcom/mediatek/common/agps/MtkAgpsProfileManager;->getRoamingStatus()Z

    move-result v5

    if-eqz v5, :cond_7

    :goto_4
    iput v3, v2, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    .line 2183
    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->updateAllCurrnetConfig2Agpsd()V

    .line 2184
    iget-object v2, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendProfileUpdate(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto/16 :goto_0

    .line 2176
    :cond_4
    iput-boolean v4, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    goto :goto_1

    :cond_5
    move v2, v4

    .line 2179
    goto :goto_2

    :cond_6
    move v2, v4

    .line 2180
    goto :goto_3

    :cond_7
    move v3, v4

    .line 2181
    goto :goto_4

    .line 2185
    :cond_8
    const-string v3, "RESET_AGPSD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2186
    const-string v2, "recv reset agpsd"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2187
    const/16 v2, 0x12

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2188
    :cond_9
    const-string v3, "MNL_TEST_ORIGINAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2189
    const/16 v2, 0x65

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2190
    :cond_a
    const-string v3, "MNL_TEST_SI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2191
    const/16 v2, 0x66

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2192
    :cond_b
    const-string v3, "MNL_TEST_NI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2193
    const/16 v2, 0x67

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2195
    :cond_c
    const-string v3, "MNL_TEST_OPEN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2196
    const/16 v2, 0x68

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2197
    :cond_d
    const-string v3, "MNL_TEST_CLOSE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2198
    const/16 v2, 0x69

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2199
    :cond_e
    const-string v3, "MNL_TEST_START_485"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2200
    const/16 v2, 0x6a

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2201
    :cond_f
    const-string v3, "MNL_TEST_STOP_485"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2202
    const/16 v2, 0x6b

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2203
    :cond_10
    const-string v3, "MNL_TEST_START_486"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2204
    const/16 v2, 0x6c

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2205
    :cond_11
    const-string v3, "MNL_TEST_STOP_486"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 2206
    const/16 v2, 0x6d

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2208
    :cond_12
    const-string v3, "OPEN_GPS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2209
    const/16 v2, 0x6f

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2210
    :cond_13
    const-string v3, "CLOSE_GPS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2211
    const/16 v2, 0x70

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2212
    :cond_14
    const-string v3, "RESET_GPS"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2213
    const/16 v2, 0x71

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2215
    :cond_15
    const-string v3, "AUTO_TEST_ON"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2216
    const/16 v2, 0x79

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2217
    :cond_16
    const-string v3, "AUTO_TEST_OFF"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 2218
    const/16 v2, 0x7a

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2219
    :cond_17
    const-string v3, "AUTO_TEST_RUN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 2220
    if-nez p2, :cond_18

    .line 2221
    const-string v3, "cmd is AUTO_TEST_RUN, but extra is null\n"

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v4, v2

    .line 2222
    goto/16 :goto_0

    .line 2224
    :cond_18
    const/16 v2, 0x7b

    const-string v3, "TC"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0

    .line 2225
    :cond_19
    const-string v3, "AUTO_TEST_RUN_EVDO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2226
    if-nez p2, :cond_1a

    .line 2227
    const-string v3, "cmd is AUTO_TEST_RUN_EVDO, but extra is null\n"

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v4, v2

    .line 2228
    goto/16 :goto_0

    .line 2230
    :cond_1a
    const/16 v2, 0x7f

    const-string v3, "TC"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0

    .line 2231
    :cond_1b
    const-string v3, "AUTO_TEST_ON_V2_GEMINI"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2232
    const/16 v2, 0x7c

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2233
    :cond_1c
    const-string v3, "AUTO_TEST_ON_V2_DT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2234
    const/16 v2, 0x7d

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2235
    :cond_1d
    const-string v3, "AUTO_TEST_RUN_V2"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2236
    if-nez p2, :cond_1e

    .line 2237
    const-string v3, "cmd is AUTO_TEST_RUN_V2, but extra is null\n"

    invoke-direct {p0, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    move v4, v2

    .line 2238
    goto/16 :goto_0

    .line 2240
    :cond_1e
    const/16 v2, 0x7e

    const-string v3, "TC"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0

    .line 2242
    :cond_1f
    const-string v2, "TRIG_SUPL_INIT_UDP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2243
    const/16 v2, 0x83

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2244
    :cond_20
    const-string v2, "ENABLE_RAW_DATA"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2245
    const-string v2, "ENABLE"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2246
    .local v1, enable:I
    const/16 v2, 0x84

    invoke-direct {p0, v2, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0

    .line 2248
    .end local v1           #enable:I
    :cond_21
    const-string v2, "TRIG_E_SUPL_INIT_ESLP_UDP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 2249
    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2250
    :cond_22
    const-string v2, "TRIG_E_SUPL_INIT_UDP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2251
    const/16 v2, 0x86

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I)V

    goto/16 :goto_0

    .line 2254
    :cond_23
    const-string v2, "EXTRA_CMD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2255
    const-string v2, "CMD"

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2256
    .local v0, cmd:I
    const/16 v2, 0x13

    invoke-direct {p0, v2, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    goto/16 :goto_0
.end method

.method public getCdmaProfile()Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;
    .locals 1

    .prologue
    .line 2380
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    return-object v0
.end method

.method public getConfig()Lcom/mediatek/common/agps/MtkAgpsConfig;
    .locals 1

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    return-object v0
.end method

.method public getCpStatus()Z
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2108
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    return v0
.end method

.method public getNiStatus()Z
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getProfile()Lcom/mediatek/common/agps/MtkAgpsProfile;
    .locals 1

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    return-object v0
.end method

.method public getRoamingStatus()Z
    .locals 1

    .prologue
    .line 2142
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSI3PartyMsisdn()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    return-object v0
.end method

.method public getSILRMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2341
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Z
    .locals 1

    .prologue
    .line 2069
    iget-boolean v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mStatus:Z

    return v0
.end method

.method public getUpStatus()Z
    .locals 1

    .prologue
    .line 2136
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iget v0, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public niUserResponse(II)V
    .locals 2
    .parameter "sessionId"
    .parameter "response"

    .prologue
    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[niUserResponse] sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2271
    const/4 v0, 0x5

    invoke-direct {p0, v0, p2, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(III)V

    .line 2272
    return-void
.end method

.method public setCdmaProfile(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 2346
    if-nez p1, :cond_0

    .line 2347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCdmaProfile] profile is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 2378
    :goto_0
    return-void

    .line 2351
    :cond_0
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2352
    const-string v0, "[setCdmaProfile] mName is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2355
    :cond_1
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mMcpAddr:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2356
    const-string v0, "[setCdmaProfile] mMcpAddr is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2359
    :cond_2
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp4Addr:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2360
    const-string v0, "[setCdmaProfile] mPdeIp4Addr is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    :cond_3
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeIp6Addr:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 2364
    const-string v0, "[setCdmaProfile] mPdeIp6Addr is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2367
    :cond_4
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;->mPdeUrlAddr:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 2368
    const-string v0, "[setCdmaProfile] mPdeUrlAddr is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2372
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCdmaProfile] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2373
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    .line 2375
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mCdmaProfile:Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeCdmaProfile2Agpsd(Lcom/mediatek/common/agps/MtkAgpsCdmaProfile;)V

    goto :goto_0
.end method

.method public setConfig(Lcom/mediatek/common/agps/MtkAgpsConfig;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 2073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setConfig]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2074
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2075
    return-void
.end method

.method public setCpEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setCpEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2123
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 2124
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2125
    return-void

    .line 2123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setMode] mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2104
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    iput p1, v0, Lcom/mediatek/common/agps/MtkAgpsConfig;->siMode:I

    .line 2105
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2106
    return-void
.end method

.method public setNiEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setNiEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2113
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->niEnable:I

    .line 2114
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2115
    return-void

    .line 2113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setProfile(Lcom/mediatek/common/agps/MtkAgpsProfile;)V
    .locals 8
    .parameter "profile"

    .prologue
    .line 2081
    if-nez p1, :cond_0

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setProfile] profile is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 2097
    :goto_0
    return-void

    .line 2085
    :cond_0
    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 2086
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setPorifle] something is null addr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2089
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setProfile] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2090
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    .line 2092
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v2, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->tls:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget v3, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->port:I

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v0, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v5, v0

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v6, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mProfile:Lcom/mediatek/common/agps/MtkAgpsProfile;

    iget-object v7, v0, Lcom/mediatek/common/agps/MtkAgpsProfile;->addr:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;Ljava/lang/String;)V

    .line 2096
    invoke-direct {p0, p1}, Lcom/mediatek/agps/MtkAgpsManagerService;->sendProfileUpdate(Lcom/mediatek/common/agps/MtkAgpsProfile;)V

    goto :goto_0
.end method

.method public setRoamingEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setRoamingEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2128
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->roaming:I

    .line 2129
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2130
    return-void

    .line 2128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSI3PartyMsisdn([Ljava/lang/String;)V
    .locals 4
    .parameter "msisdnList"

    .prologue
    .line 2293
    const-string v2, "setSI3PartyMsisdn"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2294
    if-nez p1, :cond_0

    .line 2295
    const-string v2, "setSI3PartyMsisdn msisdnList is null"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 2317
    :goto_0
    return-void

    .line 2298
    :cond_0
    array-length v2, p1

    const/16 v3, 0xa

    if-le v2, v3, :cond_1

    .line 2299
    const-string v2, "setSI3PartyMsisdn the length of msisdnList is over 10"

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2302
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 2303
    aget-object v1, p1, v0

    .line 2304
    .local v1, msisdn:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 2305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSI3PartyMsisdn index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2308
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_3

    .line 2309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSI3PartyMsisdn index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length is over 31, len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2302
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2315
    .end local v1           #msisdn:Ljava/lang/String;
    :cond_4
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    .line 2316
    const/16 v2, 0x15

    iget-object v3, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSI3PartyMsisdn:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSILRMsisdn(Ljava/lang/String;)V
    .locals 7
    .parameter "msisdn"

    .prologue
    const/4 v3, -0x1

    .line 2319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSILR msisdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2320
    if-nez p1, :cond_0

    .line 2321
    const-string v0, "startSILR msisdn is null"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    .line 2335
    :goto_0
    return-void

    .line 2324
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f

    if-le v0, v1, :cond_1

    .line 2325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSILR length of misidn is over 31, len="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2328
    :cond_1
    iput-object p1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    .line 2329
    const/16 v1, 0x16

    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v6, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mSILRMsisdn:Ljava/lang/String;

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(IIIIILjava/lang/String;)V

    goto :goto_0
.end method

.method public setUpEnable(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[setUpEnable] enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/agps/MtkAgpsManagerService;->getCallingProcessInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/mediatek/common/agps/MtkAgpsConfig;->agpsProtocol:I

    .line 2119
    iget-object v0, p0, Lcom/mediatek/agps/MtkAgpsManagerService;->mConfig:Lcom/mediatek/common/agps/MtkAgpsConfig;

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeAgpsConfig2Agpsd(Lcom/mediatek/common/agps/MtkAgpsConfig;)I

    .line 2120
    return-void

    .line 2118
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startSIAreaEvent()V
    .locals 2

    .prologue
    .line 2284
    const-string v0, "startSIAreaEvent"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2285
    const/16 v0, 0x14

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 2286
    return-void
.end method

.method public startSILR()V
    .locals 2

    .prologue
    .line 2276
    const-string v0, "startSILR"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2277
    const/16 v0, 0x14

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 2278
    return-void
.end method

.method public startSIPeiodic()V
    .locals 2

    .prologue
    .line 2280
    const-string v0, "startSIPeiodic"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2281
    const/16 v0, 0x14

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 2282
    return-void
.end method

.method public stopTriggeredSession()V
    .locals 2

    .prologue
    .line 2288
    const-string v0, "stopTriggeredSession"

    invoke-direct {p0, v0}, Lcom/mediatek/agps/MtkAgpsManagerService;->log(Ljava/lang/String;)V

    .line 2289
    const/16 v0, 0x14

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/mediatek/agps/MtkAgpsManagerService;->writeData2Agpsd(II)V

    .line 2290
    return-void
.end method
