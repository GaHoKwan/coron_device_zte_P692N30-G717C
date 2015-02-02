.class public Lcom/mediatek/ygps/YgpsActivity;
.super Landroid/app/TabActivity;
.source "YgpsActivity.java"

# interfaces
.implements Lcom/mediatek/ygps/SatelliteDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;,
        Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;,
        Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;
    }
.end annotation


# static fields
.field private static final COMMAND_END:Ljava/lang/String; = "*"

.field private static final COMMAND_START:Ljava/lang/String; = "$"

.field private static final COUNT_PRECISION:I = 0x1f4

.field private static final DATE_FORMAT:Ljava/text/DateFormat; = null

.field private static final DIALOG_WAITING_FOR_STOP:I = 0x0

.field private static final EXCEED_SECOND:I = 0x3e7

.field private static final FIRST_TIME:Ljava/lang/String; = "first.time"

.field private static final GPS_EXTRA_A1LMANAC:Ljava/lang/String; = "almanac"

.field private static final GPS_EXTRA_ALL:Ljava/lang/String; = "all"

.field private static final GPS_EXTRA_EPHEMERIS:Ljava/lang/String; = "ephemeris"

.field private static final GPS_EXTRA_HEALTH:Ljava/lang/String; = "health"

.field private static final GPS_EXTRA_IONO:Ljava/lang/String; = "iono"

.field private static final GPS_EXTRA_POSITION:Ljava/lang/String; = "position"

.field private static final GPS_EXTRA_RTI:Ljava/lang/String; = "rti"

.field private static final GPS_EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final GPS_EXTRA_UTC:Ljava/lang/String; = "utc"

.field private static final GPS_TEST_COLD_START:I = 0x2

.field private static final GPS_TEST_FULL_START:I = 0x3

.field private static final GPS_TEST_HOT_START:I = 0x0

.field private static final GPS_TEST_WARM_START:I = 0x1

.field private static final GRAVITE_Y_OFFSET:I = 0x96

.field private static final HANDLE_CHECK_SATEREPORT:I = 0x3eb

.field private static final HANDLE_CLEAR:I = 0x3ea

.field private static final HANDLE_COMMAND_GETVERSION:I = 0x44e

.field private static final HANDLE_COMMAND_JAMMINGSCAN:I = 0x44d

.field private static final HANDLE_COMMAND_OTHERS:I = 0x44f

.field private static final HANDLE_COUNTER:I = 0x3e8

.field private static final HANDLE_DELETE_DATA:I = 0x4b3

.field private static final HANDLE_ENABLE_BUTTON:I = 0x4b4

.field private static final HANDLE_EXCEED_PERIOD:I = 0x438

.field private static final HANDLE_MSG_DELAY:I = 0xc8

.field private static final HANDLE_MSG_DELAY_300:I = 0x12c

.field private static final HANDLE_REMOVE_UPDATE:I = 0x4b1

.field private static final HANDLE_REQUEST_UPDATE:I = 0x4b2

.field private static final HANDLE_SET_COUNTDOWN:I = 0x41a

.field private static final HANDLE_SET_CURRENT_TIMES:I = 0x406

.field private static final HANDLE_SET_MEANTTFF:I = 0x42e

.field private static final HANDLE_SET_PARAM_RECONNECT:I = 0x442

.field private static final HANDLE_START_BUTTON_UPDATE:I = 0x410

.field private static final HANDLE_UPDATE_RESULT:I = 0x3e9

.field private static final INPUT_VALUE_MAX:I = 0x3e7

.field private static final INPUT_VALUE_MIN:I = 0x0

.field private static final INTENT_ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final LOCATION_MAX_LENGTH:I = 0xc

.field private static final MESSAGE_ARG_0:I = 0x0

.field private static final MESSAGE_ARG_1:I = 0x1

.field private static final NMEALOG_PATH:Ljava/lang/String; = "/data/misc/nmea_log"

.field private static final NMEALOG_SD:Z = true

.field private static final NMEA_LOG_PREX:Ljava/lang/String; = "Nmealog"

.field private static final NMEA_LOG_SUFX:Ljava/lang/String; = ".txt"

.field private static final ONE_SECOND:I = 0x3e8

.field private static final RESPONSE_ARRAY_LENGTH:I = 0x4

.field private static final SATE_RATE_TIMEOUT:I = 0x3

.field private static final SHARED_PREF_KEY_BG:Ljava/lang/String; = "RunInBG"

.field private static final TAG:Ljava/lang/String; = "YGPS/Activity"

.field private static final TAG_BG:Ljava/lang/String; = "EM/YGPS_BG"

.field private static final YEAR_START:I = 0x76c


# instance fields
.field private mAutoTestHandler:Landroid/os/Handler;

.field private mAutoTestThread:Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

