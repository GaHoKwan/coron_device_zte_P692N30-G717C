.class public Lcom/mediatek/lbs/em/LbsGps;
.super Landroid/app/Activity;
.source "LbsGps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em/LbsGps$GpsTimer;,
        Lcom/mediatek/lbs/em/LbsGps$StressTest;
    }
.end annotation


# static fields
.field private static final STRESS_DELETE_DATA:I = 0x5

.field private static final STRESS_END:I = 0x1

.field private static final STRESS_LOOP_UPDATE:I = 0x2

.field private static final STRESS_START_GPS:I = 0x3

.field private static final STRESS_STOP_GPS:I = 0x4

.field private static final TIMER_UPDATE:I


# instance fields
.field private mButtonChangeRefLatLng:Landroid/widget/Button;

.field private mButtonDelete:Landroid/widget/Button;

.field private mButtonGps:Landroid/widget/ToggleButton;

.field private mButtonStress:Landroid/widget/ToggleButton;

.field private mCheckBoxLogNmea:Landroid/widget/CheckBox;

.field private mCheckBoxLogToSdcard:Landroid/widget/CheckBox;

.field private mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;

.field private mDelay1:I

.field private mDelay2:I

.field private mDelay3:I

.field private mDelay4:I

.field private mDistance:F

.field private mEditTextDelay1:Landroid/widget/EditText;

.field private mEditTextDelay2:Landroid/widget/EditText;

.field private mEditTextDelay3:Landroid/widget/EditText;

.field private mEditTextDelay4:Landroid/widget/EditText;

.field private mEditTextNumOfLoop:Landroid/widget/EditText;

.field private mFirstDistance:F

.field private mFirstLat:D

.field private mFirstLng:D

.field private mFixCount:I

.field private mGotFix:Z

.field private mHandler:Landroid/os/Handler;

.field private mLocationListener:Landroid/location/LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLogToSdcard:Z

.field private mNmeaCount:I

.field private mNmeaFileName:Ljava/lang/String;

.field private mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mNumOfLoop:I

.field private mRadioButtonCold:Landroid/widget/RadioButton;

.field private mRadioButtonFull:Landroid/widget/RadioButton;

.field private mRadioButtonHot:Landroid/widget/RadioButton;

.field private mRadioButtonWarm:Landroid/widget/RadioButton;

.field private mRefLat:D

.field private mRefLng:D

.field private mSatCount:I

.field private mSatNum:I

.field private mStatusListener:Landroid/location/GpsStatus$Listener;

.field private mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

.field private mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

.field private mTTFF:I

.field private mTextView5:Landroid/widget/TextView;

.field private mTextViewLocation:Landroid/widget/TextView;

.field private mTextViewLoop:Landroid/widget/TextView;

.field private mTextViewNmea:Landroid/widget/TextView;

.field private mTextViewRefLatLng:Landroid/widget/TextView;

.field private mTextViewSatellite:Landroid/widget/TextView;

.field private mTextViewTimer:Landroid/widget/TextView;

