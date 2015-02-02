.class public Lcom/mediatek/engineermode/cwtest/CWTest;
.super Landroid/app/Activity;
.source "CWTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;
    }
.end annotation


# static fields
.field private static final COMMAND_END:Ljava/lang/String; = "*"

.field private static final COMMAND_START:Ljava/lang/String; = "$"

.field private static final DEFAULT_MNL_PROP:Ljava/lang/String; = "0001100"

.field private static final DIALOG_GPS_ERROR:I = 0x0

.field private static final FIRST_TIME:Ljava/lang/String; = "first.time"

.field private static final HANDLE_START_TEST:I = 0x3e9

.field private static final HANDLE_STOP_TEST:I = 0x3ea

.field private static final HANDLE_UPDATE_RESULT:I = 0x3eb

.field private static final INPUT_VALUE_MAX:I = 0x3e7

.field private static final INPUT_VALUE_MIN:I = 0x0

.field private static final INTENT_ACTION_SCREEN_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final LOCATION_MAX_LENGTH:I = 0xc

.field private static final MNL_PROP_NAME:Ljava/lang/String; = "persist.radio.mnl.prop"

.field private static final ONE_SECOND:I = 0xbb8

.field private static final RESPONSE_ARRAY_LENGTH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CWTest/Activity"

.field private static final TAG_BG:Ljava/lang/String; = "CWTest/BG"


# instance fields
.field public final mBtnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnStart:Landroid/widget/Button;

.field private mBtnStop:Landroid/widget/Button;

.field private mCnrTv:Landroid/widget/TextView;

.field private mCurrentTimes:I

.field private mCurrentTimesTv:Landroid/widget/TextView;

.field private mDebugFile:Z

.field private mDriftTv:Landroid/widget/TextView;

.field private mEtInterval:Landroid/widget/EditText;

.field private mEtTimes:Landroid/widget/EditText;

.field public final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mLastLocation:Landroid/location/Location;

.field public final mLocListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mMaxCnr:I

.field private mMaxCnrTv:Landroid/widget/TextView;

.field private mMinCnr:I

.field private mMinCnrTv:Landroid/widget/TextView;

.field private mPowerKeyFilter:Landroid/content/IntentFilter;

.field private mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

.field private mProvider:Ljava/lang/String;

.field private mShowLoc:Z

.field private mSocketClient:Lcom/mediatek/engineermode/cwtest/ClientSocket;

.field private mStartNmeaRecord:Z

.field private mStatus:Ljava/lang/String;

.field private mTotalTimes:I

.field private mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mShowLoc:Z

    .line 110
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mStartNmeaRecord:Z

    .line 112
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mSocketClient:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    .line 114
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    .line 115
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    .line 116
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLastLocation:Landroid/location/Location;

    .line 117
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    .line 118
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    .line 120
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;

    .line 121
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtTimes:Landroid/widget/EditText;

    .line 124
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtInterval:Landroid/widget/EditText;

    .line 126
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;

    .line 128
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;

    .line 129
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;

    .line 131
    iput v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I

    .line 132
    iput v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I

    .line 134
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mProvider:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;

    .line 139
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyFilter:Landroid/content/IntentFilter;

    .line 140
    iput-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    iput v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I

    .line 144
    iput v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mInterval:I

    .line 145
    iput v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I

    .line 147
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDebugFile:Z

    .line 358
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$2;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocListener:Landroid/location/LocationListener;

    .line 381
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$3;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mGpsListener:Landroid/location/GpsStatus$Listener;

    .line 434
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$4;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnClickListener:Landroid/view/View$OnClickListener;

    .line 548
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$5;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$5;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    .line 642
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/cwtest/CWTest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/engineermode/cwtest/CWTest;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I

    return p1
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/cwtest/CWTest;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/engineermode/cwtest/CWTest;->startCWTest()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/cwtest/CWTest;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/cwtest/CWTest;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/engineermode/cwtest/CWTest;->stopCWTest()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I

    return v0
