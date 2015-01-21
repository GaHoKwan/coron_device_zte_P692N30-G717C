.class public Lcom/mediatek/FMRadio/FMRadioEngineer;
.super Landroid/app/Activity;
.source "FMRadioEngineer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/FMRadio/FMRadioEngineer$InitialThread;,
        Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;
    }
.end annotation


# static fields
.field public static final MSGID_ANTENNA_UNAVAILABE:I = 0xa

.field public static final MSGID_INIT_OK:I = 0xd

.field public static final MSGID_OK:I = 0x2

.field public static final MSGID_PLAY_FAIL:I = 0x9

.field public static final MSGID_PLAY_FINISH:I = 0x8

.field public static final MSGID_RETRY:I = 0x1

.field public static final MSGID_SEARCH_FINISH:I = 0x3

.field public static final MSGID_SEEK_FAIL:I = 0x7

.field public static final MSGID_SEEK_FINISH:I = 0x6

.field public static final MSGID_SHOW_TOAST:I = 0xb

.field public static final MSGID_UPDATE_CURRENT_STATION:I = 0x5

.field public static final MSGID_UPDATE_RDS:I = 0x4

.field public static final TAG:Ljava/lang/String; = "FMRadioEngineer"

.field public static final TOAST_TIMER_DELAY:J = 0x1388L

.field public static final TYPE_MSGID:Ljava/lang/String; = "MSGID"

.field public static final TYPE_TOAST_STRING:Ljava/lang/String; = "TYPE_TOAST_STRING"