.field private mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/16 v0, 0x64

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNumOfLoop:I

    .line 50
    const/16 v0, 0x14

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay1:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay2:I

    .line 52
    const/16 v0, 0x258

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay3:I

    .line 53
    iput v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay4:I

    .line 54
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$StressTest;

    iget v2, p0, Lcom/mediatek/lbs/em/LbsGps;->mNumOfLoop:I

    iget v3, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay1:I

    iget v4, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay2:I

    iget v5, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay3:I

    iget v6, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay4:I

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/lbs/em/LbsGps$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsGps;IIIII)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    .line 57
    iput v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mFixCount:I

    .line 58
    iput v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I

    .line 59
    iput v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    .line 60
    iput v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTTFF:I

    .line 62
    iput-boolean v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mGotFix:Z

    .line 63
    iput-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLat:D

    .line 64
    iput-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLng:D

    .line 65
    iput v10, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstDistance:F

    .line 66
    iput v10, p0, Lcom/mediatek/lbs/em/LbsGps;->mDistance:F

    .line 67
    iput-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    .line 68
    iput-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    .line 69
    iput-boolean v7, p0, Lcom/mediatek/lbs/em/LbsGps;->mLogToSdcard:Z

    .line 71
    iput-object v11, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;

    .line 96
    iput-object v11, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    .line 97
    new-instance v0, Lcom/mediatek/lbs/em/UtilityStringList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em/UtilityStringList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    .line 98
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    .line 299
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$9;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$9;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 310
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$10;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$10;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStatusListener:Landroid/location/GpsStatus$Listener;

    .line 334
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$11;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$11;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationListener:Landroid/location/LocationListener;

    .line 583
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$12;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$12;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mHandler:Landroid/os/Handler;

    .line 631
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/lbs/em/LbsGps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->isGPSProviderEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/lbs/em/LbsGps;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/lbs/em/LbsGps;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/em/LbsGps;->getTimeString2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/lbs/em/LbsGps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLogToSdcard:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/lbs/em/LbsGps;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mLogToSdcard:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->startStressGps()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->stopStressGps()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/lbs/em/LbsGps;)Lcom/mediatek/lbs/em/UtilityStringList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewNmea:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    return v0
.end method