.end method

.method static synthetic access$608(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/cwtest/CWTest;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/cwtest/CWTest;->sendCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/cwtest/CWTest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mInterval:I

    return v0
.end method

.method private getDebug2FileProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "defaultValue"

    .prologue
    .line 190
    move-object v3, p1

    .line 191
    .local v3, result:Ljava/lang/String;
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, prop:Ljava/lang/String;
    const/4 v1, 0x2

    .line 194
    .local v1, index:I
    const-string v4, "CWTest/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnlProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 196
    :cond_0
    move-object v3, p1

    .line 201
    :goto_0
    const-string v4, "CWTest/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMnlProp result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-object v3

    .line 198
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 199
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private sendCommand(Ljava/lang/String;)V
    .locals 7
    .parameter "command"

    .prologue
    const/4 v6, -0x1

    .line 493
    const-string v3, "CWTest/Activity"

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

    .line 495
    const-string v3, "$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 496
    .local v1, index1:I
    const-string v3, "*"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 497
    .local v2, index2:I
    move-object v0, p1

    .line 498
    .local v0, com:Ljava/lang/String;
    if-eq v1, v6, :cond_1

    if-eq v2, v6, :cond_1

    .line 500
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 506
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mSocketClient:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->sendCommand(Ljava/lang/String;)V

    .line 507
    return-void

    .line 501
    :cond_1
    if-eq v1, v6, :cond_2

    .line 502
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 503
    :cond_2
    if-eq v2, v6, :cond_0

    .line 504
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setDebug2FileMnlProp(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    .line 206
    const-string v4, "CWTest/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMnlProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, prop:Ljava/lang/String;
    const/4 v1, 0x2

    .line 211
    .local v1, index:I
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 212
    :cond_0
    const-string v3, "0001100"

    .line 214
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 215
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 216
    .local v0, charArray:[C
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v0, v1

    .line 217
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, newProp:Ljava/lang/String;
    const-string v4, "persist.radio.mnl.prop"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "CWTest/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setMnlProp newProp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v0           #charArray:[C
    .end local v2           #newProp:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private startCWTest()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtTimes:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I

    .line 455
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtInterval:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mInterval:I

    .line 456
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimes:I

    .line 457
    iget v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mTotalTimes:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mInterval:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 458
    :cond_0
    const-string v1, "please input right number, times > 0 and interval >=3s"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 477
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnr:I

    .line 468
    const/4 v1, 0x0

    iput v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnr:I

    .line 469
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 470
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "invalid input value"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stopCWTest()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 482
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 484
    return-void
.end method

.method private toString([FI)Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "count"

    .prologue
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 181
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private toString([II)Ljava/lang/String;
    .locals 3
    .parameter "array"
    .parameter "count"

    .prologue
    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .local v1, strBuilder:Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 161
    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 225
    const-string v0, "CWTest/Activity"

    const-string v1, "Enter onCreate  function of Main Activity"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 227
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 229
    const v0, 0x7f0b00fa

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    .line 230
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    .line 231
    const v0, 0x7f0b00ff

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;

    .line 232
    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;

    .line 233
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCnrTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDriftTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v0, 0x7f0b00f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtTimes:Landroid/widget/EditText;

    .line 237
    const v0, 0x7f0b00f9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mEtInterval:Landroid/widget/EditText;

    .line 239
    const v0, 0x7f0b00fd

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mCurrentTimesTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;

    .line 243
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMaxCnrTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mMinCnrTv:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStart:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mBtnStop:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 254
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->getDebug2FileProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 256
    .local v7, ss:Ljava/lang/String;
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iput-boolean v2, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDebugFile:Z

    .line 258
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->setDebug2FileMnlProp(Ljava/lang/String;)V

    .line 263
    :goto_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 266
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    .line 267
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->acquireScreenWakeLock(Landroid/content/Context;)V

    .line 270
    :try_start_0
    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    .line 271
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 274
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 276
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "CWTest/Activity"

    const-string v1, "provider enabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyFilter:Landroid/content/IntentFilter;

    .line 296
    new-instance v0, Lcom/mediatek/engineermode/cwtest/CWTest$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$1;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    const-string v0, "CWTest/Activity"

    const-string v1, "registerReceiver powerKeyReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Lcom/mediatek/engineermode/cwtest/ClientSocket;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/cwtest/ClientSocket;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mSocketClient:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    .line 307
    return-void

    .line 260
    :cond_0
    iput-boolean v8, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDebugFile:Z

    goto :goto_0

    .line 281
    :cond_1
    :try_start_1
    const-string v0, "CWTest/Activity"

    const-string v1, "provider disabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 287
    :catch_0
    move-exception v6

    .line 288
    .local v6, e:Ljava/lang/SecurityException;
    const-string v0, "security exception"

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 290
    const-string v0, "CWTest/Activity"

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

    goto :goto_1

    .line 285
    .end local v6           #e:Ljava/lang/SecurityException;
    :cond_2
    :try_start_2
    const-string v0, "CWTest/Activity"

    const-string v1, "new mLocationManager failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 291
    :catch_1
    move-exception v6

    .line 292
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "CWTest/Activity"

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
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 620
    const/4 v1, 0x0

    .line 621
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 622
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 637
    const-string v2, "CWTest/Activity"

    const-string v3, "error dialog ID"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return-object v1

    .line 624
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 625
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080646

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 627
    const v2, 0x7f080647

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 628
    const v2, 0x7f0801df

    new-instance v3, Lcom/mediatek/engineermode/cwtest/CWTest$6;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$6;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 635
    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 344
    const-string v0, "CWTest/Activity"

    const-string v1, "enter onDestroy function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 346
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mGpsListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 348
    iget-boolean v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mDebugFile:Z

    if-nez v0, :cond_0

    .line 349
    const-string v0, "0"

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/cwtest/CWTest;->setDebug2FileMnlProp(Ljava/lang/String;)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mPowerKeyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 353
    const-string v0, "CWTest/Activity"

    const-string v1, "unregisterReceiver powerKeyReceiver"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mSocketClient:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->endClient()V

    .line 355
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 356
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 311
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 312
    const-string v0, "CWTest/Activity"

    const-string v1, "Enter onPause function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 8
    .parameter "ss"

    .prologue
    .line 517
    const-string v5, "CWTest/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter getResponse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    const-string v5, "PMTK817"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 525
    const-string v5, "$PMTK817"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 527
    .local v4, startIndex:I
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, response:Ljava/lang/String;
    const-string v5, "CWTest/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "start string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const-string v5, "*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 531
    .local v0, endIndex:I
    add-int/lit8 v0, v0, 0x3

    .line 533
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, res:Ljava/lang/String;
    const-string v5, "CWTest/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "last string "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const-string v5, "$PMTK817"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 538
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3eb

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 539
    .local v1, m:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 542
    .end local v1           #m:Landroid/os/Message;
    :cond_2
    const-string v5, "CWTest/Activity"

    const-string v6, "result is not proper"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 332
    const-string v0, "CWTest/Activity"

    const-string v1, "Enter onRestart function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    invoke-virtual {v0, p0}, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->acquireScreenWakeLock(Landroid/content/Context;)V

    .line 339
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 340
    return-void

    .line 337
    :cond_0
    const-string v0, "CWTest/Activity"

    const-string v1, "mYGPSWakeLock is null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 318
    const-string v0, "CWTest/Activity"

    const-string v1, "Enter onResume function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 324
    const-string v0, "CWTest/Activity"

    const-string v1, "Enter onStop function"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/mediatek/engineermode/cwtest/CWTest;->mYgpsWakeLock:Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;

    invoke-virtual {v0}, Lcom/mediatek/engineermode/cwtest/CWTest$YgpsWakeLock;->release()V

    .line 328
    return-void
.end method