.field private static final default_frequency:[F


# instance fields
.field private final FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String;

.field private final FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String;

.field private final INVALID_FREQUENCY:F

.field private final MAX_FREQUENCY:F

.field private final MIN_FREQUENCY:F

.field button_1:Landroid/widget/Button;

.field button_2:Landroid/widget/Button;

.field button_3:Landroid/widget/Button;

.field button_4:Landroid/widget/Button;

.field button_5:Landroid/widget/Button;

.field button_6:Landroid/widget/Button;

.field button_ok:Landroid/widget/Button;

.field button_set:Landroid/widget/Button;

.field mEditText:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private mbAFEnabled:Z

.field private mbDestroying:Z

.field private mbExitPressed:Z

.field private mbInited:Z

.field private mbPSRTEnabled:Z

.field private mbPlaying:Z

.field private mbRDSEnabled:Z

.field private mbRDSSupported:Z

.field private mbServiceBinded:Z

.field private mbServiceStarted:Z

.field private miCurrentStation:I

.field private msLRText:Ljava/lang/String;

.field private msPS:Ljava/lang/String;

.field private needWiredHeadset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x9at 0x99t 0xaft 0x42t
        0x9at 0x99t 0xb2t 0x42t
        0x0t 0x0t 0xbat 0x42t
        0x0t 0x0t 0xbet 0x42t
        0xcdt 0xcct 0xd5t 0x42t
        0x0t 0x0t 0xd7t 0x42t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->FM_SAVE_INSTANCE_STATE_INITED:Ljava/lang/String;

    .line 51
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->FM_SAVE_INSTANCE_STATE_PLAYING:Ljava/lang/String;

    .line 53
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 54
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    .line 55
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 56
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 59
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z

    .line 61
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 62
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    .line 64
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    .line 67
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    .line 68
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    .line 71
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    .line 73
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 84
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 87
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 90
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    .line 122
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 1416
    const/high16 v0, 0x42af

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->MIN_FREQUENCY:F

    .line 1417
    const/high16 v0, 0x42d8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->MAX_FREQUENCY:F

    .line 1418
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->INVALID_FREQUENCY:F

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isServiceInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSSupported:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isRDSSupported()I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPSRTEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isPSRTEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbAFEnabled:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAFEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msPS:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getPS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->msLRText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getLRText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioEngineer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbInited:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showRDS()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioEngineer;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->enablePSRT(Z)V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->enableAF(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->initService(I)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isEarphoneUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100()[F
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioEngineer;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->playFrequency(F)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioEngineer;F)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->checkInputFrequency(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->openDevice()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->playFM()V

    return-void
.end method

.method static synthetic access$3600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioEngineer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->cancelToast()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioEngineer;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/FMRadio/FMRadioEngineer;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isDeviceOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioEngineer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->getFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioEngineer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioEngineer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isPowerUp()Z

    move-result v0

    return v0
.end method

.method private cancelToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 939
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 942
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 947
    :goto_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 949
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 954
    :goto_1
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.cancelToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 945
    :cond_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "Warning: The timer is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 952
    :cond_1
    const-string v0, "FMRadioEngineer"

    const-string v1, "Warning: The toast is null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkInputFrequency(F)F
    .locals 4
    .parameter "fre"

    .prologue
    const/high16 v3, 0x4120

    .line 1426
    const/high16 v2, 0x42af

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    const/high16 v2, 0x42d8

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 1428
    :cond_0
    const/4 v0, 0x0

    .line 1433
    :goto_0
    return v0

    .line 1431
    :cond_1
    mul-float v2, p1, v3

    float-to-int v1, v2

    .line 1432
    .local v1, fre_int:I
    int-to-float v2, v1

    div-float v0, v2, v3

    .line 1433
    .local v0, fre_float:F
    goto :goto_0
.end method

.method private enableAF(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1301
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enableAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1303
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.enableAF"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    return-void

    .line 1307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enableAF(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1309
    :catch_0
    move-exception v0

    .line 1310
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enablePSRT(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1285
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.enablePSRT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1287
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.enablePSRT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void

    .line 1291
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->enablePSRT(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateFreStringWithMHz(F)Ljava/lang/String;
    .locals 2
    .parameter "fre"

    .prologue
    .line 1413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f04006d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFrequency()I
    .locals 5

    .prologue
    .line 1353
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getFrequency"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    const/4 v1, 0x0

    .line 1355
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1356
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getFrequency: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    return v1

    .line 1360
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1362
    :catch_0
    move-exception v0

    .line 1363
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getLRText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1159
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getLRText"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const/4 v1, 0x0

    .line 1161
    .local v1, sRT:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1162
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getLRText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-object v1

    .line 1166
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getLRText()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPS()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1141
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.getPS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const/4 v1, 0x0

    .line 1143
    .local v1, sPS:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1144
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.getPS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    return-object v1

    .line 1148
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getPS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1151
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initService(I)V
    .locals 4
    .parameter "iCurrentStation"

    .prologue
    .line 1251
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.initService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1253
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.initService"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    return-void

    .line 1257
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->initService(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1259
    :catch_0
    move-exception v0

    .line 1260
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initViewAndAdapter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 526
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 527
    const v1, 0x7f04006c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 529
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadsetInit()V

    .line 531
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    if-eqz v1, :cond_0

    .line 533
    const v1, 0x7f04000a

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 536
    :cond_0
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEngineer$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$3;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    .line 614
    .local v0, mOnClickListener:Landroid/view/View$OnClickListener;
    const v1, 0x7f06000b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    .line 615
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_1:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 618
    const v1, 0x7f06000c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    .line 619
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_2:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 622
    const v1, 0x7f06000d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    .line 623
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_3:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    .line 627
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_4:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 630
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_5:Landroid/widget/Button;

    .line 631
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_5:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 632
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_5:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_6:Landroid/widget/Button;

    .line 635
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_6:Landroid/widget/Button;

    sget-object v2, Lcom/mediatek/FMRadio/FMRadioEngineer;->default_frequency:[F

    const/4 v3, 0x5

    aget v2, v2, v3

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_6:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 638
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_set:Landroid/widget/Button;

    .line 639
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_set:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 641
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_ok:Landroid/widget/Button;

    .line 642
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->button_ok:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    .line 645
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 646
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/mediatek/FMRadio/FMRadioEngineer$4;

    invoke-direct {v2, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$4;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    return-void
.end method

.method private isAFEnabled()Z
    .locals 5

    .prologue
    .line 1335
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isAFEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const/4 v0, 0x0

    .line 1337
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1338
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isAFEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v0

    .line 1342
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isAFEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isAntennaAvailable()Z
    .locals 2

    .prologue
    .line 722
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 723
    .local v0, mAudioManager:Landroid/media/AudioManager;
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    if-eqz v1, :cond_0

    .line 725
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    .line 729
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isDeviceOpen()Z
    .locals 5

    .prologue
    .line 997
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isDeviceOpen"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const/4 v0, 0x0

    .line 999
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1000
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isDeviceOpen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return v0

    .line 1004
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isDeviceOpen()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1006
    :catch_0
    move-exception v1

    .line 1007
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEarphoneUsed()Z
    .locals 5

    .prologue
    .line 1232
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isEarphoneUsed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/4 v0, 0x1

    .line 1234
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1235
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isEarphoneUsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    return v0

    .line 1239
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isEarphoneUsed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1241
    :catch_0
    move-exception v1

    .line 1242
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPSRTEnabled()Z
    .locals 5

    .prologue
    .line 1317
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isPSRTEnabled"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    const/4 v0, 0x0

    .line 1319
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1320
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPSRTEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    return v0

    .line 1324
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isPSRTEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1326
    :catch_0
    move-exception v1

    .line 1327
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPowerUp()Z
    .locals 5

    .prologue
    .line 1051
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isPowerUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1054
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isPowerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    return v0

    .line 1058
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isRDSSupported()I
    .locals 4

    .prologue
    .line 1195
    const-string v1, "FMRadioEngineer"

    const-string v2, ">>> FMRadioEMActivity.isRDSSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v0, -0x1

    .line 1197
    .local v0, iRet:I
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1198
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :cond_0
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isRDSSupported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return v0
.end method

.method private isServiceInit()Z
    .locals 5

    .prologue
    .line 1267
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.isServiceInit"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/4 v0, 0x0

    .line 1269
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1270
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.isServiceInit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    return v0

    .line 1274
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isServiceInit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1276
    :catch_0
    move-exception v1

    .line 1277
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isToasting()Z
    .locals 4

    .prologue
    .line 958
    const-string v1, "FMRadioEngineer"

    const-string v2, ">>> FMRadioEMActivity.isToasting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    const/4 v0, 0x1

    .line 960
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    .line 961
    const/4 v0, 0x0

    .line 963
    :cond_0
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<<< FMRadioEMActivity.isToasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    return v0
.end method

.method private needWiredHeadsetInit()V
    .locals 1

    .prologue
    .line 1396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->needWiredHeadset:Z

    .line 1397
    return-void
.end method

.method private onPauseFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onPauseFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 805
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 806
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 808
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 814
    :goto_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onPauseFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 811
    :cond_0
    const-string v0, "FMRadioEngineer"

    const-string v1, "Error: Can not power down."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onPlayFM()V
    .locals 2

    .prologue
    .line 735
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onPlayFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 738
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioEngineer$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$5;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 755
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onPlayFM"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method

.method private onUseEarphone()V
    .locals 2

    .prologue
    .line 818
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->useEarphone(Z)V

    .line 820
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onUseEarphone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    return-void
.end method

.method private onUseLoudspeaker()V
    .locals 2

    .prologue
    .line 824
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->useEarphone(Z)V

    .line 826
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< onUseLoudspeaker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    return-void
.end method

.method private openDevice()Z
    .locals 5

    .prologue
    .line 979
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.openDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/4 v0, 0x0

    .line 981
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 982
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.openDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    return v0

    .line 986
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->openDevice()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 988
    :catch_0
    move-exception v1

    .line 989
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFM()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 759
    const-string v3, "FMRadioEngineer"

    const-string v4, ">>> PlayFM"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 762
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 763
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    int-to-float v3, v3

    const/high16 v4, 0x4120

    div-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerUp(F)Z

    move-result v0

    .line 764
    .local v0, bRes:Z
    if-eqz v0, :cond_1

    .line 765
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 767
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 768
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 770
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->isAntennaAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 771
    invoke-virtual {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->switchAntenna(I)I

    .line 774
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 775
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 776
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 777
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x8

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 778
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 779
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 798
    :goto_0
    const-string v3, "FMRadioEngineer"

    const-string v4, "<<< PlayFM"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    return-void

    .line 785
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 786
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    .line 787
    iput-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 789
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 790
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 791
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 792
    .restart local v1       #bundle:Landroid/os/Bundle;
    const-string v3, "MSGID"

    const/16 v4, 0x9

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 793
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 794
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 796
    const-string v3, "FMRadioEngineer"

    const-string v4, "Error: Can not power up."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private playFrequency(F)V
    .locals 5
    .parameter "fre"

    .prologue
    .line 1401
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->tune(F)Z

    move-result v0

    .line 1403
    .local v0, r:Z
    if-nez v0, :cond_0

    .line 1405
    const v1, 0x7f04006f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->generateFreStringWithMHz(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->showToast(Ljava/lang/CharSequence;)V

    .line 1409
    :cond_0
    return-void
.end method

.method private powerDown()Z
    .locals 5

    .prologue
    .line 1033
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.powerDown"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1036
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return v0

    .line 1040
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->powerDown()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1042
    :catch_0
    move-exception v1

    .line 1043
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private powerUp(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1015
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.powerUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    const/4 v0, 0x0

    .line 1017
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1018
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.powerUp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return v0

    .line 1022
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUp(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v1

    .line 1025
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private rdsset(Z)I
    .locals 2
    .parameter "rdson"

    .prologue
    .line 896
    const/4 v0, -0x1

    .line 897
    .local v0, iRet:I
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbRDSEnabled:Z

    if-eqz v1, :cond_0

    .line 898
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setRDS(Z)I

    move-result v0

    .line 903
    :cond_0
    return v0
.end method

.method private readRDS()I
    .locals 5

    .prologue
    .line 1123
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.readRDS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const/4 v1, 0x0

    .line 1125
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1126
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.readRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    return v1

    .line 1130
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->readRDS()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshTextStatus(Z)V
    .locals 0
    .parameter "on"

    .prologue
    .line 881
    return-void
.end method

.method private seek(FZ)F
    .locals 5
    .parameter "frequency"
    .parameter "isUp"

    .prologue
    .line 1087
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.seek"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const/4 v1, 0x0

    .line 1089
    .local v1, fRet:F
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1090
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.seek: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    return v1

    .line 1094
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seek(FZ)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMute(Z)I
    .locals 5
    .parameter "mute"

    .prologue
    .line 1177
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.setMute"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    const/4 v1, -0x1

    .line 1179
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1180
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setMute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v1

    .line 1184
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setMute(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setRDS(Z)I
    .locals 5
    .parameter "on"

    .prologue
    .line 1105
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.setRDS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v1, -0x1

    .line 1107
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1108
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.setRDS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    return v1

    .line 1112
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRDS(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRDS()V
    .locals 2

    .prologue
    .line 968
    const-string v0, "FMRadioEngineer"

    const-string v1, "showRDS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "text"

    .prologue
    const-wide/16 v2, 0x1388

    .line 922
    const-string v0, "FMRadioEngineer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> FMRadioEMActivity.showToast: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    .line 925
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEngineer$7;

    invoke-direct {v1, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$7;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 933
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    .line 934
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 935
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.showToast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private tune(F)Z
    .locals 5
    .parameter "frequency"

    .prologue
    .line 1069
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.tune"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1072
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.tune: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return v0

    .line 1076
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1}, Lcom/mediatek/FMRadio/FMRadioService;->tune(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tuneToStation(I)V
    .locals 5
    .parameter "iStation"

    .prologue
    const/high16 v4, 0x4120

    .line 831
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> tuneToStation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    int-to-float v3, p1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    if-eqz v1, :cond_1

    .line 833
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is playing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 835
    int-to-float v1, p1

    div-float/2addr v1, v4

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->tune(F)Z

    move-result v0

    .line 836
    .local v0, bRes:Z
    if-eqz v0, :cond_0

    .line 837
    const-string v1, "FMRadioEngineer"

    const-string v2, "Tune to the station succeeded."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 839
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 842
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 857
    .end local v0           #bRes:Z
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< tuneToStation"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    return-void

    .line 845
    .restart local v0       #bRes:Z
    :cond_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: Can not tune to the station."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 849
    .end local v0           #bRes:Z
    :cond_1
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is paused."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 852
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    invoke-static {p0, v1}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 854
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->onPlayFM()V

    goto :goto_0
.end method

.method private useEarphone(Z)V
    .locals 4
    .parameter "use"

    .prologue
    .line 1214
    const-string v1, "FMRadioEngineer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> FMRadioEMActivity.useEarphone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1216
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: No service interface."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_0
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.useEarphone"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    return-void

    .line 1220
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->useEarphone(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FMRadioEngineer"

    const-string v2, "Exception: Cannot call service function."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 892
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 907
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 909
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 126
    const-string v3, "FMRadioEngineer"

    const-string v4, "onCreat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mSavedInstanceState:Landroid/os/Bundle;

    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->initViewAndAdapter()V

    .line 133
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 134
    .local v0, cn:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 135
    const-string v3, "FMRadioEngineer"

    const-string v4, "Error: Cannot start FM service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    if-nez v3, :cond_1

    .line 282
    const-string v3, "FMRadioEngineer"

    const-string v4, "Error: Cannot bind FM service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 284
    const-string v3, "FMRadioEngineer"

    const-string v4, "<<< FMRadioEMActivity.onCreat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_1
    return-void

    .line 138
    :cond_0
    const-string v3, "FMRadioEngineer"

    const-string v4, "Start FM service successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 141
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEngineer$1;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$1;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 276
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    goto :goto_0

    .line 288
    :cond_1
    const-string v3, "FMRadioEngineer"

    const-string v4, "Bind FM service successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v1, filterHeadset:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;Lcom/mediatek/FMRadio/FMRadioEngineer$1;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 307
    const-string v3, "FMRadioEngineer"

    const-string v4, "Register HeadsetConnectionReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 311
    invoke-static {p0}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->miCurrentStation:I

    .line 318
    new-instance v3, Lcom/mediatek/FMRadio/FMRadioEngineer$2;

    invoke-direct {v3, p0}, Lcom/mediatek/FMRadio/FMRadioEngineer$2;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    .line 440
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 444
    .local v2, pm:Landroid/os/PowerManager;
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->refreshTextStatus(Z)V

    .line 445
    const-string v3, "FMRadioEngineer"

    const-string v4, "<<< FMRadioEMActivity.onCreat"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 471
    const-string v1, "FMRadioEngineer"

    const-string v2, ">>> FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbDestroying:Z

    .line 482
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    if-eqz v1, :cond_0

    .line 483
    const-string v1, "FMRadioEngineer"

    const-string v2, "Unregister headset broadcast receiver."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 485
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHeadsetConnectionReceiver:Lcom/mediatek/FMRadio/FMRadioEngineer$HeadsetConnectionReceiver;

    .line 489
    :cond_0
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    .line 490
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    if-eqz v1, :cond_1

    .line 492
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    if-eqz v1, :cond_1

    .line 493
    const-string v1, "FMRadioEngineer"

    const-string v2, "FM is Playing. So stop it."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioEngineer;->setMute(Z)I

    .line 495
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioEngineer;->rdsset(Z)I

    .line 496
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioEngineer;->powerDown()Z

    .line 497
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    .line 502
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    if-eqz v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 504
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceBinded:Z

    .line 507
    :cond_2
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbExitPressed:Z

    if-eqz v1, :cond_4

    .line 508
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    if-eqz v1, :cond_4

    .line 509
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 510
    .local v0, bRes:Z
    if-nez v0, :cond_3

    .line 511
    const-string v1, "FMRadioEngineer"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbServiceStarted:Z

    .line 520
    .end local v0           #bRes:Z
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 521
    const-string v1, "FMRadioEngineer"

    const-string v2, "<<< FMRadioEMActivity.onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 972
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 974
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 460
    const-string v0, "FMRadioEngineer"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 463
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 454
    const-string v0, "FMRadioEngineer"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 457
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 884
    const-string v0, "FMRadioEngineer"

    const-string v1, ">>> FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 886
    const-string v0, "FM_SAVE_INSTANCE_STATE_INITED"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 887
    const-string v0, "FM_SAVE_INSTANCE_STATE_PLAYING"

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mbPlaying:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    const-string v0, "FMRadioEngineer"

    const-string v1, "<<< FMRadioEMActivity.onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 449
    const-string v0, "FMRadioEngineer"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 451
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 466
    const-string v0, "FMRadioEngineer"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 468
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 913
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/FMRadio/FMRadioEngineer$6;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/FMRadio/FMRadioEngineer$6;-><init>(Lcom/mediatek/FMRadio/FMRadioEngineer;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 919
    return-void
.end method

.method public switchAntenna(I)I
    .locals 5
    .parameter "type"

    .prologue
    .line 1372
    const-string v2, "FMRadioEngineer"

    const-string v3, ">>> FMRadioEMActivity.switchAntenna"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const/4 v1, 0x2

    .line 1374
    .local v1, iRet:I
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v2, :cond_0

    .line 1375
    const-string v2, "FMRadioEngineer"

    const-string v3, "Error: No service interface."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :goto_0
    const-string v2, "FMRadioEngineer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<<< FMRadioEMActivity.switchAntenna: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return v1

    .line 1379
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioEngineer;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2, p1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntenna(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMRadioEngineer"

    const-string v3, "Exception: Cannot call service function."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