.field private mAzimuth:[F

.field public final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnColdStart:Landroid/widget/Button;

.field private mBtnFullStart:Landroid/widget/Button;

.field private mBtnGpsHwTest:Landroid/widget/Button;

.field private mBtnGpsJamming:Landroid/widget/Button;

.field private mBtnGpsTestStart:Landroid/widget/Button;

.field private mBtnGpsTestStop:Landroid/widget/Button;

.field private mBtnHotStart:Landroid/widget/Button;

.field private mBtnHotStill:Landroid/widget/Button;

.field private mBtnNMEADbgDbg:Landroid/widget/Button;

.field private mBtnNMEAStop:Landroid/widget/Button;

.field private mBtnNmeaClear:Landroid/widget/Button;

.field private mBtnNmeaDbgDbgFile:Landroid/widget/Button;

.field private mBtnNmeaDbgNmea:Landroid/widget/Button;

.field private mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

.field private mBtnNmeaSave:Landroid/widget/Button;

.field private mBtnNmeaStart:Landroid/widget/Button;

.field private mBtnReStart:Landroid/widget/Button;

.field private mBtnSuplLog:Landroid/widget/Button;

.field private mBtnWarmStart:Landroid/widget/Button;

.field private mCbNeed3DFix:Landroid/widget/CheckBox;

.field private mCurrentTimes:I

.field private mElevation:[F

.field private mEtGpsJammingTimes:Landroid/widget/EditText;

.field private mEtTestInterval:Landroid/widget/EditText;

.field private mEtTestTimes:Landroid/widget/EditText;

.field private mFirstFix:Z

.field public final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private mHandler:Landroid/os/Handler;

.field private mIsExit:Z

.field private mIsNeed3DFix:Z

.field private mIsRunInBg:Z

.field private mIsShowVersion:Z

.field private mIsTestRunning:Z

.field private mLastLocation:Landroid/location/Location;

.field private mLastTimestamp:J

.field public final mLocListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMeanTTFF:F

.field private mNmeaListener:Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

.field private mOutputNMEALog:Ljava/io/FileOutputStream;

.field private mOutputTestLog:Ljava/io/FileOutputStream;

.field private mPowerKeyFilter:Landroid/content/IntentFilter;

.field private mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

.field private mPrns:[I

.field private mPrompt:Landroid/widget/Toast;

.field private mProvider:Ljava/lang/String;

.field private mSateReportTimeOut:I

.field private mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

.field private mSatellites:I

.field private mShowFirstFixLocate:Z

.field private mShowLoc:Z

.field private mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

.field private mSnrs:[F

.field private mSocketClient:Lcom/mediatek/ygps/ClientSocket;

.field private mStartNmeaRecord:Z

.field private mStartPressedHandling:Z

.field private mStatus:Ljava/lang/String;

.field private mStatusPrompt:Landroid/widget/Toast;

.field private mStopPressedHandling:Z

.field private mTVNMEAHint:Landroid/widget/TextView;

.field private mTestInterval:I

.field private mTestSpinner:Landroid/widget/Spinner;

.field private mTestType:I

.field private mTotalTimes:I

.field private mTtffValue:I

.field private mTvNmeaLog:Landroid/widget/TextView;

.field mType:[Ljava/lang/String;

.field private mUsedInFixMask:[I

.field private mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/ygps/YgpsActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x100

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 153
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    .line 154
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    .line 155
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    .line 156
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTotalTimes:I

    .line 157
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I

    .line 158
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    .line 159
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F

    .line 161
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    .line 162
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    .line 163
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mElevation:[F

    .line 164
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mAzimuth:[F

    .line 166
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    .line 167
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z

    .line 168
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    .line 169
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsNeed3DFix:Z

    .line 170
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    .line 171
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsExit:Z

    .line 173
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    .line 174
    iput-boolean v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z

    .line 175
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z

    .line 176
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I

    .line 178
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSocketClient:Lcom/mediatek/ygps/ClientSocket;

    .line 180
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

    .line 181
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

    .line 182
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mNmeaListener:Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

    .line 183
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 184
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    .line 185
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;

    .line 186
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;

    .line 187
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;

    .line 188
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;

    .line 189
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;

    .line 190
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;

    .line 191
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    .line 192
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;

    .line 193
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    .line 194
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    .line 195
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    .line 196
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    .line 197
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    .line 198
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;

    .line 199
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;

    .line 200
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    .line 201
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    .line 202
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    .line 203
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    .line 204
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    .line 205
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    .line 206
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestSpinner:Landroid/widget/Spinner;

    .line 208
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestThread:Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

    .line 209
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;

    .line 212
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z

    .line 213
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z

    .line 215
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;

    .line 216
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTVNMEAHint:Landroid/widget/TextView;

    .line 217
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    .line 219
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    .line 220
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsJamming:Landroid/widget/Button;

    .line 221
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    .line 224
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyFilter:Landroid/content/IntentFilter;

    .line 225
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 227
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    .line 228
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;

    .line 229
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Hot start"

    aput-object v1, v0, v2

    const-string v1, "Warm start"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "Cold start"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Full start"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mType:[Ljava/lang/String;

    .line 230
    iput-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    .line 1001
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$2;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    .line 1310
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastTimestamp:J

    .line 1685
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$5;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    .line 1803
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$6;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 2013
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$7;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$7;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 2342
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$8;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$8;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    .line 2437
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/ygps/YgpsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    return p1
.end method

.method static synthetic access$1000(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->reconnectTest()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsShowVersion:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/ygps/YgpsActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastTimestamp:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/mediatek/ygps/YgpsActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->showVersion()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->saveNMEALog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/ygps/YgpsActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/Location;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/ygps/YgpsActivity;Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLastLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/ygps/YgpsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    return v0
.end method

.method static synthetic access$2502(Lcom/mediatek/ygps/YgpsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    return p1
.end method

.method static synthetic access$2512(Lcom/mediatek/ygps/YgpsActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/mediatek/ygps/YgpsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/mediatek/ygps/YgpsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/mediatek/ygps/YgpsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I

    return v0
.end method

.method static synthetic access$2900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/mediatek/ygps/YgpsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/mediatek/ygps/YgpsActivity;I)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->meanTTFF(I)F

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/ygps/YgpsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I

    return v0
.end method

.method static synthetic access$3302(Lcom/mediatek/ygps/YgpsActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I

    return p1
.end method

.method static synthetic access$3308(Lcom/mediatek/ygps/YgpsActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mSateReportTimeOut:I

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->startGPSAutoTest()V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->gpsTestRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->setViewToStopState()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/mediatek/ygps/YgpsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->createFileForSavingNMEALog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V

    return-void
.end method

.method static synthetic access$4700(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/ygps/YgpsActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F

    return v0
.end method

.method static synthetic access$5000(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/ygps/YgpsActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F

    return p1
.end method

.method static synthetic access$5100(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->saveNMEALog()V

    return-void
.end method

.method static synthetic access$5600(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->onGpsHwTestClicked()V

    return-void
.end method

.method static synthetic access$5800(Lcom/mediatek/ygps/YgpsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsJamming:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->onGpsJammingScanClicked()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/ygps/YgpsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->enableBtns(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/ygps/YgpsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/ygps/YgpsActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->resetParamForRestart(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/ygps/YgpsActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/mediatek/ygps/YgpsActivity;->setStartButtonEnable(Z)V

    return-void
.end method

.method private clearLayout()V
    .locals 2

    .prologue
    const v1, 0x7f050002

    .line 566
    const v0, 0x7f070010

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 567
    const v0, 0x7f070011

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 568
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 569
    const v0, 0x7f070015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 570
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 571
    const v0, 0x7f070017

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 572
    const v0, 0x7f070018

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 573
    const v0, 0x7f070019

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 574
    const v0, 0x7f07001a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 577
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z

    if-eqz v0, :cond_0

    .line 578
    const v0, 0x7f070013

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 580
    const v0, 0x7f070012

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 583
    :cond_0
    return-void
.end method

.method private createFileForSavingAutoTestLog()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1075
    const-string v6, "YGPS/Activity"

    const-string v7, "Enter createFileForSavingAutoTestLog function"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1078
    const-string v6, "YGPS/Activity"

    const-string v7, "saveAutoTestLog function: No SD card"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const v6, 0x7f05003d

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1105
    :goto_0
    return v4

    .line 1083
    :cond_0
    sget-object v6, Lcom/mediatek/ygps/YgpsActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1085
    .local v3, strTime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1086
    .local v2, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AutoTestLog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1088
    .restart local v2       #file:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 1090
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    .line 1105
    goto :goto_0

    .line 1091
    :catch_0
    move-exception v0

    .line 1092
    .local v0, e:Ljava/io/IOException;
    const-string v6, "YGPS/Activity"

    const-string v7, "create new file failed!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const v6, 0x7f05005f

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1100
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1101
    .local v1, e1:Ljava/io/FileNotFoundException;
    const-string v5, "YGPS/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output stream FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createFileForSavingNMEALog()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 591
    const-string v6, "YGPS/Activity"

    const-string v7, "Enter startSavingNMEALog function"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 595
    const-string v6, "YGPS/Activity"

    const-string v7, "saveNMEALog function: No SD card"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const v6, 0x7f05003d

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 634
    :goto_0
    return v4

    .line 602
    :cond_0
    sget-object v6, Lcom/mediatek/ygps/YgpsActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 604
    .local v3, strTime:Ljava/lang/String;
    const/4 v2, 0x0

    .line 606
    .local v2, file:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Nmealog"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 615
    .restart local v2       #file:Ljava/io/File;
    if-eqz v2, :cond_1

    .line 617
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 633
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mTVNMEAHint:Landroid/widget/TextView;

    const v6, 0x7f050039

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    move v4, v5

    .line 634
    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, e:Ljava/io/IOException;
    const-string v6, "YGPS/Activity"

    const-string v7, "create new file failed!"

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const v6, 0x7f05005f

    invoke-static {p0, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 627
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 628
    .local v1, e1:Ljava/io/FileNotFoundException;
    const-string v5, "YGPS/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "output stream FileNotFoundException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private emptyArray()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 314
    iput v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    .line 315
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    aput v3, v1, v0

    .line 317
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    aput v2, v1, v0

    .line 318
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mElevation:[F

    aput v2, v1, v0

    .line 319
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAzimuth:[F

    aput v2, v1, v0

    .line 320
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    aput v3, v1, v0

    .line 315
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    return-void
.end method

.method private enableBtns(Z)V
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2335
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2336
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2337
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2338
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2339
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2340
    return-void
.end method

.method private finishSavingAutoTestLog()V
    .locals 5

    .prologue
    .line 1131
    const-string v1, "YGPS/Activity"

    const-string v2, "finishSavingAutoTestLog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    if-nez v1, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1136
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    .line 1138
    const v1, 0x7f05007c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Ljava/io/IOException;
    const-string v1, "YGPS/Activity"

    const-string v2, "Close file failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private finishSavingNMEALog()V
    .locals 5

    .prologue
    .line 666
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartNmeaRecord:Z

    .line 667
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 668
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 670
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTVNMEAHint:Landroid/widget/TextView;

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 671
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 673
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 674
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    .line 675
    const v1, 0x7f050060

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :goto_0
    return-void

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Ljava/io/IOException;
    const-string v1, "YGPS/Activity"

    const-string v2, "Close file failed!"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private gpsTestRunning()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2005
    iget-boolean v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v1, :cond_0

    .line 2006
    const v1, 0x7f050077

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private meanTTFF(I)F
    .locals 2
    .parameter "n"

    .prologue
    .line 995
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F

    add-int/lit8 v1, p1, -0x1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    return v0
.end method

.method private onGpsHwTestClicked()V
    .locals 5

    .prologue
    .line 2286
    const-string v2, "test.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2288
    .local v1, ss:Ljava/lang/String;
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2289
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    const v3, 0x7f05005b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2290
    const-string v2, "test.mode"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    const v3, 0x7f050055

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2293
    const-string v2, "debug.dbg2file"

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 2300
    :goto_0
    const-string v2, "first.time"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2302
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first.time"

    const-string v4, "1"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2304
    return-void

    .line 2296
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    const v3, 0x7f05005a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2297
    const-string v2, "test.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGpsJammingScanClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2310
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2311
    const-string v1, "Please input Jamming scan times"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2325
    :goto_0
    return-void

    .line 2316
    :cond_0
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2318
    .local v0, times:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x3e7

    if-le v1, v2, :cond_2

    .line 2319
    :cond_1
    const-string v1, "Jamming scan times error"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2323
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PMTK837,1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/ygps/YgpsActivity;->sendCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reconnectTest()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1199
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1201
    .local v1, extras:Landroid/os/Bundle;
    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    if-nez v3, :cond_1

    .line 1202
    const-string v3, "rti"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1203
    const-string v3, "Hot Start "

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    .line 1220
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total times: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mTotalTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    .line 1223
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    :try_start_0
    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTotalTimes:I

    if-gt v2, v3, :cond_5

    iget-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v3, :cond_5

    .line 1224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    .line 1225
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I

    .line 1226
    const-string v3, "YGPS/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reconnectTest function: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-direct {p0, v2}, Lcom/mediatek/ygps/YgpsActivity;->setCurrentTimes(I)V

    .line 1232
    invoke-direct {p0, v1}, Lcom/mediatek/ygps/YgpsActivity;->resetParamForAutoTest(Landroid/os/Bundle;)V

    .line 1233
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->waitAutoTestInterval()V

    .line 1234
    iget-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsNeed3DFix:Z

    if-eqz v3, :cond_4

    .line 1235
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->wait3DFix()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1204
    .end local v2           #i:I
    :cond_1
    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    if-ne v3, v6, :cond_2

    .line 1205
    const-string v3, "ephemeris"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1206
    const-string v3, "Warm Start "

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    :cond_2
    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1208
    const-string v3, "ephemeris"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1209
    const-string v3, "position"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1210
    const-string v3, "time"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1211
    const-string v3, "iono"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1212
    const-string v3, "utc"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    const-string v3, "health"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1214
    const-string v3, "Cold Start "

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    :cond_3
    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1216
    const-string v3, "all"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1217
    const-string v3, "Full Start "

    invoke-direct {p0, v3}, Lcom/mediatek/ygps/YgpsActivity;->saveAutoTestLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    .restart local v2       #i:I
    :cond_4
    const-wide/16 v3, 0x7d0

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "YGPS/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS auto test thread interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const v3, 0x7f050063

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1247
    .end local v0           #e:Ljava/lang/InterruptedException;
    :goto_3
    return-void

    .line 1240
    :cond_5
    const-wide/16 v3, 0x3e8

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 1241
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->stopGPSAutoTest()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private resetParam(Landroid/os/Bundle;Z)V
    .locals 9
    .parameter "extras"
    .parameter "bAutoConnectTest"

    .prologue
    const/16 v3, 0x3e8

    const/4 v8, 0x0

    .line 1947
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter resetParam function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1950
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1954
    :goto_0
    if-nez p2, :cond_0

    .line 1955
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, p1}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1959
    :cond_0
    if-nez p2, :cond_1

    .line 1960
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V

    .line 1962
    :cond_1
    iput-boolean v8, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    .line 1963
    iput v8, p0, Lcom/mediatek/ygps/YgpsActivity;->mTtffValue:I

    .line 1964
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1965
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1968
    :cond_2
    if-eqz p2, :cond_7

    :try_start_1
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    if-eqz v0, :cond_7

    .line 1969
    iget v7, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    .local v7, i:I
    :goto_1
    if-ltz v7, :cond_3

    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v0, :cond_3

    .line 1970
    invoke-direct {p0, v7}, Lcom/mediatek/ygps/YgpsActivity;->setCountDown(I)V

    .line 1971
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1969
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1951
    .end local v7           #i:I
    :catch_0
    move-exception v6

    .line 1952
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "YGPS/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetParam InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1974
    .end local v6           #e:Ljava/lang/InterruptedException;
    .restart local v7       #i:I
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-nez v0, :cond_4

    .line 1975
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/ygps/YgpsActivity;->setCountDown(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1983
    .end local v7           #i:I
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsExit:Z

    if-nez v0, :cond_5

    .line 1984
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1988
    :cond_5
    if-nez p2, :cond_6

    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1989
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/ygps/YgpsActivity;->setStartButtonEnable(Z)V

    .line 1990
    invoke-virtual {p0, v8}, Landroid/app/Activity;->removeDialog(I)V

    .line 1992
    iput-boolean v8, p0, Lcom/mediatek/ygps/YgpsActivity;->mStopPressedHandling:Z

    .line 1993
    iput-boolean v8, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z

    .line 1997
    :cond_6
    return-void

    .line 1978
    :cond_7
    const-wide/16 v0, 0x1f4

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1980
    :catch_1
    move-exception v6

    .line 1981
    .restart local v6       #e:Ljava/lang/InterruptedException;
    const-string v0, "YGPS/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetParam InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetParamForAutoTest(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 1925
    const-string v1, "YGPS/Activity"

    const-string v2, "Enter resetParamForAutoTest function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1927
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1929
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1931
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1932
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1934
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b2

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1937
    return-void
.end method

.method private resetParamForRestart(Landroid/os/Bundle;)V
    .locals 5
    .parameter "extras"

    .prologue
    .line 1903
    const-string v1, "YGPS/Activity"

    const-string v2, "Enter resetParamForRestart function"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1908
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1910
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1912
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1913
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1915
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b2

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1917
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4b4

    const-wide/16 v3, 0x384

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1918
    return-void
.end method

.method private resetTestParam()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 967
    iput-boolean v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsNeed3DFix:Z

    .line 968
    iput v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTotalTimes:I

    .line 969
    iput v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mCurrentTimes:I

    .line 970
    iput v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    .line 971
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mMeanTTFF:F

    .line 972
    iput-boolean v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    .line 973
    return-void
.end method

.method private resetTestView()V
    .locals 2

    .prologue
    .line 981
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    return-void
.end method

.method private saveAutoTestLog(Ljava/lang/String;)V
    .locals 7
    .parameter "nmea"

    .prologue
    const/4 v6, 0x1

    .line 1109
    const/4 v0, 0x1

    .line 1110
    .local v0, bSaved:Z
    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    if-nez v2, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1114
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    if-nez v0, :cond_0

    .line 1120
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V

    .line 1121
    const-string v2, "Please check your SD card"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1115
    :catch_0
    move-exception v1

    .line 1116
    .local v1, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 1117
    :try_start_1
    const-string v2, "YGPS/Activity"

    const-string v3, "write autotest log to file failed!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1119
    if-nez v0, :cond_0

    .line 1120
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V

    .line 1121
    const-string v2, "Please check your SD card"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1119
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_2

    .line 1120
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V

    .line 1121
    const-string v3, "Please check your SD card"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_2
    throw v2
.end method

.method private saveNMEALog()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 692
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 694
    sget-object v7, Lcom/mediatek/ygps/YgpsActivity;->DATE_FORMAT:Ljava/text/DateFormat;

    new-instance v8, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 696
    .local v6, strTime:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Nmealog"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 698
    .local v1, file:Ljava/io/File;
    const/4 v2, 0x0

    .line 699
    .local v2, fileOutputStream:Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    .line 701
    .local v4, flag:Z
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v7

    if-nez v7, :cond_1

    .line 702
    const v7, 0x7f05005f

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 726
    if-eqz v2, :cond_0

    .line 728
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 813
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #flag:Z
    .end local v6           #strTime:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 729
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #flag:Z
    .restart local v6       #strTime:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/io/IOException;
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog exception in finally: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    goto :goto_0

    .line 706
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 707
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .local v3, fileOutputStream:Ljava/io/FileOutputStream;
    const v7, 0x7f070028

    :try_start_3
    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, nmea:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_2

    .line 710
    const v7, 0x7f050061

    const/4 v8, 0x1

    invoke-static {p0, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 726
    if-eqz v3, :cond_0

    .line 728
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 729
    :catch_1
    move-exception v0

    .line 730
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog exception in finally: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    goto :goto_0

    .line 714
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {v3, v7, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 716
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 717
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 726
    if-eqz v3, :cond_7

    .line 728
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move-object v2, v3

    .line 736
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v5           #nmea:Ljava/lang/String;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    if-eqz v4, :cond_5

    .line 737
    const-string v7, "YGPS/Activity"

    const-string v8, "Save Nmealog to file Finished"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const v7, 0x7f05005c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 729
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #nmea:Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 730
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog exception in finally: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    move-object v2, v3

    .line 733
    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 718
    .end local v0           #e:Ljava/io/IOException;
    .end local v5           #nmea:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 719
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    :goto_2
    :try_start_7
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog NotFoundException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 721
    const/4 v4, 0x0

    .line 726
    if-eqz v2, :cond_3

    .line 728
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_1

    .line 729
    :catch_4
    move-exception v0

    .line 730
    .local v0, e:Ljava/io/IOException;
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog exception in finally: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    .line 733
    goto/16 :goto_1

    .line 722
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 723
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_9
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog IOException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 724
    const/4 v4, 0x0

    .line 726
    if-eqz v2, :cond_3

    .line 728
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_1

    .line 729
    :catch_6
    move-exception v0

    .line 730
    const-string v7, "YGPS/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Save nmealog exception in finally: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    .line 733
    goto/16 :goto_1

    .line 726
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v2, :cond_4

    .line 728
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 733
    :cond_4
    :goto_5
    throw v7

    .line 729
    :catch_7
    move-exception v0

    .line 730
    .restart local v0       #e:Ljava/io/IOException;
    const-string v8, "YGPS/Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save nmealog exception in finally: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x0

    goto :goto_5

    .line 748
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    const-string v7, "YGPS/Activity"

    const-string v8, "Save Nmealog Failed"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const v7, 0x7f05005e

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 753
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .end local v4           #flag:Z
    .end local v6           #strTime:Ljava/lang/String;
    :cond_6
    const-string v7, "YGPS/Activity"

    const-string v8, "saveNMEALog function: No SD card"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const v7, 0x7f05003d

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 726
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v4       #flag:Z
    .restart local v6       #strTime:Ljava/lang/String;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 722
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 718
    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v2           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v3       #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v5       #nmea:Ljava/lang/String;
    :cond_7
    move-object v2, v3

    .end local v3           #fileOutputStream:Ljava/io/FileOutputStream;
    .restart local v2       #fileOutputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method private saveNMEALog(Ljava/lang/String;)V
    .locals 7
    .parameter "nmea"

    .prologue
    const/4 v6, 0x1

    .line 644
    const/4 v0, 0x1

    .line 646
    .local v0, bSaved:Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 647
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V

    .line 654
    const-string v2, "Please check your SD card"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, e:Ljava/io/IOException;
    const/4 v0, 0x0

    .line 650
    :try_start_1
    const-string v2, "YGPS/Activity"

    const-string v3, "write NMEA log to file failed!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 652
    if-nez v0, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V

    .line 654
    const-string v2, "Please check your SD card"

    invoke-static {p0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 652
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-nez v0, :cond_1

    .line 653
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V

    .line 654
    const-string v3, "Please check your SD card"

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_1
    throw v2
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 9
    .parameter "command"

    .prologue
    const v8, 0x7f050076

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 2235
    const-string v3, "YGPS/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS Command is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2236
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 2237
    :cond_0
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2257
    :goto_0
    return-void

    .line 2241
    :cond_1
    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2242
    .local v1, index1:I
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2243
    .local v2, index2:I
    move-object v0, p1

    .line 2244
    .local v0, com:Ljava/lang/String;
    if-eq v1, v6, :cond_4

    if-eq v2, v6, :cond_4

    .line 2245
    if-ge v2, v1, :cond_2

    .line 2246
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2250
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2256
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSocketClient:Lcom/mediatek/ygps/ClientSocket;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/ygps/ClientSocket;->sendCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2251
    :cond_4
    if-eq v1, v6, :cond_5

    .line 2252
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2253
    :cond_5
    if-eq v2, v6, :cond_3

    .line 2254
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setCountDown(I)V
    .locals 3
    .parameter "num"

    .prologue
    .line 1291
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    const/16 v2, 0x41a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1293
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1294
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1295
    return-void
.end method

.method private setCurrentTimes(I)V
    .locals 3
    .parameter "nTimes"

    .prologue
    .line 1278
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    const/16 v2, 0x406

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1280
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1281
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1282
    return-void
.end method

.method private setLayout()V
    .locals 10

    .prologue
    const v9, 0x7f05005a

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 413
    const v5, 0x7f070035

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ygps/SatelliteSkyView;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

    .line 414
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

    invoke-virtual {v5, p0}, Lcom/mediatek/ygps/SatelliteSkyView;->setDataProvider(Lcom/mediatek/ygps/SatelliteDataProvider;)V

    .line 415
    const v5, 0x7f070036

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ygps/SatelliteSignalView;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

    .line 416
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

    invoke-virtual {v5, p0}, Lcom/mediatek/ygps/SatelliteSignalView;->setDataProvider(Lcom/mediatek/ygps/SatelliteDataProvider;)V

    .line 417
    const v5, 0x7f070021

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;

    .line 418
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnColdStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    const v5, 0x7f070020

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;

    .line 420
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnWarmStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v5, 0x7f07001f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;

    .line 422
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    const v5, 0x7f070022

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;

    .line 424
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnFullStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;

    .line 426
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnReStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 427
    const v5, 0x7f070023

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    .line 428
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    const v5, 0x7f070025

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    .line 430
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mTvNmeaLog:Landroid/widget/TextView;

    .line 432
    const v5, 0x7f070027

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mTVNMEAHint:Landroid/widget/TextView;

    .line 433
    const v5, 0x7f070029

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;

    .line 434
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v5, 0x7f07002a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    .line 436
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEAStop:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 438
    const v5, 0x7f07002d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    .line 439
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    const v5, 0x7f07002e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    .line 441
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 442
    const v5, 0x7f07002f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    .line 443
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 444
    const v5, 0x7f070030

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    .line 445
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const v5, 0x7f07002b

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;

    .line 447
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    const v5, 0x7f07002c

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;

    .line 449
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    const v5, 0x7f070006

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    .line 451
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const v5, 0x7f070007

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    .line 453
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 455
    const v5, 0x7f070001

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    .line 456
    const v5, 0x7f070005

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    .line 457
    const v5, 0x7f070002

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    .line 458
    const v5, 0x7f070031

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    .line 459
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    const v5, 0x7f070032

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsJamming:Landroid/widget/Button;

    .line 461
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsJamming:Landroid/widget/Button;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const v5, 0x7f070033

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    .line 463
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    const v6, 0x7f05004b

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtGpsJammingTimes:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 466
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 467
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaSave:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 468
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaClear:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 469
    const v5, 0x7f070004

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestSpinner:Landroid/widget/Spinner;

    .line 470
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 472
    .local v0, TestAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 474
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mType:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 475
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mType:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 477
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 478
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestSpinner:Landroid/widget/Spinner;

    new-instance v6, Lcom/mediatek/ygps/YgpsActivity$1;

    invoke-direct {v6, p0}, Lcom/mediatek/ygps/YgpsActivity$1;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 491
    const-string v5, "debug.dbg2socket"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 493
    .local v4, ss:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 494
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    const v6, 0x7f050050

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 498
    :goto_1
    const-string v5, "debug.nmea2socket"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 500
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 501
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    const v6, 0x7f050052

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 505
    :goto_2
    const-string v5, "debug.dbg2file"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 507
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 508
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    const v6, 0x7f050054

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 512
    :goto_3
    const-string v5, "debug.debug_nmea"

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 515
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    const v6, 0x7f050056

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 519
    :goto_4
    const-string v5, "BEE_enabled"

    const-string v6, "1"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 521
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 522
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    const v6, 0x7f050058

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 526
    :goto_5
    const-string v5, "SUPPLOG_enabled"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 528
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 529
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    const v6, 0x7f050079

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 533
    :goto_6
    const/4 v1, 0x0

    .line 534
    .local v1, bClearHwTest:Z
    const-string v5, "first.time"

    invoke-virtual {p0, v5, v8}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 536
    .local v3, preferences:Landroid/content/SharedPreferences;
    const-string v5, "first.time"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    if-eqz v4, :cond_1

    .line 538
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 539
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "first.time"

    const-string v7, "2"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 545
    :cond_1
    :goto_7
    const-string v5, "test.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->getMnlProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 547
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 548
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 559
    :goto_8
    return-void

    .line 496
    .end local v1           #bClearHwTest:Z
    .end local v3           #preferences:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNMEADbgDbg:Landroid/widget/Button;

    const v6, 0x7f050051

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 503
    :cond_3
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmea:Landroid/widget/Button;

    const v6, 0x7f050053

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 510
    :cond_4
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgDbgFile:Landroid/widget/Button;

    const v6, 0x7f050055

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 517
    :cond_5
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnNmeaDbgNmeaDdms:Landroid/widget/Button;

    const v6, 0x7f050057

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 524
    :cond_6
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnHotStill:Landroid/widget/Button;

    const v6, 0x7f050059

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 531
    :cond_7
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnSuplLog:Landroid/widget/Button;

    const v6, 0x7f05007a

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 541
    .restart local v1       #bClearHwTest:Z
    .restart local v3       #preferences:Landroid/content/SharedPreferences;
    :cond_8
    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 542
    const/4 v1, 0x1

    goto :goto_7

    .line 550
    :cond_9
    if-eqz v1, :cond_a

    .line 551
    const-string v5, "test.mode"

    const-string v6, "0"

    invoke-static {v5, v6}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8

    .line 555
    :cond_a
    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsHwTest:Landroid/widget/Button;

    const v6, 0x7f05005b

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_8
.end method

.method private setStartButtonEnable(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 1265
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    const/16 v2, 0x410

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1267
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1268
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1269
    return-void

    .line 1267
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTestParam()V
    .locals 3

    .prologue
    .line 1253
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    const/16 v2, 0x442

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1255
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1256
    return-void
.end method

.method private setViewToStartState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 822
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 823
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 824
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 825
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 827
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 828
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 832
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 833
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 837
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 838
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 840
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 841
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->clearLayout()V

    .line 842
    return-void
.end method

.method private setViewToStopState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 852
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 853
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 855
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 856
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 860
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    .line 863
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 864
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 865
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 868
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 869
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 870
    return-void
.end method

.method private showExceedPeriod(I)V
    .locals 3
    .parameter "period"

    .prologue
    .line 1304
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    const/16 v2, 0x438

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1306
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1307
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1308
    return-void
.end method

.method private showVersion()V
    .locals 6

    .prologue
    .line 1547
    const-string v4, "YGPS/Activity"

    const-string v5, "Enter show version"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    iget-boolean v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsExit:Z

    if-eqz v4, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1551
    :cond_1
    const v4, 0x7f07001b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1554
    .local v1, tvChipVersion:Landroid/widget/TextView;
    const v4, 0x7f050070

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/ygps/GpsMnlSetting;->getChipVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1561
    const-string v4, "PMTK605"

    invoke-direct {p0, v4}, Lcom/mediatek/ygps/YgpsActivity;->sendCommand(Ljava/lang/String;)V

    .line 1564
    const v4, 0x7f07001d

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1565
    .local v3, tvClockType:Landroid/widget/TextView;
    const v4, 0x7f07001e

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1566
    .local v2, tvClockBuffer:Landroid/widget/TextView;
    const-string v4, "unknown"

    invoke-static {v4}, Lcom/mediatek/ygps/GpsMnlSetting;->getClockProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1567
    .local v0, ss:Ljava/lang/String;
    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "20"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1568
    :cond_2
    const-string v4, "TCXO"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1569
    const-string v4, "2"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1570
    :cond_3
    const-string v4, "10"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1571
    const-string v4, "TCXO"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    const-string v4, "1"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1573
    :cond_4
    const-string v4, "30"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1574
    const-string v4, "TCXO"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    const-string v4, "3"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1576
    :cond_5
    const-string v4, "01"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "21"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1577
    :cond_6
    const-string v4, "Co-clock"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1578
    const-string v4, "2"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1579
    :cond_7
    const-string v4, "11"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1580
    const-string v4, "Co-clock"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    const-string v4, "1"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1582
    :cond_8
    const-string v4, "31"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1583
    const-string v4, "Co-clock"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    const-string v4, "3"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1585
    :cond_9
    const-string v4, "ff"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1586
    const-string v4, "error"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1587
    const-string v4, "error"

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private startGPSAutoTest()V
    .locals 6

    .prologue
    const v5, 0x7f05004e

    const/16 v4, 0x3e7

    const/4 v3, 0x1

    .line 877
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 878
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 879
    const v2, 0x7f05004d

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 881
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 950
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestTimes:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 886
    .local v1, nTimes:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v4, :cond_2

    .line 888
    :cond_1
    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 891
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 894
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTotalTimes:I

    .line 899
    .end local v1           #nTimes:Ljava/lang/Integer;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    if-eqz v2, :cond_7

    .line 900
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 901
    const v2, 0x7f05004f

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 904
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 907
    :cond_4
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mEtTestInterval:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 909
    .local v0, nInterval:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v4, :cond_6

    .line 911
    :cond_5
    invoke-static {p0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 914
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 917
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    .line 922
    .end local v0           #nInterval:Ljava/lang/Integer;
    :cond_7
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    if-eqz v2, :cond_8

    .line 923
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mCbNeed3DFix:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsNeed3DFix:Z

    .line 925
    :cond_8
    iput-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    .line 926
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->resetTestView()V

    .line 930
    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z

    if-nez v2, :cond_b

    .line 931
    iput-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mStartPressedHandling:Z

    .line 932
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->setViewToStartState()V

    .line 934
    new-instance v2, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;-><init>(Lcom/mediatek/ygps/YgpsActivity;Lcom/mediatek/ygps/YgpsActivity$1;)V

    iput-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestThread:Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

    .line 935
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestThread:Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

    if-eqz v2, :cond_a

    .line 936
    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsNeed3DFix:Z

    if-eqz v2, :cond_9

    .line 937
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->createFileForSavingAutoTestLog()Z

    .line 939
    :cond_9
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mAutoTestThread:Lcom/mediatek/ygps/YgpsActivity$AutoTestThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 941
    :cond_a
    const-string v2, "YGPS/Activity"

    const-string v3, "new matThread failed"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 945
    :cond_b
    const-string v2, "YGPS/Activity"

    const-string v3, "start button has been pushed."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->refreshDrawableState()V

    .line 947
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mBtnGpsTestStart:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private stopGPSAutoTest()V
    .locals 0

    .prologue
    .line 956
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->resetTestParam()V

    .line 960
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->setTestParam()V

    .line 961
    return-void
.end method

.method private toString([FI)Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "count"

    .prologue
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 303
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString([II)Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "count"

    .prologue
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 283
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private wait3DFix()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, bExceed:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1172
    .local v1, beginTime:Ljava/lang/Long;
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v4, :cond_1

    .line 1173
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    div-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1176
    .local v3, nowTime:Ljava/lang/Long;
    iget-boolean v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    if-eqz v4, :cond_2

    .line 1184
    .end local v3           #nowTime:Ljava/lang/Long;
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1186
    const-string v4, "YGPS/Activity"

    const-string v5, "wait3DFix , Exceed period"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :goto_1
    return-void

    .line 1178
    .restart local v3       #nowTime:Ljava/lang/Long;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e7

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1179
    const/4 v0, 0x1

    .line 1180
    const/16 v4, 0x3e7

    invoke-direct {p0, v4}, Lcom/mediatek/ygps/YgpsActivity;->showExceedPeriod(I)V

    goto :goto_0

    .line 1189
    .end local v3           #nowTime:Ljava/lang/Long;
    :cond_3
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1190
    :catch_0
    move-exception v2

    .line 1191
    .local v2, e:Ljava/lang/InterruptedException;
    const-string v4, "YGPS/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wait3DFix interrupted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private waitAutoTestInterval()V
    .locals 5

    .prologue
    .line 1152
    :try_start_0
    iget v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    if-eqz v2, :cond_2

    .line 1153
    iget v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mTestInterval:I

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-eqz v2, :cond_0

    .line 1154
    invoke-direct {p0, v1}, Lcom/mediatek/ygps/YgpsActivity;->setCountDown(I)V

    .line 1155
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1153
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1158
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsTestRunning:Z

    if-nez v2, :cond_1

    .line 1159
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/mediatek/ygps/YgpsActivity;->setCountDown(I)V

    .line 1167
    .end local v1           #i:I
    :cond_1
    :goto_1
    return-void

    .line 1162
    :cond_2
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "YGPS/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waitAutoTestInterval InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getSatelliteStatus([I[F[F[FII[I)I
    .locals 4
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"

    .prologue
    .line 388
    monitor-enter p0

    .line 389
    if-eqz p1, :cond_0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 392
    :cond_0
    if-eqz p2, :cond_1

    .line 393
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    :cond_1
    if-eqz p4, :cond_2

    .line 396
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mAzimuth:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {v0, v1, p4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    :cond_2
    if-eqz p3, :cond_3

    .line 399
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mElevation:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    :cond_3
    if-eqz p7, :cond_4

    .line 402
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v0, v1, p7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    :cond_4
    iget v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    monitor-exit p0

    return v0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f050033

    const v4, 0x7f050032

    const v3, 0x7f050031

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1337
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter onCreate  function of Main Activity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 1339
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1351
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v8

    .line 1352
    .local v8, tabHost:Landroid/widget/TabHost;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030005

    invoke-virtual {v8}, Landroid/widget/TabHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1355
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1360
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1365
    const v0, 0x7f050034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f050034

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const v1, 0x7f070026

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1370
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    const/high16 v1, 0x7f07

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 1374
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$3;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    invoke-virtual {v8, v0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 1379
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->setLayout()V

    .line 1383
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    .line 1384
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->acquireScreenWakeLock(Landroid/content/Context;)V

    .line 1385
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 1386
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mNmeaListener:Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

    .line 1388
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    .line 1389
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 1390
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1392
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 1393
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mNmeaListener:Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 1394
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1396
    const v0, 0x7f050069

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gps"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    .line 1404
    :goto_0
    const v0, 0x7f050070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1415
    :goto_1
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1416
    const-string v0, "RunInBG"

    invoke-virtual {p0, v0, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1418
    .local v7, preferences:Landroid/content/SharedPreferences;
    const-string v0, "RunInBG"

    invoke-interface {v7, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    iput-boolean v10, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    .line 1423
    :goto_2
    iput-boolean v10, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowFirstFixLocate:Z

    .line 1424
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyFilter:Landroid/content/IntentFilter;

    .line 1425
    new-instance v0, Lcom/mediatek/ygps/YgpsActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$4;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 1433
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1434
    const-string v0, "YGPS/Activity"

    const-string v1, "registerReceiver powerKeyReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    new-instance v0, Lcom/mediatek/ygps/ClientSocket;

    invoke-direct {v0, p0}, Lcom/mediatek/ygps/ClientSocket;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSocketClient:Lcom/mediatek/ygps/ClientSocket;

    .line 1436
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1437
    return-void

    .line 1400
    .end local v7           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    const v0, 0x7f05006a

    const/4 v1, 0x1

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gps"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1408
    :catch_0
    move-exception v6

    .line 1409
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "security exception"

    invoke-static {p0, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1411
    const-string v0, "YGPS/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1406
    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_1
    :try_start_2
    const-string v0, "YGPS/Activity"

    const-string v1, "new mLocationManager failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1412
    :catch_1
    move-exception v6

    .line 1413
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "YGPS/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1421
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    iput-boolean v9, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, dialog:Landroid/app/ProgressDialog;
    if-nez p1, :cond_0

    .line 1505
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1506
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f050072

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1507
    const v1, 0x7f050073

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1508
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1509
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1510
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1516
    :goto_0
    return-object v0

    .line 1512
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1513
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f050074

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1514
    const v1, 0x7f050075

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1441
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 1444
    .local v1, supRetVal:Z
    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    if-eqz v2, :cond_0

    .line 1445
    const v2, 0x7f050007

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1450
    :goto_0
    const-string v2, "RunInBG"

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1452
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "RunInBG"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1453
    const v2, 0x7f050067

    invoke-interface {p1, v3, v5, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1457
    :goto_1
    return v1

    .line 1447
    .end local v0           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    const v2, 0x7f050006

    invoke-interface {p1, v3, v4, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1455
    .restart local v0       #preferences:Landroid/content/SharedPreferences;
    :cond_1
    const v2, 0x7f050068

    invoke-interface {p1, v3, v5, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1654
    const-string v2, "YGPS/Activity"

    const-string v3, "enter onDestroy function"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1656
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 1657
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mNmeaListener:Lcom/mediatek/ygps/YgpsActivity$NmeaListenClass;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 1658
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1660
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1661
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsExit:Z

    .line 1662
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputNMEALog:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_0

    .line 1663
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingNMEALog()V

    .line 1665
    :cond_0
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mOutputTestLog:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_1

    .line 1666
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->finishSavingAutoTestLog()V

    .line 1671
    :cond_1
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1672
    const-string v2, "YGPS/Activity"

    const-string v3, "unregisterReceiver powerKeyReceiver"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mSocketClient:Lcom/mediatek/ygps/ClientSocket;

    invoke-virtual {v2}, Lcom/mediatek/ygps/ClientSocket;->endClient()V

    .line 1674
    const-string v2, "first.time"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1676
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "first.time"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1677
    .local v1, ss:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1678
    const-string v2, "test.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Lcom/mediatek/ygps/GpsMnlSetting;->setMnlProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    :cond_2
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v2}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->releaseCpuWakeLock()V

    .line 1682
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1683
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1462
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1498
    :goto_0
    return v1

    .line 1464
    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mediatek/ygps/CopyrightInfo;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1468
    :pswitch_1
    iget-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    if-eqz v3, :cond_1

    .line 1469
    iput-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    .line 1470
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    if-eqz v2, :cond_0

    .line 1471
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 1473
    :cond_0
    const v2, 0x7f050006

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1475
    :cond_1
    iput-boolean v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mShowLoc:Z

    .line 1476
    const v2, 0x7f050007

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1481
    :pswitch_2
    const-string v3, "RunInBG"

    invoke-virtual {p0, v3, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1483
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "RunInBG"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1484
    const v3, 0x7f050068

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1485
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "RunInBG"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1487
    const-string v2, "EM/YGPS_BG"

    const-string v3, "now should *not* be in bg."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1489
    :cond_2
    const v2, 0x7f050067

    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1490
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "RunInBG"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1492
    const-string v2, "EM/YGPS_BG"

    const-string v3, "now should be in bg."

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1521
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1522
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter onPause function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "res"

    .prologue
    .line 2266
    const-string v1, "YGPS/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2280
    :cond_0
    :goto_0
    return-void

    .line 2270
    :cond_1
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2271
    .local v0, m:Landroid/os/Message;
    const-string v1, "$PMTK705"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2272
    const/16 v1, 0x44e

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2278
    :goto_1
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2279
    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2273
    :cond_2
    const-string v1, "PMTK001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2274
    const/16 v1, 0x44d

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 2276
    :cond_3
    const/16 v1, 0x44f

    iput v1, v0, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1613
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter onRestart function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const-string v0, "EM/YGPS_BG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbRunInBG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    if-nez v0, :cond_0

    .line 1616
    iput-boolean v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mFirstFix:Z

    .line 1617
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1619
    const v0, 0x7f050069

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "gps"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    .line 1627
    :goto_0
    const v0, 0x7f050070

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;

    .line 1628
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1630
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 1643
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    if-eqz v0, :cond_2

    .line 1644
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->acquireScreenWakeLock(Landroid/content/Context;)V

    .line 1645
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 1649
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 1650
    return-void

    .line 1623
    :cond_1
    const v0, 0x7f05006a

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "gps"

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    goto :goto_0

    .line 1647
    :cond_2
    const-string v0, "YGPS/Activity"

    const-string v1, "mYGPSWakeLock is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1535
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 1536
    const-string v2, "YGPS/Activity"

    const-string v3, "Enter onResume function"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const v2, 0x7f07000d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1538
    .local v0, tvProvider:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1539
    const v2, 0x7f07000e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1540
    .local v1, tvStatus:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1541
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1593
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 1594
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter onStop function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    const-string v0, "EM/YGPS_BG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mbRunInBG "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-boolean v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mIsRunInBg:Z

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1598
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 1599
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->releaseCpuWakeLock()V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mYgpsWakeLock:Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;

    invoke-virtual {v0}, Lcom/mediatek/ygps/YgpsActivity$YgpsWakeLock;->releaseScreenWakeLock()V

    .line 1602
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 1603
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrompt:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 1606
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mStatusPrompt:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1609
    :cond_2
    return-void
.end method

.method public setSatelliteStatus(I[I[F[F[FII[I)V
    .locals 4
    .parameter "svCount"
    .parameter "prns"
    .parameter "snrs"
    .parameter "elevations"
    .parameter "azimuths"
    .parameter "ephemerisMask"
    .parameter "almanacMask"
    .parameter "usedInFixMask"

    .prologue
    .line 255
    const-string v0, "YGPS/Activity"

    const-string v1, "Enter setSatelliteStatus function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    monitor-enter p0

    .line 257
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->emptyArray()V

    .line 258
    iput p1, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    .line 259
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mElevation:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {p4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mAzimuth:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-static {p5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 263
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {p8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 267
    iget-object v0, p0, Lcom/mediatek/ygps/YgpsActivity;->mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setSatelliteStatus(Ljava/lang/Iterable;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, list:Ljava/lang/Iterable;,"Ljava/lang/Iterable<Landroid/location/GpsSatellite;>;"
    const-string v4, "YGPS/Activity"

    const-string v5, "Enter setSatelliteStatus function"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-nez p1, :cond_0

    .line 335
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->emptyArray()V

    .line 355
    :goto_0
    const-string v4, "YGPS/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Satellites:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    iget v7, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-direct {p0, v6, v7}, Lcom/mediatek/ygps/YgpsActivity;->toString([II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    iget v7, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    invoke-direct {p0, v6, v7}, Lcom/mediatek/ygps/YgpsActivity;->toString([FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 359
    const-string v4, "YGPS/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Satellites Masks "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 337
    .end local v0           #i:I
    :cond_0
    monitor-enter p0

    .line 338
    :try_start_0
    invoke-direct {p0}, Lcom/mediatek/ygps/YgpsActivity;->emptyArray()V

    .line 339
    const/4 v2, 0x0

    .line 340
    .local v2, index:I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 341
    .local v3, sate:Landroid/location/GpsSatellite;
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    aput v5, v4, v2

    .line 342
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mSnrs:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v5

    aput v5, v4, v2

    .line 343
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mElevation:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v5

    aput v5, v4, v2

    .line 344
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mAzimuth:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v5

    aput v5, v4, v2

    .line 345
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 346
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mPrns:[I

    aget v4, v4, v2

    add-int/lit8 v0, v4, -0x1

    .line 347
    .restart local v0       #i:I
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mUsedInFixMask:[I

    div-int/lit8 v5, v0, 0x20

    aget v6, v4, v5

    const/4 v7, 0x1

    rem-int/lit8 v8, v0, 0x20

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 350
    .end local v0           #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 352
    .end local v3           #sate:Landroid/location/GpsSatellite;
    :cond_2
    iput v2, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatellites:I

    .line 353
    monitor-exit p0

    goto/16 :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #index:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 362
    .restart local v0       #i:I
    :cond_3
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mSatelliteView:Lcom/mediatek/ygps/SatelliteSkyView;

    invoke-virtual {v4}, Landroid/view/View;->postInvalidate()V

    .line 363
    iget-object v4, p0, Lcom/mediatek/ygps/YgpsActivity;->mSignalView:Lcom/mediatek/ygps/SatelliteSignalView;

    invoke-virtual {v4}, Landroid/view/View;->postInvalidate()V

    .line 364
    return-void
.end method