.method static synthetic access$1902(Lcom/mediatek/lbs/em/LbsGps;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    return p1
.end method

.method static synthetic access$1908(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/location/LocationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewSatellite:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/mediatek/lbs/em/LbsGps;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mFixCount:I

    return v0
.end method

.method static synthetic access$2408(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mFixCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mFixCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/lbs/em/LbsGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/mediatek/lbs/em/LbsGps;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/mediatek/lbs/em/LbsGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/mediatek/lbs/em/LbsGps;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/mediatek/lbs/em/LbsGps;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mDistance:F

    return v0
.end method

.method static synthetic access$2702(Lcom/mediatek/lbs/em/LbsGps;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mDistance:F

    return p1
.end method

.method static synthetic access$2800(Lcom/mediatek/lbs/em/LbsGps;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mGotFix:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/lbs/em/LbsGps;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mGotFix:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/lbs/em/LbsGps;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTTFF:I

    return v0
.end method

.method static synthetic access$2902(Lcom/mediatek/lbs/em/LbsGps;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mTTFF:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->startGps()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/lbs/em/LbsGps;)Lcom/mediatek/lbs/em/LbsGps$GpsTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/lbs/em/LbsGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLat:D

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/mediatek/lbs/em/LbsGps;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLat:D

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/mediatek/lbs/em/LbsGps;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLng:D

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/mediatek/lbs/em/LbsGps;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-wide p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLng:D

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/mediatek/lbs/em/LbsGps;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstDistance:F

    return v0
.end method

.method static synthetic access$3302(Lcom/mediatek/lbs/em/LbsGps;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstDistance:F

    return p1
.end method

.method static synthetic access$3400(Lcom/mediatek/lbs/em/LbsGps;)Lcom/mediatek/lbs/em/LbsGps$StressTest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewLocation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/mediatek/lbs/em/LbsGps;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/em/LbsGps;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->enableWidgetAfterStress()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->stopGps()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewLoop:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewRefLatLng:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->updateRefLatLng()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->startDeletingAidingData()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/lbs/em/LbsGps;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/em/LbsGps;->msleep(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/lbs/em/LbsGps;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->resetVarialbe()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/lbs/em/LbsGps;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/em/LbsGps;->openDialogLatlng(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mediatek/lbs/em/LbsGps;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private enableWidgetAfterStress()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 443
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->stopStress()V

    .line 445
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 446
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 447
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay1:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 448
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay2:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 449
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay4:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonDelete:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonHot:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 453
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonWarm:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonCold:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 455
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonFull:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 458
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 459
    return-void
.end method

.method private getTimeString2(J)Ljava/lang/String;
    .locals 6
    .parameter "milliseconds"

    .prologue
    .line 613
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 614
    .local v0, date:Ljava/util/Date;
    const-string v2, "%04d%02d%02d_%02d%02d%02d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit16 v5, v5, 0x76c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, str:Ljava/lang/String;
    return-object v1
.end method

.method private initWidget()V
    .locals 6

    .prologue
    .line 143
    const v0, 0x7f0500a1

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;

    .line 144
    const v0, 0x7f0500a2

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonDelete:Landroid/widget/Button;

    .line 145
    const v0, 0x7f0500a3

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonChangeRefLatLng:Landroid/widget/Button;

    .line 146
    const v0, 0x7f0500a7

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;

    .line 147
    const v0, 0x7f0500a8

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;

    .line 148
    const v0, 0x7f0500be

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;

    .line 149
    const v0, 0x7f0500a4

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;

    .line 150
    const v0, 0x7f0500aa

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonHot:Landroid/widget/RadioButton;

    .line 151
    const v0, 0x7f0500ab

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonWarm:Landroid/widget/RadioButton;

    .line 152
    const v0, 0x7f0500ac

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonCold:Landroid/widget/RadioButton;

    .line 153
    const v0, 0x7f0500ad

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonFull:Landroid/widget/RadioButton;

    .line 154
    const v0, 0x7f0500ae

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewRefLatLng:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f0500af

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewTimer:Landroid/widget/TextView;

    .line 156
    const v0, 0x7f0500b0

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewLocation:Landroid/widget/TextView;

    .line 157
    const v0, 0x7f0500b1

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewSatellite:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0500b2

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewNmea:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0500b3

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextView5:Landroid/widget/TextView;

    .line 160
    const v0, 0x7f0500a5

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewLoop:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f0500b5

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextNumOfLoop:Landroid/widget/EditText;

    .line 162
    const v0, 0x7f0500b7

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay1:Landroid/widget/EditText;

    .line 163
    const v0, 0x7f0500b9

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay2:Landroid/widget/EditText;

    .line 164
    const v0, 0x7f0500bb

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    .line 165
    const v0, 0x7f0500bd

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay4:Landroid/widget/EditText;

    .line 167
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextView5:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewNmea:Landroid/widget/TextView;

    const/high16 v1, 0x4130

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 170
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextNumOfLoop:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNumOfLoop:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay1:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay1:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay2:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay2:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay3:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay4:Landroid/widget/EditText;

    iget v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mDelay4:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewRefLatLng:Landroid/widget/TextView;

    const-string v1, "Reference Lat=%.06f Lng=%.06f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$3;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$3;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonDelete:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$4;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$4;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonChangeRefLatLng:Landroid/widget/Button;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$5;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$5;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogNmea:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$6;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$6;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxLogToSdcard:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$7;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$7;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/mediatek/lbs/em/LbsGps$8;

    invoke-direct {v1, p0}, Lcom/mediatek/lbs/em/LbsGps$8;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    return-void
.end method

.method private isGPSProviderEnable()Z
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GPS is disabled now, Do you want to enable it?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/mediatek/lbs/em/LbsGps$2;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsGps$2;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/mediatek/lbs/em/LbsGps$1;

    invoke-direct {v2, p0}, Lcom/mediatek/lbs/em/LbsGps$1;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 136
    const/4 v0, 0x0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 777
    const-string v0, "LocationEM"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    return-void
.end method

.method private msleep(J)V
    .locals 1
    .parameter "milliseconds"

    .prologue
    .line 660
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    :goto_0
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private openDialogLatlng(Z)V
    .locals 10
    .parameter "warning"

    .prologue
    .line 667
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 668
    .local v4, dialog:Landroid/app/Dialog;
    const-string v8, "Change Ref Position"

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 669
    const v8, 0x7f030007

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 671
    const v8, 0x7f0500bf

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    .line 672
    .local v6, editText_lat:Landroid/widget/EditText;
    const v8, 0x7f0500c0

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 673
    .local v7, editText_lng:Landroid/widget/EditText;
    const v8, 0x7f0500c1

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 674
    .local v3, button_ok:Landroid/widget/Button;
    const v8, 0x7f0500c2

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 675
    .local v2, button_cancel:Landroid/widget/Button;
    const v8, 0x7f0500c3

    invoke-virtual {v4, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 677
    .local v1, button_apply:Landroid/widget/Button;
    iget-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 678
    const-string v8, "0123456789."

    invoke-static {v8}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 679
    iget-wide v8, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 680
    const-string v8, "0123456789."

    invoke-static {v8}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 682
    new-instance v8, Lcom/mediatek/lbs/em/LbsGps$13;

    invoke-direct {v8, p0, v6, v7, v4}, Lcom/mediatek/lbs/em/LbsGps$13;-><init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 697
    new-instance v8, Lcom/mediatek/lbs/em/LbsGps$14;

    invoke-direct {v8, p0, v4}, Lcom/mediatek/lbs/em/LbsGps$14;-><init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    new-instance v8, Lcom/mediatek/lbs/em/LbsGps$15;

    invoke-direct {v8, p0, v4}, Lcom/mediatek/lbs/em/LbsGps$15;-><init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/app/Dialog;)V

    invoke-virtual {v1, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 709
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 711
    const/4 v8, 0x1

    if-ne p1, v8, :cond_0

    .line 712
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 713
    .local v0, button:Landroid/widget/Button;
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 714
    .local v5, dialog1:Landroid/app/Dialog;
    const-string v8, "OK"

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 715
    const-string v8, "Input lat/lng are incorrect"

    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {v5, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 717
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 718
    new-instance v8, Lcom/mediatek/lbs/em/LbsGps$16;

    invoke-direct {v8, p0, v5}, Lcom/mediatek/lbs/em/LbsGps$16;-><init>(Lcom/mediatek/lbs/em/LbsGps;Landroid/app/Dialog;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 724
    .end local v0           #button:Landroid/widget/Button;
    .end local v5           #dialog1:Landroid/app/Dialog;
    :cond_0
    return-void
.end method

.method private resetVarialbe()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 256
    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mFixCount:I

    .line 257
    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatCount:I

    .line 258
    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mSatNum:I

    .line 259
    iput v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaCount:I

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTTFF:I

    .line 261
    iput-boolean v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mGotFix:Z

    .line 262
    iput-wide v2, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLat:D

    .line 263
    iput-wide v2, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstLng:D

    .line 264
    iput v4, p0, Lcom/mediatek/lbs/em/LbsGps;->mFirstDistance:F

    .line 265
    iput v4, p0, Lcom/mediatek/lbs/em/LbsGps;->mDistance:F

    .line 266
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStringList:Lcom/mediatek/lbs/em/UtilityStringList;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/UtilityStringList;->clear()V

    .line 267
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewLocation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewSatellite:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewNmea:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 625
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 626
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 627
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 628
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    return-void
.end method

.method private setGpsMode(I)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, extras:Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 276
    const-string v1, "Hot Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 277
    const-string v1, "rti"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    :goto_0
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-string v3, "delete_aiding_data"

    invoke-virtual {v1, v2, v3, v0}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 297
    :goto_1
    return-void

    .line 278
    :cond_0
    if-ne p1, v2, :cond_1

    .line 279
    const-string v1, "Warm Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 280
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 281
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 282
    const-string v1, "Cold Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 283
    const-string v1, "ephemeris"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 284
    const-string v1, "position"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 285
    const-string v1, "time"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    const-string v1, "iono"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    const-string v1, "utc"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 288
    const-string v1, "health"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 289
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 290
    const-string v1, "Full Start"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 291
    const-string v1, "all"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 293
    :cond_3
    const-string v1, "WARNING: unknown reset type"

    invoke-direct {p0, v1}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startDeletingAidingData()V
    .locals 1

    .prologue
    .line 572
    const-string v0, "startDeletingAidingData"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonHot:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->setGpsMode(I)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonWarm:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->setGpsMode(I)V

    goto :goto_0

    .line 577
    :cond_2
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonCold:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->setGpsMode(I)V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonFull:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->setGpsMode(I)V

    goto :goto_0
.end method

.method private startGps()V
    .locals 6

    .prologue
    .line 240
    const-string v0, "startGps"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 242
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;-><init>(Lcom/mediatek/lbs/em/LbsGps;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    .line 243
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->startTimer()V

    .line 244
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 245
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->resetVarialbe()V

    .line 246
    return-void
.end method

.method private startStressGps()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 408
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :catch_0
    move-exception v7

    .line 417
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ERR: Parameters error!!"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 420
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonStress:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 436
    .end local v7           #e:Ljava/lang/Exception;
    :goto_0
    return-void

    .line 409
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/lbs/em/LbsGps$StressTest;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay4:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/lbs/em/LbsGps$StressTest;-><init>(Lcom/mediatek/lbs/em/LbsGps;IIIII)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    .line 415
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->startStress()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 424
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonGps:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v8}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextNumOfLoop:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay1:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay2:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 428
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay3:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 429
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mEditTextDelay4:Landroid/widget/EditText;

    invoke-virtual {v0, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 430
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mButtonDelete:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 431
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonHot:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 432
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonWarm:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonCold:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mRadioButtonFull:Landroid/widget/RadioButton;

    invoke-virtual {v0, v8}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 435
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mCheckBoxSwitchDelet2First:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private stopGps()V
    .locals 2

    .prologue
    .line 249
    const-string v0, "stopGps"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->stopTimer()V

    .line 251
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 252
    return-void
.end method

.method private stopStressGps()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->enableWidgetAfterStress()V

    .line 440
    return-void
.end method

.method private updateRefLatLng()V
    .locals 7

    .prologue
    .line 727
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 728
    .local v0, location:Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    .line 730
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    .line 731
    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mTextViewRefLatLng:Landroid/widget/TextView;

    const-string v2, "Reference Lat=%.06f Lng=%.06f"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLat:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/mediatek/lbs/em/LbsGps;->mRefLng:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->setContentView(I)V

    .line 105
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    .line 106
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 107
    const-string v0, "ERR: mLocationManager is null"

    invoke-direct {p0, v0}, Lcom/mediatek/lbs/em/LbsGps;->log(Ljava/lang/String;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 111
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 113
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->initWidget()V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsGps;->updateRefLatLng()V

    .line 116
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/lbs/em/LbsGps;->getTimeString2(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaFileName:Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 769
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 771
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/mediatek/lbs/em/LbsGps;->mStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 772
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mTimer:Lcom/mediatek/lbs/em/LbsGps$GpsTimer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$GpsTimer;->stopTimer()V

    .line 773
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsGps;->mStressTest:Lcom/mediatek/lbs/em/LbsGps$StressTest;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em/LbsGps$StressTest;->stopStress()V

    .line 774
    return-void
.end method

.method public write2File(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 8
    .parameter "folder"
    .parameter "fileName"
    .parameter "data"
    .parameter "isAppendMode"
    .parameter "toSdcard"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 741
    if-eqz p5, :cond_0

    .line 742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sdcard/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, fullFileName:Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 748
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 749
    new-instance v2, Ljava/io/File;

    .end local v2           #f:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 751
    .restart local v2       #f:Ljava/io/File;
    if-eqz p4, :cond_1

    .line 752
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 755
    .local v0, dos:Ljava/io/DataOutputStream;
    :goto_1
    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 756
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v4, v5

    .line 764
    .end local v0           #dos:Ljava/io/DataOutputStream;
    :goto_2
    return v4

    .line 744
    .end local v2           #f:Ljava/io/File;
    .end local v3           #fullFileName:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/mediatek/lbs/em/LbsGps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #fullFileName:Ljava/lang/String;
    goto :goto_0

    .line 754
    .restart local v2       #f:Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v0       #dos:Ljava/io/DataOutputStream;
    goto :goto_1

    .line 757
    .end local v0           #dos:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 758
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 760
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 761
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
