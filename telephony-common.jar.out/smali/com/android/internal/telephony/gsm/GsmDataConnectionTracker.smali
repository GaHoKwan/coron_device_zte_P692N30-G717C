.class public final Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$5;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field static final CONTENT_URI_GEMINI:[Landroid/net/Uri; = null

.field private static final DATA_STALL_NOT_SUSPECTED:Z = false

.field private static final DATA_STALL_SUSPECTED:Z = true

.field private static final INTENT_DATA_STALL_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-data-stall"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_RETRY_COUNT:Ljava/lang/String; = "reconnect_alaram_extra_retry_count"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "reconnect_alarm_extra_type"

.field private static final MSG_RESTART_RADIO_OFF_DONE:I = 0x3e7

.field private static final MSG_RESTART_RADIO_ON_DONE:I = 0x3e6

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x3

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri; = null

.field static final PREFERAPN_NO_UPDATE_URI_GEMINI:[Landroid/net/Uri; = null

.field static final PROPERTY_AVAILABLE_CID:Ljava/lang/String; = "ril.cid.num"

.field public static final PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private canSetPreferApn:Z

.field private canSetPreferTetheringApn:Z

.field private mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

.field protected mFDTimer:Lcom/android/internal/telephony/gsm/FDTimer;

.field private mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiverScri:Landroid/content/BroadcastReceiver;

.field private mIsCallPrefer:Z

.field private mIsTetheredMode:Z

.field private mIsUmtsMode:Z

.field private mLogSimId:I

.field private mPollScriStat:Ljava/lang/Runnable;

.field private mPreferredTetheringApn:Lcom/android/internal/telephony/ApnSetting;

.field private mReregisterOnReconnectFailure:Z

.field private mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

.field private mTetheringExt:Lcom/mediatek/common/telephony/ITetheringExt;

.field private mWaitingApnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitingNonDefaultApn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected scriPollEnabled:Z

.field protected scriRxPkts:J

.field protected scriTxPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    const-string v0, "content://telephony/carriers/preferapn_no_update"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    .line 194
    new-array v0, v6, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM1Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM2Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM3Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v4

    sget-object v1, Landroid/provider/Telephony$Carriers$SIM4Carriers;->CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CONTENT_URI_GEMINI:[Landroid/net/Uri;

    .line 199
    new-array v0, v6, [Landroid/net/Uri;

    const-string v1, "content://telephony/carriers_sim1/preferapn_no_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "content://telephony/carriers_sim2/preferapn_no_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "content://telephony/carriers_sim3/preferapn_no_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "content://telephony/carriers_sim4/preferapn_no_update"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI_GEMINI:[Landroid/net/Uri;

    .line 210
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "gsm.sim.ril.testsim"

    aput-object v1, v0, v2

    const-string v1, "gsm.sim.ril.testsim.2"

    aput-object v1, v0, v3

    const-string v1, "gsm.sim.ril.testsim.3"

    aput-object v1, v0, v4

    const-string v1, "gsm.sim.ril.testsim.4"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 8
    .parameter "p"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 147
    const-string v2, "GSM"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 167
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 186
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 189
    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredTetheringApn:Lcom/android/internal/telephony/ApnSetting;

    .line 190
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferTetheringApn:Z

    .line 191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingNonDefaultApn:Ljava/util/ArrayList;

    .line 193
    iput v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    .line 276
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriPollEnabled:Z

    .line 277
    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriTxPkts:J

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->scriRxPkts:J

    .line 281
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsUmtsMode:Z

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z

    .line 285
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z

    .line 3618
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$3;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiverScri:Landroid/content/BroadcastReceiver;

    .line 3863
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$4;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPollScriStat:Ljava/lang/Runnable;

    .line 298
    const-string v2, "GsmDCT.constructor"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v2, p1

    .line 300
    check-cast v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 301
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    .line 304
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42001

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 305
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42006

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 306
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42004

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42008

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 308
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    const v3, 0x42007

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42010

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 311
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42009

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 313
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x4200b

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 314
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x4200c

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 315
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42016

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 317
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    const v3, 0x42017

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 319
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const v3, 0x42026

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRegistrants(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 321
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x42027

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForGetAvailableNetworksDone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 324
    iget-object v2, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v3, 0x4202e

    invoke-interface {v2, p0, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnPacketsFlushNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 328
    new-instance v2, Lcom/android/internal/telephony/gsm/FDTimer;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/gsm/FDTimer;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mFDTimer:Lcom/android/internal/telephony/gsm/FDTimer;

    .line 331
    iput-object p0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 333
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    .line 335
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CONTENT_URI_GEMINI:[Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v3

    aget-object v1, v2, v3

    .line 336
    .local v1, geminiUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 344
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/ITetheringExt;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/ITetheringExt;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTetheringExt:Lcom/mediatek/common/telephony/ITetheringExt;

    .line 345
    const-class v2, Lcom/mediatek/common/telephony/IGsmDCTExt;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IGsmDCTExt;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->initApnContextsAndDataConnection()V

    .line 352
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->broadcastMessenger()V

    .line 358
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->registerSCRIEvent(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 361
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mChargingMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->syncRoamingSetting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/gsm/GSMPhone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isGeminiDcStateDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mChargingMode:Z

    return v0
.end method

.method private addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;
    .locals 2
    .parameter "type"

    .prologue
    .line 449
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    const-string v1, "GSM"

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-object v0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3042
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3043
    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3044
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v3}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3048
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V
    .locals 5
    .parameter "apnContext"
    .parameter "enabled"
    .parameter "met"

    .prologue
    .line 2258
    const/4 v0, 0x0

    .line 2259
    .local v0, cleanup:Z
    const/4 v2, 0x0

    .line 2261
    .local v2, trySetup:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyNewState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2265
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2266
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 2267
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 2268
    .local v1, state:Lcom/android/internal/telephony/DctConstants$State;
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v3, :cond_1

    .line 2298
    .end local v1           #state:Lcom/android/internal/telephony/DctConstants$State;
    :cond_0
    :goto_0
    return-void

    .line 2271
    .restart local v1       #state:Lcom/android/internal/telephony/DctConstants$State;
    :cond_1
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2272
    const/4 v2, 0x1

    .line 2294
    .end local v1           #state:Lcom/android/internal/telephony/DctConstants$State;
    :cond_2
    :goto_1
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 2295
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/ApnContext;->setDependencyMet(Z)V

    .line 2296
    if-eqz v0, :cond_3

    const/4 v3, 0x1

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2297
    :cond_3
    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_0

    .line 2274
    :cond_4
    if-nez p2, :cond_5

    .line 2275
    const/4 v0, 0x1

    .line 2276
    const-string v3, "dataDisabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 2278
    :cond_5
    const/4 v0, 0x1

    .line 2279
    const-string v3, "dependencyUnmet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_1

    .line 2282
    :cond_6
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 2283
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2284
    const-string v3, "dependencyMet"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2288
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_7

    .line 2289
    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2291
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 2286
    :cond_8
    const-string v3, "dataEnabled"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "requestedApnType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 2967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2969
    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    const-string v10, "dun"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2970
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    .line 2971
    .local v3, dun:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v3, :cond_0

    .line 2972
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2973
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildWaitingApns: X added APN_TYPE_DUN apnList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3038
    .end local v1           #apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    .end local v3           #dun:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v1

    .line 2978
    .restart local v1       #apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_0
    const-string v10, "dm"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2979
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDMApn()Ljava/util/ArrayList;

    move-result-object v2

    .local v2, dm:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    move-object v1, v2

    .line 2980
    goto :goto_0

    .line 2983
    .end local v2           #dm:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/IccRecords;

    .line 2984
    .local v7, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v6

    .line 2985
    .local v6, operator:Ljava/lang/String;
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v8

    .line 2987
    .local v8, radioTech:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTetheringExt:Lcom/mediatek/common/telephony/ITetheringExt;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10, p1, v11, v6}, Lcom/mediatek/common/telephony/ITetheringExt;->onBuildWaitingApns(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2995
    const/4 v9, 0x1

    .line 2997
    .local v9, usePreferred:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x111004b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_4

    const/4 v9, 0x1

    .line 3003
    :goto_2
    if-eqz v9, :cond_6

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3006
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildWaitingApns: Preferred APN:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v11, v11, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3009
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v10, v10, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 3010
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v10, v10, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v10, v10, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v10, v8, :cond_5

    .line 3011
    :cond_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3012
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildWaitingApns: X added preferred apnList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2984
    .end local v6           #operator:Ljava/lang/String;
    .end local v8           #radioTech:I
    .end local v9           #usePreferred:Z
    :cond_3
    const-string v6, ""

    goto/16 :goto_1

    .line 2997
    .restart local v6       #operator:Ljava/lang/String;
    .restart local v8       #radioTech:I
    .restart local v9       #usePreferred:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 2999
    :catch_0
    move-exception v4

    .line 3000
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    const/4 v9, 0x1

    goto :goto_2

    .line 3015
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_5
    const-string v10, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3016
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3017
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 3025
    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 3026
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 3027
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 3028
    iget v10, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/android/internal/telephony/ApnSetting;->bearer:I

    if-ne v10, v8, :cond_7

    .line 3029
    :cond_8
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apn info : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3030
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 3020
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_9
    const-string v10, "buildWaitingApns: no preferred APN"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3021
    invoke-direct {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 3022
    iput-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    goto :goto_3

    .line 3035
    :cond_a
    const-string v10, "mAllApns is empty!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3037
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "buildWaitingApns: X apnList="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V
    .locals 4
    .parameter "dcac"

    .prologue
    .line 1182
    if-nez p1, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1184
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v1

    .line 1186
    .local v1, intent:Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 1187
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1189
    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1190
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;
    .locals 9
    .parameter "apnContext"

    .prologue
    .line 2302
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 2303
    .local v1, apnType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2305
    .local v4, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    const-string v7, "dun"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2306
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v4

    .line 2309
    :cond_0
    const/4 v6, 0x0

    .line 2310
    .local v6, potential:Lcom/android/internal/telephony/DataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 2311
    .local v2, c:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v3

    .line 2312
    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    if-eqz v3, :cond_1

    .line 2313
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 2314
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v4, :cond_2

    .line 2315
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2316
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 2319
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found conn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2350
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :goto_1
    return-object v3

    .line 2324
    .restart local v0       #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .restart local v2       #c:Lcom/android/internal/telephony/ApnContext;
    .restart local v3       #conn:Lcom/android/internal/telephony/DataConnection;
    :pswitch_2
    move-object v6, v3

    goto :goto_0

    .line 2327
    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2328
    sget-object v7, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 2331
    :pswitch_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found conn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2336
    :pswitch_5
    move-object v6, v3

    goto/16 :goto_0

    .line 2341
    .end local v0           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v2           #c:Lcom/android/internal/telephony/ApnContext;
    .end local v3           #conn:Lcom/android/internal/telephony/DataConnection;
    :cond_3
    if-eqz v6, :cond_4

    .line 2343
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " found conn="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v3, v6

    .line 2346
    goto :goto_1

    .line 2349
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkForConnectionForApnContext: apnContext="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " NO conn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2350
    const/4 v3, 0x0

    goto :goto_1

    .line 2316
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2328
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V
    .locals 9
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const/4 v8, 0x0

    .line 1096
    if-nez p2, :cond_0

    .line 1097
    const-string v5, "cleanUpConnection: apn context is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1174
    :goto_0
    return-void

    .line 1101
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 1103
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: E tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1106
    if-eqz p1, :cond_9

    .line 1107
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1110
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1111
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1112
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1113
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1116
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 1165
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v0

    .line 1166
    .local v0, apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1167
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1171
    .end local v0           #apnList:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: X tearDown="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " apnContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1119
    :cond_4
    if-eqz v1, :cond_8

    .line 1120
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v6, :cond_2

    .line 1121
    const/4 v2, 0x0

    .line 1122
    .local v2, disconnectAll:Z
    const-string v5, "dun"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1123
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    .line 1124
    .local v3, dunSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v3, :cond_5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1126
    const-string v5, "tearing down dedicated DUN connection"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1131
    const/4 v2, 0x1

    .line 1135
    .end local v3           #dunSetting:Lcom/android/internal/telephony/ApnSetting;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpConnection: tearing down"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_6

    const-string v5, " all"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1137
    const v5, 0x4200f

    invoke-virtual {p0, v5, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1138
    .local v4, msg:Landroid/os/Message;
    if-eqz v2, :cond_7

    .line 1139
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    .line 1143
    :goto_3
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    goto/16 :goto_1

    .line 1135
    .end local v4           #msg:Landroid/os/Message;
    :cond_6
    const-string v5, ""

    goto :goto_2

    .line 1141
    .restart local v4       #msg:Landroid/os/Message;
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    .line 1148
    .end local v2           #disconnectAll:Z
    .end local v4           #msg:Landroid/os/Message;
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1149
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1155
    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->resetSync()V

    .line 1156
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1157
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1159
    invoke-virtual {p2, v8}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto/16 :goto_1
.end method

.method private clearWaitingApn()V
    .locals 4

    .prologue
    .line 4061
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4063
    .local v0, iterWaitingApn:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v1, "Reconnect waiting APNs if have."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4064
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4065
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v3, "apnFailed"

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4067
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4068
    return-void
.end method

.method private configureRetry(Lcom/android/internal/telephony/DataConnection;ZI)V
    .locals 3
    .parameter "dc"
    .parameter "forDefault"
    .parameter "retryCount"

    .prologue
    .line 2925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureRetry: forDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2928
    if-nez p1, :cond_0

    .line 2948
    :goto_0
    return-void

    .line 2930
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getReryConfig(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2931
    if-eqz p2, :cond_2

    .line 2932
    const-string v0, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2934
    const-string v0, "configureRetry: Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2936
    const/16 v0, 0x14

    const/16 v1, 0x7d0

    const/16 v2, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->configureRetry(III)Z

    .line 2947
    :cond_1
    :goto_1
    invoke-virtual {p1, p3}, Lcom/android/internal/telephony/DataConnection;->setRetryCount(I)V

    goto :goto_0

    .line 2939
    :cond_2
    const-string v0, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2941
    const-string v0, "configureRetry: Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2943
    const-string v0, "max_retries=3, 333, 333, 333"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnection;->configureRetry(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private createAllApnList()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 2824
    const/4 v7, 0x0

    .line 2826
    .local v7, hasResult:Z
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccRecords;

    .line 2827
    .local v9, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v8

    .line 2828
    .local v8, operator:Ljava/lang/String;
    :goto_0
    if-eqz v8, :cond_1

    .line 2829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numeric = \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2832
    .local v3, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " and carrier_enabled = 1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllApnList: selection="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2834
    const/4 v6, 0x0

    .line 2836
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->CONTENT_URI_GEMINI:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    aget-object v1, v0, v4

    .line 2837
    .local v1, geminiUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2843
    if-eqz v6, :cond_1

    .line 2844
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2845
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 2846
    const/4 v7, 0x1

    .line 2848
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2852
    .end local v1           #geminiUri:Landroid/net/Uri;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    if-nez v7, :cond_2

    .line 2853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 2856
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllApnList: No APN found for carrier: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2858
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2882
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTetheringExt:Lcom/mediatek/common/telephony/ITetheringExt;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v2, v8}, Lcom/mediatek/common/telephony/ITetheringExt;->onCreateAllApnList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: X mAllApns="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2885
    return-void

    .line 2827
    .end local v8           #operator:Ljava/lang/String;
    :cond_3
    const-string v8, ""

    goto/16 :goto_0

    .line 2862
    .restart local v8       #operator:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createAllApnList: mPreferredApn_XXX="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2864
    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2865
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v11

    invoke-interface {v0, v4, v5, v11}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getOptPreferredApn(Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    .line 2867
    .restart local v6       #cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 2868
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v10

    .line 2869
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2870
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 2871
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2875
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v10           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2876
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2877
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 2879
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAllApnList: mPreferredApn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 31
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v27

    .line 1213
    .local v27, spnString:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnList spnString="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1214
    if-eqz v27, :cond_0

    const-string v4, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1215
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnListWithSPN(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1216
    .local v26, spnResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1217
    const-string v4, "Has spnResult."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1288
    .end local v26           #spnResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :goto_0
    return-object v26

    .line 1221
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v22

    .line 1222
    .local v22, imsiString:Ljava/lang/String;
    if-eqz v22, :cond_1

    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnListWithIMSI(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    .line 1224
    .local v21, imsiResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 1225
    const-string v4, "Has imsiResult."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v26, v21

    .line 1226
    goto :goto_0

    .line 1229
    .end local v21           #imsiResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v24

    .line 1230
    .local v24, pnnString:Ljava/lang/String;
    if-eqz v24, :cond_2

    const-string v4, ""

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1231
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnListWithPNN(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1232
    .local v23, pnnResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1233
    const-string v4, "Has pnnResult."

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    move-object/from16 v26, v23

    .line 1234
    goto :goto_0

    .line 1239
    .end local v23           #pnnResult:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1240
    .local v25, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1243
    :cond_3
    const-string v4, "spn"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1244
    .local v30, strSPN:Ljava/lang/String;
    if-eqz v30, :cond_6

    const-string v4, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1285
    :cond_4
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1287
    .end local v30           #strSPN:Ljava/lang/String;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createApnList: X result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object/from16 v26, v25

    .line 1288
    goto/16 :goto_0

    .line 1247
    .restart local v30       #strSPN:Ljava/lang/String;
    :cond_6
    const-string v4, "imsi"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 1248
    .local v28, strIMSI:Ljava/lang/String;
    if-eqz v28, :cond_7

    const-string v4, ""

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1251
    :cond_7
    const-string v4, "pnn"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1252
    .local v29, strPNN:Ljava/lang/String;
    if-eqz v29, :cond_8

    const-string v4, ""

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1256
    :cond_8
    const-string v4, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1258
    .local v16, types:[Ljava/lang/String;
    new-instance v3, Lcom/android/internal/telephony/ApnSetting;

    const-string v4, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string v17, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const/16 v19, 0x1

    :goto_2
    const-string v20, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-direct/range {v3 .. v20}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1284
    .local v3, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1258
    .end local v3           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_9
    const/16 v19, 0x0

    goto :goto_2
.end method

.method private createApnListWithIMSI(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .parameter "imsi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1334
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1337
    :cond_0
    if-eqz p2, :cond_2

    const-string v3, "imsi"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1369
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1371
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1372
    return-object v20

    .line 1340
    :cond_2
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1342
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_1
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1368
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1342
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1
.end method

.method private createApnListWithPNN(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .parameter "pnn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1376
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1379
    :cond_0
    if-eqz p2, :cond_2

    const-string v3, "pnn"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1411
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1414
    return-object v20

    .line 1382
    :cond_2
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1384
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_1
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1410
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1384
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1
.end method

.method private createApnListWithSPN(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 21
    .parameter "cursor"
    .parameter "spn"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1292
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1293
    .local v20, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1295
    :cond_0
    if-eqz p2, :cond_2

    const-string v3, "spn"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1327
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1329
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createApnList: X result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1330
    return-object v20

    .line 1298
    :cond_2
    const-string v3, "type"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1300
    .local v15, types:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/NetworkUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, "carrier_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_1
    const-string v19, "bearer"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v2 .. v19}, Lcom/android/internal/telephony/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 1326
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1300
    .end local v2           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_3
    const/16 v18, 0x0

    goto :goto_1
.end method

.method private createDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 2889
    const-string v7, "createDataConnection E"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2891
    new-instance v4, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v4}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    .line 2892
    .local v4, rm:Lcom/android/internal/telephony/RetryManager;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUniqueIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 2899
    .local v3, id:I
    const/4 v7, 0x3

    if-lt v3, v7, :cond_0

    .line 2900
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Max PDP count is 3,but request "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    move-object v0, v6

    .line 2920
    :goto_0
    return-object v0

    .line 2903
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {v7, v3, v4, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;ILcom/android/internal/telephony/RetryManager;Lcom/android/internal/telephony/DataConnectionTracker;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v0

    .line 2904
    .local v0, conn:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2905
    new-instance v1, Lcom/android/internal/telephony/DataConnectionAc;

    const-string v7, "GSM"

    invoke-direct {v1, v0, v7}, Lcom/android/internal/telephony/DataConnectionAc;-><init>(Lcom/android/internal/telephony/DataConnection;Ljava/lang/String;)V

    .line 2906
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v1, v7, p0, v8}, Lcom/android/internal/telephony/DataConnectionAc;->fullyConnectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)I

    move-result v5

    .line 2907
    .local v5, status:I
    if-nez v5, :cond_1

    .line 2908
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2915
    :goto_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 2916
    .local v2, filter:Landroid/content/IntentFilter;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2917
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v7, v8, v2, v6, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2919
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createDataConnection() X id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " dc="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2910
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createDataConnection: Could not connect to dcac.mDc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " status="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z
    .locals 4
    .parameter "dcac"

    .prologue
    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: check if dcac is inuse dc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1420
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: in use by apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1422
    const/4 v2, 0x0

    .line 1435
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    .line 1428
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1430
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dataConnectionNotInUse: removing apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/DataConnectionAc;->removeApnContextSync(Lcom/android/internal/telephony/ApnContext;)V

    goto :goto_1

    .line 1434
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    const-string v2, "dataConnectionNotInUse: not in use return true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1435
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private destroyDataConnections()V
    .locals 1

    .prologue
    .line 2951
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 2952
    const-string v0, "destroyDataConnections: clear mDataConnectionList"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2957
    :goto_0
    return-void

    .line 2955
    :cond_0
    const-string v0, "destroyDataConnections: mDataConnecitonList is empty, ignore"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableWaitingApn()Z
    .locals 3

    .prologue
    .line 4048
    const/4 v1, 0x0

    .line 4049
    .local v1, ret:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 4051
    .local v0, iterWaitingApn:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-string v2, "Reconnect waiting APNs if have."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4052
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4053
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    .line 4054
    const/4 v1, 0x1

    goto :goto_0

    .line 4056
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4057
    return v1
.end method

.method private fetchDMApn()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3936
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IccRecords;

    .line 3937
    .local v8, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .line 3939
    .local v7, operator:Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchDMApn():operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3940
    if-eqz v7, :cond_5

    .line 3941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3942
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3944
    .local v6, dmCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 3945
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI_DM:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3957
    :goto_1
    if-eqz v6, :cond_5

    .line 3960
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchDMApn(): dmCursor_count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3961
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3962
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3965
    if-eqz v6, :cond_0

    .line 3966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3971
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #dmCursor:Landroid/database/Cursor;
    :cond_0
    :goto_2
    return-object v0

    .line 3937
    .end local v7           #operator:Ljava/lang/String;
    :cond_1
    const-string v7, ""

    goto :goto_0

    .line 3948
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #dmCursor:Landroid/database/Cursor;
    .restart local v7       #operator:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers$GeminiCarriers;->CONTENT_URI_DM:Landroid/net/Uri;

    const-string v5, "name ASC"

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_1

    .line 3965
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3965
    :cond_3
    throw v0

    :cond_4
    if-eqz v6, :cond_5

    .line 3966
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3971
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #dmCursor:Landroid/database/Cursor;
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2
.end method

.method private findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/telephony/DataConnectionAc;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/ApnContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    .local p1, dcacs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnectionAc;>;"
    if-nez p1, :cond_0

    const/4 v5, 0x0

    .line 1744
    :goto_0
    return-object v5

    .line 1716
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findApnContextToClean(ar): E dcacs="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1718
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1719
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1720
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_1

    .line 1721
    const/4 v2, 0x0

    .line 1722
    .local v2, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1723
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-ne v1, v6, :cond_2

    .line 1725
    const/4 v2, 0x1

    .line 1729
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_3
    if-nez v2, :cond_1

    .line 1733
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findApnContextToClean(ar): Connected apn not found in the list ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1735
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 1736
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1738
    :cond_4
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1743
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #found:Z
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "findApnContextToClean(ar): X list="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;
    .locals 3
    .parameter "cid"

    .prologue
    .line 1700
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1701
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->getCidSync()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1705
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findFreeDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 5

    .prologue
    .line 1439
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1440
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->dataConnectionNotInUse(Lcom/android/internal/telephony/DataConnectionAc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1441
    iget-object v0, v1, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    .line 1443
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFreeDataConnection: found free GsmDataConnection= dcac="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1446
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1450
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v0

    .line 1449
    :cond_1
    const-string v3, "findFreeDataConnection: NO free GsmDataConnection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1450
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCellLocationId()I
    .locals 3

    .prologue
    .line 3375
    const/4 v0, -0x1

    .line 3376
    .local v0, cid:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    .line 3378
    .local v1, loc:Landroid/telephony/CellLocation;
    if-eqz v1, :cond_0

    .line 3379
    instance-of v2, v1, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_1

    .line 3380
    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    .line 3385
    :cond_0
    :goto_0
    return v0

    .line 3381
    .restart local v1       #loc:Landroid/telephony/CellLocation;
    :cond_1
    instance-of v2, v1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 3382
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v1           #loc:Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/ApnSetting;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 3086
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3087
    const-string v0, "getPreferredApn: X not found mAllApns.isEmpty"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3125
    :goto_0
    return-object v3

    .line 3091
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI:Landroid/net/Uri;

    .line 3093
    .local v1, queryPreferApnUri:Landroid/net/Uri;
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI_GEMINI:[Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    aget-object v1, v0, v2

    .line 3095
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "name"

    aput-object v4, v2, v11

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3099
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 3100
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 3101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: canSetPreferApn= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",count "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3107
    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 3109
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3110
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 3111
    .local v9, pos:I
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/ApnSetting;

    .line 3112
    .local v8, p:Lcom/android/internal/telephony/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: X found apnSetting"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v3, v8

    .line 3115
    goto/16 :goto_0

    .line 3103
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/ApnSetting;
    .end local v9           #pos:I
    :cond_2
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredApn: canSetPreferApn= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3120
    :cond_3
    if-eqz v6, :cond_4

    .line 3121
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3124
    :cond_4
    const-string v0, "getPreferredApn: X not found"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isCuImsi(Ljava/lang/String;)Z
    .locals 6
    .parameter "imsi"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3917
    if-eqz p1, :cond_2

    .line 3918
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3919
    .local v0, mcc:I
    const/4 v4, 0x5

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3921
    .local v1, mnc:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc mnc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3923
    const/16 v4, 0x1cc

    if-ne v0, v4, :cond_1

    if-ne v1, v2, :cond_1

    .line 3932
    .end local v0           #mcc:I
    .end local v1           #mnc:I
    :cond_0
    :goto_0
    return v2

    .line 3927
    .restart local v0       #mcc:I
    .restart local v1       #mnc:I
    :cond_1
    if-eq v0, v2, :cond_0

    .end local v0           #mcc:I
    .end local v1           #mnc:I
    :cond_2
    move v2, v3

    .line 3932
    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDomesticRoaming()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 4091
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .line 4092
    .local v2, roaming:Z
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 4093
    .local v1, operatorNumeric:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 4094
    .local v0, imsi:Ljava/lang/String;
    const/4 v3, 0x0

    .line 4096
    .local v3, sameMcc:Z
    const/4 v5, 0x0

    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 4100
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDataOnRoamingEnabled(): roaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", sameMcc="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4102
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4

    .line 4097
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private isGeminiDcStateDetachingOrDetached(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    .line 4168
    const/4 v0, 0x0

    .line 4169
    .local v0, bRet:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 4170
    .local v1, geminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isGprsDetachingOrDetached(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4172
    const/4 v0, 0x1

    .line 4174
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGeminiDcStateDetachingOrDetached, ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4175
    return v0
.end method

.method private isSameProxy(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z
    .locals 5
    .parameter "apn1"
    .parameter "apn2"

    .prologue
    const/4 v2, 0x0

    .line 4023
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4043
    :cond_0
    :goto_0
    return v2

    .line 4027
    :cond_1
    const-string v3, "mms"

    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4028
    iget-object v0, p1, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 4033
    .local v0, proxy1:Ljava/lang/String;
    :goto_1
    const-string v3, "mms"

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4034
    iget-object v1, p2, Lcom/android/internal/telephony/ApnSetting;->mmsProxy:Ljava/lang/String;

    .line 4039
    .local v1, proxy2:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4040
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0

    .line 4030
    .end local v0           #proxy1:Ljava/lang/String;
    .end local v1           #proxy2:Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .restart local v0       #proxy1:Ljava/lang/String;
    goto :goto_1

    .line 4036
    :cond_3
    iget-object v1, p2, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    .restart local v1       #proxy2:Ljava/lang/String;
    goto :goto_2

    .line 4042
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSameProxy():proxy1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",proxy2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private notifyApnIdUpToCurrent(Ljava/lang/String;Lcom/android/internal/telephony/ApnContext;Ljava/lang/String;)V
    .locals 2
    .parameter "reason"
    .parameter "apnContext"
    .parameter "type"

    .prologue
    .line 702
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 716
    :goto_0
    :pswitch_0
    return-void

    .line 708
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 712
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V
    .locals 4
    .parameter "apnContext"

    .prologue
    const/4 v3, 0x0

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1968
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v0, v1, :cond_0

    .line 1969
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1973
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 1975
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 1977
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/ApnContext;->setRetryCount(I)V

    .line 1978
    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2170
    sget-object v0, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2171
    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1625
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    .line 1626
    .local v5, overallState:Lcom/android/internal/telephony/DctConstants$State;
    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v5, v13, :cond_0

    sget-object v13, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v13, :cond_4

    :cond_0
    move v3, v12

    .line 1629
    .local v3, isDisconnected:Z
    :goto_0
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v13, v13, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v13, :cond_1

    .line 1632
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;

    invoke-direct {v14, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 1641
    :cond_1
    const-string v13, "onApnChanged: createAllApnList and cleanUpAllConnections"

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1642
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    .line 1643
    .local v7, previous_allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1644
    .local v8, previous_preferredApn:Lcom/android/internal/telephony/ApnSetting;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V

    .line 1645
    const/4 v4, 0x0

    .line 1646
    .local v4, isSameApnSetting:Z
    if-nez v7, :cond_6

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-nez v13, :cond_6

    .line 1647
    if-nez v8, :cond_5

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v13, :cond_5

    .line 1648
    const/4 v4, 0x1

    .line 1671
    :cond_2
    :goto_1
    if-eqz v4, :cond_a

    .line 1672
    const-string v11, "onApnChanged: not changed."

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1693
    :cond_3
    :goto_2
    return-void

    .end local v3           #isDisconnected:Z
    .end local v4           #isSameApnSetting:Z
    .end local v7           #previous_allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    .end local v8           #previous_preferredApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_4
    move v3, v11

    .line 1626
    goto :goto_0

    .line 1649
    .restart local v3       #isDisconnected:Z
    .restart local v4       #isSameApnSetting:Z
    .restart local v7       #previous_allApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    .restart local v8       #previous_preferredApn:Lcom/android/internal/telephony/ApnSetting;
    :cond_5
    if-eqz v8, :cond_2

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1650
    const/4 v4, 0x1

    goto :goto_1

    .line 1652
    :cond_6
    if-eqz v7, :cond_2

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v13, :cond_2

    .line 1653
    const-string v6, ""

    .line 1654
    .local v6, pre_all_str:Ljava/lang/String;
    const-string v0, ""

    .line 1655
    .local v0, all_str:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/ApnSetting;

    .line 1656
    .local v9, s:Lcom/android/internal/telephony/ApnSetting;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 1658
    .end local v9           #s:Lcom/android/internal/telephony/ApnSetting;
    :cond_7
    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/ApnSetting;

    .line 1659
    .local v10, t:Lcom/android/internal/telephony/ApnSetting;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v10}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1661
    .end local v10           #t:Lcom/android/internal/telephony/ApnSetting;
    :cond_8
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1662
    if-nez v8, :cond_9

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v13, :cond_9

    .line 1663
    const/4 v4, 0x1

    goto :goto_1

    .line 1664
    :cond_9
    if-eqz v8, :cond_2

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v8, v13}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1665
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1676
    .end local v0           #all_str:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v6           #pre_all_str:Ljava/lang/String;
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onApnChanged: previous_preferredApn ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] mPreferredApn ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1677
    if-nez v3, :cond_c

    :goto_5
    const-string v11, "apnChanged"

    invoke-virtual {p0, v12, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 1678
    if-eqz v3, :cond_b

    .line 1679
    const-string v11, "apnChanged"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 1683
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataConnectionFromSetting()I

    move-result v1

    .line 1684
    .local v1, gprsDefaultSIM:I
    iget-object v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v11

    if-ne v1, v11, :cond_3

    .line 1688
    const-string v11, "default"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 1689
    const-string v11, "onApnChanged: Default APN context is not enabled."

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1690
    const-string v11, "default"

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v1           #gprsDefaultSIM:I
    :cond_c
    move v12, v11

    .line 1677
    goto :goto_5
.end method

.method private onDataConnectionAttached()V
    .locals 2

    .prologue
    .line 811
    const-string v0, "onDataConnectionAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 813
    const-string v0, "onDataConnectionAttached: start polling notify attached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 815
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 816
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 821
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAutoAttachOnCreation:Z

    .line 822
    const-string v0, "dataAttached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 823
    return-void

    .line 819
    :cond_0
    const-string v0, "dataAttached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onDataStateChanged(Landroid/os/AsyncResult;)V
    .locals 31
    .parameter "ar"

    .prologue
    .line 1754
    const-string v25, "onDataStateChanged(ar): E"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1755
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/util/ArrayList;

    move-object/from16 v13, v25

    check-cast v13, Ljava/util/ArrayList;

    .line 1757
    .local v13, dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 1761
    const-string v25, "onDataStateChanged(ar): exception; likely radio not available, ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1763
    new-instance v13, Ljava/util/ArrayList;

    .end local v13           #dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1766
    .restart local v13       #dataCallStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    :cond_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1767
    .local v24, size:I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged(ar): DataCallState size="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1769
    const/16 v20, 0x0

    .line 1770
    .local v20, isAnyDataCallDormant:Z
    const/16 v19, 0x0

    .line 1772
    .local v19, isAnyDataCallActive:Z
    if-nez v24, :cond_2

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    .line 1777
    .local v9, collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnection;>;"
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .line 1778
    .local v21, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/DataConnection;>;"
    :cond_1
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 1779
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/DataConnection;

    .line 1780
    .local v14, dataConnection:Lcom/android/internal/telephony/DataConnection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual {v14}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1782
    .local v15, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v25

    if-lez v25, :cond_1

    invoke-virtual {v15}, Lcom/android/internal/telephony/DataConnectionAc;->isActiveSync()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1786
    const-string v25, "found unlinked DataConnection, to tear down it"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logw(Ljava/lang/String;)V

    .line 1787
    const-string v25, "dataDetached"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/telephony/DataConnection;->tearDownAll(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 1794
    .end local v9           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/DataConnection;>;"
    .end local v14           #dataConnection:Lcom/android/internal/telephony/DataConnection;
    .end local v15           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v21           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/DataConnection;>;"
    :cond_2
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1795
    .local v12, dataCallStateToDcac:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/internal/telephony/DataCallState;Lcom/android/internal/telephony/DataConnectionAc;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/DataCallState;

    .line 1796
    .local v11, dataCallState:Lcom/android/internal/telephony/DataCallState;
    iget v0, v11, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v16

    .line 1798
    .local v16, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    invoke-virtual {v12, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1802
    .end local v11           #dataCallState:Lcom/android/internal/telephony/DataCallState;
    .end local v16           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_4
    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findApnContextToClean(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    .line 1805
    .local v6, apnsToCleanup:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .end local v17           #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/internal/telephony/DataCallState;

    .line 1806
    .local v22, newState:Lcom/android/internal/telephony/DataCallState;
    move-object/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1808
    .restart local v16       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v16, :cond_5

    .line 1809
    const-string v25, "onDataStateChanged(ar): No associated DataConnection ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 1812
    const-string v25, "Deactivate unlinked PDP context."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v26, v0

    const/16 v27, 0x2

    const v28, 0x4202b

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v28

    invoke-interface/range {v25 .. v28}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(IILandroid/os/Message;)V

    goto :goto_2

    .line 1818
    :cond_5
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v25, v0

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    .line 1819
    :cond_6
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    .line 1822
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v5

    .line 1825
    .local v5, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1826
    .local v10, connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 1827
    .local v4, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_9

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/DctConstants$State;->INITING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 1830
    :cond_9
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1833
    .end local v4           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v25

    if-nez v25, :cond_b

    .line 1834
    const-string v25, "onDataStateChanged(ar): no connected apns"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1838
    :cond_b
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged(ar): Found ConnId="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->cid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " newState="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/DataCallState;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1840
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/DataCallState;->active:I

    move/from16 v25, v0

    if-nez v25, :cond_c

    .line 1842
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged(ar): inactive, cleanup apns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1844
    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1847
    :cond_c
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionAc;->updateLinkPropertiesDataCallStateSync(Lcom/android/internal/telephony/DataCallState;)Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;

    move-result-object v23

    .line 1849
    .local v23, result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 1850
    const-string v25, "onDataStateChanged(ar): no change"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1852
    :cond_d
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->isIdenticalInterfaceName(Landroid/net/LinkProperties;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 1853
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->isIdenticalDnses(Landroid/net/LinkProperties;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->isIdenticalRoutes(Landroid/net/LinkProperties;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->isIdenticalHttpProxy(Landroid/net/LinkProperties;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->isIdenticalAddresses(Landroid/net/LinkProperties;)Z

    move-result v25

    if-nez v25, :cond_f

    .line 1858
    :cond_e
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/net/LinkProperties;->compareAddresses(Landroid/net/LinkProperties;)Landroid/net/LinkProperties$CompareResult;

    move-result-object v7

    .line 1861
    .local v7, car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged: oldLp="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " newLp="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->newLp:Landroid/net/LinkProperties;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " car="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1866
    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1897
    .end local v7           #car:Landroid/net/LinkProperties$CompareResult;,"Landroid/net/LinkProperties$CompareResult<Landroid/net/LinkAddress;>;"
    :cond_f
    const-string v25, "onDataStateChanged(ar): no changes"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1904
    :cond_10
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;->oldLp:Landroid/net/LinkProperties;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_11

    .line 1906
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged(ar): interface change, cleanup apns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1909
    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1912
    :cond_11
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged(ar): interface change but no old interface, not to cleanup apns"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1922
    .end local v5           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v10           #connectedApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v16           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #newState:Lcom/android/internal/telephony/DataCallState;
    .end local v23           #result:Lcom/android/internal/telephony/DataConnection$UpdateLinkPropertyResult;
    :cond_12
    if-eqz v20, :cond_15

    if-nez v19, :cond_15

    .line 1928
    sget-object v25, Lcom/android/internal/telephony/DctConstants$Activity;->DORMANT:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1930
    const-string v25, "onDataStateChanged: Data Activity updated to DORMANT. stopNetStatePoll"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1942
    :cond_13
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/telephony/PhoneBase;->notifyDataActivity()V

    .line 1944
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    if-eqz v25, :cond_14

    .line 1946
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getCellLocationId()I

    move-result v8

    .line 1947
    .local v8, cid:I
    const v25, 0xc3bd

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    const/16 v27, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v25 .. v26}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1952
    .end local v8           #cid:I
    :cond_14
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChange(ar): apnsToCleanup="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1953
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .restart local v17       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_16

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 1954
    .restart local v4       #apnContext:Lcom/android/internal/telephony/ApnContext;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_5

    .line 1934
    .end local v4           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v17           #i$:Ljava/util/Iterator;
    :cond_15
    sget-object v25, Lcom/android/internal/telephony/DctConstants$Activity;->NONE:Lcom/android/internal/telephony/DctConstants$Activity;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActivity:Lcom/android/internal/telephony/DctConstants$Activity;

    .line 1936
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onDataStateChanged: Data Activity updated to NONE. isAnyDataCallActive = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " isAnyDataCallDormant = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1940
    if-eqz v19, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    goto/16 :goto_4

    .line 1957
    .restart local v17       #i$:Ljava/util/Iterator;
    :cond_16
    const-string v25, "onDataStateChanged(ar): X"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1958
    return-void
.end method

.method private onRecordsLoaded()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2178
    const-string v3, "onRecordsLoaded: createAllApnList"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2179
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataConnectionFromSetting()I

    move-result v1

    .line 2180
    .local v1, gprsDefaultSIM:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecordsLoaded gprsDefaultSIM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2182
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 2188
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v3, :cond_2

    .line 2189
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2190
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 2191
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 2192
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const v4, 0x42029

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2193
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v3

    const v4, 0x4202a

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/CallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2188
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2198
    :cond_2
    const/4 v0, 0x1

    .line 2200
    .local v0, bGetDataCallList:Z
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2201
    const/4 v0, 0x0

    .line 2204
    :cond_3
    if-eqz v0, :cond_4

    .line 2205
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v4, 0x42004

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2208
    :cond_4
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2236
    return-void
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    .line 1201
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1202
    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .line 1203
    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    .line 1207
    :goto_0
    return-object v0

    .line 1205
    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 4
    .parameter "lastFailCauseCode"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 2059
    if-nez p2, :cond_1

    .line 2060
    const-string v1, "reconnectAfterFail: apnContext == null, impossible"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2110
    :cond_0
    :goto_0
    return-void

    .line 2064
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnectAfterFail: lastFailCause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " retryOverride="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " apnContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2067
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2069
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->isRetryNeeded()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2070
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2071
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "apnFailed"

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2074
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v1, :cond_5

    .line 2076
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->retryForeverUsingLastTimeout()V

    .line 2089
    :cond_3
    move v0, p3

    .line 2090
    .local v0, nextReconnectDelay:I
    if-gez v0, :cond_4

    .line 2091
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->getRetryTimer()I

    move-result v0

    .line 2092
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnection;->increaseRetryCount()V

    .line 2094
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reconnectAfterFail: increaseRetryCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextReconnectDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2099
    :cond_4
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 2101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 2103
    const-string v1, "reconnectAfterFail: NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2079
    .end local v0           #nextReconnectDelay:I
    :cond_5
    const-string v1, "reconnectAfterFail: activate failed, Reregistering to network"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2081
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    .line 2082
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/ApnContext;->setRetryCount(I)V

    goto/16 :goto_0

    .line 2107
    .restart local v0       #nextReconnectDelay:I
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 2049
    const/4 v0, 0x1

    .line 2051
    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2052
    const/4 v0, 0x0

    .line 2054
    :cond_0
    return v0
.end method

.method private setPreferredApn(I)V
    .locals 6
    .parameter "pos"

    .prologue
    const/4 v5, 0x0

    .line 3058
    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-nez v3, :cond_1

    .line 3059
    const-string v3, "setPreferredApn: X !canSEtPreferApn"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3083
    :cond_0
    :goto_0
    return-void

    .line 3063
    :cond_1
    const-string v3, "setPreferredApn: delete"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3064
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3066
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI_GEMINI:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    aget-object v0, v3, v4

    .line 3067
    .local v0, geminiUri:Landroid/net/Uri;
    invoke-virtual {v1, v0, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3072
    if-ltz p1, :cond_0

    .line 3073
    const-string v3, "setPreferredApn: insert"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3074
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3075
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3077
    sget-object v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PREFERAPN_NO_UPDATE_URI_GEMINI:[Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    aget-object v0, v3, v4

    .line 3078
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 16
    .parameter "apnContext"

    .prologue
    .line 1481
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupData: apnContext="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getApnProfileID(Ljava/lang/String;)I

    move-result v10

    .line 1486
    .local v10, profileId:I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getNextWaitingApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 1487
    .local v2, apn:Lcom/android/internal/telephony/ApnSetting;
    if-nez v2, :cond_0

    .line 1488
    const-string v12, "setupData: return for no apn found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1489
    const/4 v12, 0x0

    .line 1618
    :goto_0
    return v12

    .line 1492
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAvailableCidNum()I

    move-result v12

    const/4 v13, 0x1

    if-ge v12, v13, :cond_3

    .line 1493
    const-string v12, "No available CID now."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1494
    const-string v12, "default"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingNonDefaultApn:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingNonDefaultApn:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1498
    :cond_1
    const-string v12, "default"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    .line 1500
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1503
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->checkForConnectionForApnContext(Lcom/android/internal/telephony/ApnContext;)Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .line 1506
    .local v5, dc:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz v5, :cond_4

    const-string v12, "default"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1507
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v6

    .line 1508
    .local v6, dcApnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v6, :cond_4

    iget-object v12, v6, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 1509
    const-string v12, "The existing DC is not using prefered APN."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1510
    const/4 v5, 0x0

    .line 1514
    .end local v6           #dcApnSetting:Lcom/android/internal/telephony/ApnSetting;
    :cond_4
    if-nez v5, :cond_9

    .line 1515
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v5

    .line 1517
    if-nez v5, :cond_5

    .line 1518
    const-string v12, "setupData: No ready GsmDataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1521
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findFreeDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v5

    .line 1524
    :cond_5
    if-nez v5, :cond_6

    .line 1525
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createDataConnection()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v5

    .line 1528
    :cond_6
    if-nez v5, :cond_a

    .line 1529
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1531
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "default"

    if-ne v12, v13, :cond_7

    .line 1533
    const-string v12, "setupData: No free GsmDataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1534
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1538
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v13, "default"

    invoke-virtual {v12, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ApnContext;

    .line 1539
    .local v1, DisableapnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->clearWaitingApn()V

    .line 1540
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 1542
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1543
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1546
    .end local v1           #DisableapnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_8
    const-string v12, "setupData: No free GsmDataConnection found!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1547
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1551
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDataConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/DataConnectionAc;

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v2

    .line 1554
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDataConnectionId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1555
    .local v7, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setProfileId(I)V

    .line 1557
    invoke-virtual {v7}, Lcom/android/internal/telephony/DataConnectionAc;->getRefCountSync()I

    move-result v11

    .line 1558
    .local v11, refCount:I
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupData: init dc and apnContext refCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1561
    if-nez v11, :cond_b

    .line 1562
    const-string v12, "default"

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getRetryCount()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;ZI)V

    .line 1566
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v12

    if-eqz v12, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v12

    if-eq v12, v7, :cond_c

    .line 1567
    const-string v12, "setupData: dcac not null and not equal to assigned dcac."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1568
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1571
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 1572
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 1574
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 1575
    sget-object v12, Lcom/android/internal/telephony/DctConstants$State;->INITING:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1576
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v12

    if-eqz v12, :cond_e

    .line 1580
    const-string v12, "setupData: data reconnection pending"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1581
    sget-object v12, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 1582
    const-string v12, "mms"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 1583
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 1587
    :goto_1
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1585
    :cond_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1590
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mms"

    if-ne v12, v13, :cond_10

    .line 1591
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 1598
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/ApnContext;

    .line 1599
    .local v4, currApnCtx:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    .line 1601
    .local v3, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    move-object/from16 v0, p1

    if-eq v4, v0, :cond_f

    .line 1603
    if-eqz v3, :cond_f

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v12

    if-nez v12, :cond_f

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isSameProxy(Lcom/android/internal/telephony/ApnSetting;Lcom/android/internal/telephony/ApnSetting;)Z

    move-result v12

    if-eqz v12, :cond_f

    iget-object v12, v3, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 1605
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupData: disable conflict APN "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 1606
    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->disableApnType(Ljava/lang/String;)I

    .line 1607
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1612
    .end local v3           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    .end local v4           #currApnCtx:Lcom/android/internal/telephony/ApnContext;
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    .line 1613
    .local v9, msg:Landroid/os/Message;
    const v12, 0x42000

    iput v12, v9, Landroid/os/Message;->what:I

    .line 1614
    move-object/from16 v0, p1

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1615
    invoke-virtual {v5, v9, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->bringUp(Landroid/os/Message;Lcom/android/internal/telephony/ApnSetting;)V

    .line 1617
    const-string v12, "setupData: initing!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1618
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method private setupDataOnReadyApns(Ljava/lang/String;)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 886
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 887
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getReconnectIntentSync()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 888
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cancelReconnectAlarm(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 892
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-eqz v6, :cond_0

    .line 893
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v1

    .line 895
    .local v1, apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    const/4 v3, 0x0

    .line 896
    .local v3, hasDefault:Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 897
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 898
    const/4 v3, 0x1

    .line 902
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    iget-object v6, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v3, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->configureRetry(Lcom/android/internal/telephony/DataConnection;ZI)V

    goto :goto_0

    .line 909
    .end local v1           #apns:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/internal/telephony/ApnContext;>;"
    .end local v2           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    .end local v3           #hasDefault:Z
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 912
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 913
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_6

    .line 918
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 920
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 921
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v6, v7, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v6, v7, :cond_5

    .line 923
    :cond_7
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto :goto_1

    .line 928
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_8
    return-void
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 1
    .parameter "cause"

    .prologue
    .line 2038
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V
    .locals 13
    .parameter "delay"
    .parameter "apnContext"

    .prologue
    .line 2114
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v4

    .line 2116
    .local v4, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    if-nez v8, :cond_1

    .line 2118
    :cond_0
    const-string v8, "startAlarmForReconnect: null dcac or dc."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2165
    :goto_0
    return-void

    .line 2123
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isGeminiDcStateDetachingOrDetached(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2124
    const-string v8, "Current SIM is not active, stop reconnect."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logw(Ljava/lang/String;)V

    goto :goto_0

    .line 2129
    :cond_2
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "alarm"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 2132
    .local v1, am:Landroid/app/AlarmManager;
    new-instance v5, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v9}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2134
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 2135
    .local v6, reason:Ljava/lang/String;
    const-string v8, "reconnect_alarm_extra_reason"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2136
    iget-object v8, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getDataConnectionId()I

    move-result v3

    .line 2137
    .local v3, connectionId:I
    const-string v8, "reconnect_alarm_extra_type"

    invoke-virtual {v5, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2138
    invoke-virtual {p2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    .line 2140
    .local v2, apnType:Ljava/lang/String;
    const-string v8, "simId"

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2149
    iget-object v8, v4, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v8}, Lcom/android/internal/telephony/DataConnection;->getRetryCount()I

    move-result v7

    .line 2150
    .local v7, retryCount:I
    const-string v8, "reconnect_alaram_extra_retry_count"

    invoke-virtual {v5, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2153
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startAlarmForReconnect: next attempt in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-int/lit16 v9, p1, 0x3e8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "s"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason=\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' connectionId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2158
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/high16 v10, 0x800

    invoke-static {v8, v9, v5, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2161
    .local v0, alarmIntent:Landroid/app/PendingIntent;
    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    .line 2162
    const/4 v8, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    int-to-long v11, p1

    add-long/2addr v9, v11

    invoke-virtual {v1, v8, v9, v10, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"
    .parameter "retryOverride"

    .prologue
    .line 3053
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 3054
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    .line 3055
    return-void
.end method

.method private trySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 10
    .parameter "apnContext"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 953
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, apnType:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData for type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 957
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData with mIsPsRestricted="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 960
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 963
    sget-object v7, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {p1, v7}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 964
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v7, "trySetupData: (fix?) We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1032
    :goto_0
    return v5

    .line 970
    :cond_0
    const-string v8, "default"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 971
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataConnectionFromSetting()I

    move-result v3

    .line 972
    .local v3, gprsDefaultSIM:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 974
    .local v4, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gprsDefaultSIM:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 975
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    if-eq v3, v8, :cond_1

    .line 976
    const-string v8, "The setting is off(1)"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    move v5, v7

    .line 977
    goto :goto_0

    .line 978
    :cond_1
    if-gez v3, :cond_2

    .line 979
    const-string v8, "The setting is off(2)"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    move v5, v7

    .line 980
    goto :goto_0

    .line 981
    :cond_2
    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isGprsDetachingOrDetached(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    const-string v9, "dataAttached"

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 983
    const-string v8, "trySetupData: detaching or detached state."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    move v5, v7

    .line 984
    goto :goto_0

    .line 989
    .end local v3           #gprsDefaultSIM:I
    .end local v4           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->DISCONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_4

    .line 990
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trySetupData:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is DISCONNECTING, trun on reactive flag."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/ApnContext;->setReactive(Z)V

    .line 994
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v2

    .line 995
    .local v2, desiredPowerState:Z
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v0

    .line 998
    .local v0, anyDataEnabled:Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v8, v9, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_9

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isEmergency()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1002
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_8

    .line 1003
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 1004
    .local v6, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1005
    const-string v8, "trySetupData: No APN found"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1006
    sget-object v8, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v8, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;)V

    .line 1007
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    move v5, v7

    .line 1008
    goto/16 :goto_0

    .line 995
    .end local v0           #anyDataEnabled:Z
    .end local v6           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isNotDefaultTypeDataEnabled()Z

    move-result v0

    goto :goto_1

    .line 1010
    .restart local v0       #anyDataEnabled:Z
    .restart local v6       #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_7
    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 1012
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "trySetupData: Create from mAllApns : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1018
    .end local v6           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/ApnSetting;>;"
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setup watingApns : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1021
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v5

    .line 1022
    .local v5, retValue:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1026
    .end local v5           #retValue:Z
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "try setup data but not executed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sPolicyDataEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v8, v9, :cond_a

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v8, v9, :cond_b

    .line 1030
    :cond_a
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    move v5, v7

    .line 1032
    goto/16 :goto_0
.end method

.method private trySetupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "reason"
    .parameter "type"

    .prologue
    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_2

    const-string v1, "(unspecified)"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPsRestricted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 936
    if-nez p2, :cond_0

    .line 937
    const-string p2, "default"

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 942
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySetupData new apn context for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 944
    new-instance v0, Lcom/android/internal/telephony/ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    const-string v1, "GSM"

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/ApnContext;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v1

    return v1

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    move-object v1, p1

    .line 932
    goto :goto_0
.end method


# virtual methods
.method public abortDataConnection()V
    .locals 3

    .prologue
    .line 4117
    const-string v2, "abortDataConnection()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4118
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnection;

    .line 4119
    .local v0, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->removeConnectMsg()V

    goto :goto_0

    .line 4121
    .end local v0           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method protected cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    .line 1064
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpAllConnections: tearDown="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1067
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 1068
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto :goto_0

    .line 1071
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 1072
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 1075
    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 1076
    return-void
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 3
    .parameter "type"

    .prologue
    .line 720
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableApnType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 721
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 723
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(IZ)V

    .line 725
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_0

    .line 727
    const-string v1, "diableApnType: return APN_REQUEST_STARTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    const/4 v1, 0x1

    .line 738
    :goto_0
    monitor-exit p0

    return v1

    .line 730
    :cond_0
    :try_start_1
    const-string v1, "disableApnType: return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 731
    const/4 v1, 0x4

    goto :goto_0

    .line 736
    :cond_1
    const-string v1, "disableApnType: no apn context was found, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 738
    const/4 v1, 0x3

    goto :goto_0

    .line 720
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public dispose()V
    .locals 4

    .prologue
    .line 365
    const-string v2, "GsmDCT.dispose"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 368
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 371
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    .line 374
    .local v1, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataNetworkStateChanged(Landroid/os/Handler;)V

    .line 376
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 377
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionAttached(Landroid/os/Handler;)V

    .line 379
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataConnectionDetached(Landroid/os/Handler;)V

    .line 380
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    .line 381
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    .line 382
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    .line 383
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    .line 384
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRegistrants(Landroid/os/Handler;)V

    .line 386
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_2

    .line 387
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 388
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    .line 389
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/CallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    .line 386
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 394
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 396
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetGprsDetach(Landroid/os/Handler;)V

    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForGetAvailableNetworksDone(Landroid/os/Handler;)V

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->destroyDataConnections()V

    .line 400
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 3421
    const-string v0, "GsmDataConnectionTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3422
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/DataConnectionTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mReregisterOnReconnectFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " canSetPreferApn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mApnObserver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getOverallState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mDataConnectionAsyncChannels=%s\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3428
    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 8
    .parameter "apnType"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 666
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v2

    .line 667
    .local v2, simId:I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 668
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabledGemini(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 669
    sget-object v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->PROPERTY_RIL_TEST_SIM:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is a test SIM and data is enabled on it, do PS attach"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 671
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setGprsConnType(ILandroid/os/Message;)V

    .line 678
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 679
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 680
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is type not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    const/4 v3, 0x2

    .line 696
    :goto_1
    monitor-exit p0

    return v3

    .line 673
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not a test SIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 666
    .end local v1           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #simId:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 685
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    .restart local v1       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #simId:I
    :cond_3
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableApnType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 687
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v5, v6, :cond_4

    .line 688
    const-string v4, "enableApnType: return APN_ALREADY_ACTIVE"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setEnabled(IZ)V

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType: new apn request for type "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " return APN_REQUEST_STARTED"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    .line 696
    goto/16 :goto_1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 435
    const-string v0, "finalize"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method protected findReadyDataConnection(Lcom/android/internal/telephony/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "apn"

    .prologue
    const/4 v1, 0x0

    .line 1454
    if-nez p1, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return-object v1

    .line 1458
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: apn string <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dcacs.size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1461
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/DataConnectionAc;

    .line 1462
    .local v2, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionAc;->getApnSettingSync()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v0

    .line 1464
    .local v0, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: dc apn string <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1467
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1468
    iget-object v1, v2, Lcom/android/internal/telephony/DataConnectionAc;->dataConnection:Lcom/android/internal/telephony/DataConnection;

    .line 1470
    .local v1, dc:Lcom/android/internal/telephony/DataConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyDataConnection: found ready GsmDataConnection= dcac="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1473
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    goto/16 :goto_0

    .line 1464
    .end local v1           #dc:Lcom/android/internal/telephony/DataConnection;
    :cond_3
    const-string v4, "null"

    goto :goto_1
.end method

.method protected getActionIntentDataStallAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    const-string v0, "com.android.internal.telephony.gprs-data-stall"

    return-object v0
.end method

.method protected getActionIntentReconnectAlarm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    const-string v0, "com.android.internal.telephony.gprs-reconnect"

    return-object v0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active apn string for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 571
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 573
    .local v1, apnSetting:Lcom/android/internal/telephony/ApnSetting;
    if-eqz v1, :cond_0

    .line 574
    iget-object v2, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    .line 577
    .end local v1           #apnSetting:Lcom/android/internal/telephony/ApnSetting;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3912
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 554
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 555
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 558
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 563
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public getAnyDataEnabled()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 765
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v5

    .line 766
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "mobile_data"

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z

    .line 769
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sPolicyDataEnabled:Z

    if-nez v4, :cond_2

    :cond_0
    monitor-exit v5

    move v2, v3

    .line 777
    :goto_1
    return v2

    :cond_1
    move v4, v3

    .line 766
    goto :goto_0

    .line 770
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 773
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 774
    monitor-exit v5

    goto :goto_1

    .line 778
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 777
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    goto :goto_1
.end method

.method protected getApnProfileID(Ljava/lang/String;)I
    .locals 1
    .parameter "apnType"

    .prologue
    .line 3359
    const-string v0, "ims"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    const/4 v0, 0x2

    .line 3370
    :goto_0
    return v0

    .line 3361
    :cond_0
    const-string v0, "fota"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3362
    const/4 v0, 0x3

    goto :goto_0

    .line 3363
    :cond_1
    const-string v0, "cbs"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3364
    const/4 v0, 0x4

    goto :goto_0

    .line 3365
    :cond_2
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3366
    const/16 v0, 0x3e9

    goto :goto_0

    .line 3367
    :cond_3
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3368
    const/16 v0, 0x3ea

    goto :goto_0

    .line 3370
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getAvailableCidNum()I
    .locals 2

    .prologue
    .line 4164
    const-string v0, "ril.cid.num"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 1

    .prologue
    .line 4107
    invoke-super {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDomesticRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isDomesticRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mFDTimer:Lcom/android/internal/telephony/gsm/FDTimer;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/FDTimer;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 540
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 541
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 542
    .local v1, dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get active pdp is not null, return link Capabilities for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkCapabilitiesSync()Landroid/net/LinkCapabilities;

    move-result-object v2

    .line 548
    .end local v1           #dataConnectionAc:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 547
    :cond_0
    const-string v2, "return new LinkCapabilities"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 548
    new-instance v2, Landroid/net/LinkCapabilities;

    invoke-direct {v2}, Landroid/net/LinkCapabilities;-><init>()V

    goto :goto_0
.end method

.method protected getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 525
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 526
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 527
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 528
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return link properites for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionAc;->getLinkPropertiesSync()Landroid/net/LinkProperties;

    move-result-object v2

    .line 534
    .end local v1           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    return-object v2

    .line 533
    :cond_0
    const-string v2, "return new LinkProperties"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 534
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    goto :goto_0
.end method

.method public getOverallState()Lcom/android/internal/telephony/DctConstants$State;
    .locals 8

    .prologue
    .line 606
    const/4 v4, 0x0

    .line 607
    .local v4, isConnecting:Z
    const/4 v5, 0x1

    .line 608
    .local v5, isFailed:Z
    const/4 v3, 0x0

    .line 609
    .local v3, isAnyEnabled:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .local v1, builder:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 611
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 612
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 615
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "overall state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 616
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 617
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 618
    const/4 v3, 0x1

    .line 619
    sget-object v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$5;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 622
    :pswitch_0
    const-string v6, "overall state is CONNECTED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 623
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    .line 650
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_2
    return-object v6

    .line 626
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    :pswitch_1
    const/4 v4, 0x1

    .line 627
    const/4 v5, 0x0

    .line 628
    goto :goto_1

    .line 631
    :pswitch_2
    const/4 v5, 0x0

    goto :goto_1

    .line 637
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_3
    if-nez v3, :cond_4

    .line 638
    const-string v6, "overall state is IDLE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 639
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 642
    :cond_4
    if-eqz v4, :cond_5

    .line 643
    const-string v6, "overall state is CONNECTING"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 644
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 645
    :cond_5
    if-nez v5, :cond_6

    .line 646
    const-string v6, "overall state is IDLE"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 647
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 649
    :cond_6
    const-string v6, "overall state is FAILED"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 650
    sget-object v6, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_2

    .line 619
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;
    .locals 2
    .parameter "apnType"

    .prologue
    .line 597
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 598
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 601
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    goto :goto_0
.end method

.method protected gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 1982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 1984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/ApnSetting;

    .line 1985
    return-void
.end method

.method public gprsDetachResetAPN()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 4072
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4073
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reset APN since GPRS detached ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4074
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v1

    .line 4075
    .local v1, dataConnection:Lcom/android/internal/telephony/DataConnection;
    if-eqz v1, :cond_1

    .line 4076
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v4

    .line 4077
    .local v4, state:Lcom/android/internal/telephony/DctConstants$State;
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->CONNECTING:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v4, v5, :cond_1

    .line 4078
    :cond_0
    const v5, 0x4200f

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4079
    .local v3, msg:Landroid/os/Message;
    const-string v5, "dataDetached"

    invoke-virtual {v1, v5, v3}, Lcom/android/internal/telephony/DataConnection;->tearDown(Ljava/lang/String;Landroid/os/Message;)V

    .line 4082
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #state:Lcom/android/internal/telephony/DctConstants$State;
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 4083
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 4084
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 4085
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_0

    .line 4087
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #dataConnection:Lcom/android/internal/telephony/DataConnection;
    :cond_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x3e6

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 3130
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "handleMessage msg="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3132
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v9, v9, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-eqz v9, :cond_0

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsDisposed:Z

    if-eqz v9, :cond_2

    .line 3133
    :cond_0
    const-string v9, "handleMessage: Ignore GSM msgs since GSM phone is inactive"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 3338
    :cond_1
    :goto_0
    return-void

    .line 3137
    :cond_2
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 3335
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 3139
    :sswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    .line 3143
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataConnectionDetached()V

    goto :goto_0

    .line 3147
    :sswitch_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataConnectionAttached()V

    goto :goto_0

    .line 3151
    :sswitch_3
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onDataStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 3155
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPollPdp()V

    goto :goto_0

    .line 3159
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->doRecovery()V

    goto :goto_0

    .line 3163
    :sswitch_6
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    .line 3173
    :sswitch_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 3175
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 3176
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    .line 3184
    :sswitch_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3185
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    .line 3189
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startScriPoll()V

    .line 3193
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3194
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 3195
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDataStallAlarm(Z)V

    goto :goto_0

    .line 3198
    :cond_3
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    sget-object v10, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v9, v10, :cond_4

    .line 3199
    const-string v9, "psRestrictEnabled"

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 3200
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 3201
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 3203
    :cond_4
    const-string v9, "psRestrictEnabled"

    const-string v10, "default"

    invoke-direct {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3207
    :sswitch_9
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/internal/telephony/ApnContext;

    if-eqz v9, :cond_5

    .line 3208
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/ApnContext;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    goto/16 :goto_0

    .line 3209
    :cond_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    if-eqz v9, :cond_6

    .line 3210
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3212
    :cond_6
    const-string v9, "EVENT_TRY_SETUP request w/o apnContext or String"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3217
    :sswitch_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    if-nez v9, :cond_7

    .line 3218
    .local v8, tearDown:Z
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_CLEAN_UP_CONNECTION tearDown="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3219
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Lcom/android/internal/telephony/ApnContext;

    if-eqz v9, :cond_8

    .line 3220
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/ApnContext;

    invoke-direct {p0, v8, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_0

    .end local v8           #tearDown:Z
    :cond_7
    move v8, v10

    .line 3217
    goto :goto_1

    .line 3222
    .restart local v8       #tearDown:Z
    :cond_8
    const-string v9, "EVENT_CLEAN_UP_CONNECTION request w/o apn context"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3229
    .end local v8           #tearDown:Z
    :sswitch_b
    const-string v9, "[SCRI]EVENT_SCRI_RESULT"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3230
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->handleScriResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 3234
    :sswitch_c
    const-string v9, "[SCRI]EVENT_SCRI_RETRY_TIMER"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3236
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->isDataTransmitting()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 3237
    const-string v9, "[SCRI]Data is transmitting, cancel retry mechanism."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3238
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput v8, v9, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3239
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3240
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriDataCount(Z)V

    .line 3241
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setPsSessionStatus(Z)V

    goto/16 :goto_0

    .line 3244
    :cond_9
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendScriCmd(Z)V

    goto/16 :goto_0

    .line 3250
    :sswitch_d
    const-string v9, "[SCRI]EVENT_SCRI_CMD_RESULT"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3251
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 3252
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_1

    .line 3253
    const-string v9, "command error in +ESCRI"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3254
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v9, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    goto/16 :goto_0

    .line 3259
    .end local v0           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    const-string v9, "[SCRI]EVENT_NW_RAT_CHANGED"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3260
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    iget-object v4, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 3261
    .local v4, rat:Ljava/lang/Integer;
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriNwType(I)I

    move-result v5

    .line 3263
    .local v5, result:I
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 3266
    :pswitch_0
    const-string v9, "[SCRI] InterRAT to 3G, Set mIsUmtsMode as true before startScriPoll()"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3267
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsUmtsMode:Z

    .line 3268
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startScriPoll()V

    goto/16 :goto_0

    .line 3273
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopScriPoll()V

    .line 3274
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsUmtsMode:Z

    goto/16 :goto_0

    .line 3283
    .end local v4           #rat:Ljava/lang/Integer;
    .end local v5           #result:I
    :sswitch_f
    const-string v9, "MSG_RESTART_RADIO_OFF_DONE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logi(Ljava/lang/String;)V

    .line 3284
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v7

    .line 3285
    .local v7, simId:I
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 3287
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3289
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 3290
    .local v2, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v6

    .line 3291
    .local v6, sim3G:I
    if-ne v6, v7, :cond_b

    .line 3292
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3294
    :cond_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set radio on through peer phone("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") since current phone is 2G protocol"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3295
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v9, v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v9, :cond_1

    .line 3296
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v9, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v3

    .line 3297
    .local v3, peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    iget-object v9, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 3303
    .end local v2           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3           #peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v6           #sim3G:I
    .end local v7           #simId:I
    :sswitch_10
    const-string v9, "MSG_RESTART_RADIO_ON_DONE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3308
    :sswitch_11
    const-string v9, "EVENT_PS_RAT_CHANGED"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3309
    const-string v9, "nwTypeChanged"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3312
    :sswitch_12
    const-string v9, "EVENT_GET_AVAILABLE_NETWORK_DONE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3313
    const-string v9, "psRestrictDisabled"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3316
    :sswitch_13
    const-string v9, "EVENT_VOICE_CALL_STARTED_PEER"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3317
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onVoiceCallStarted()V

    goto/16 :goto_0

    .line 3320
    :sswitch_14
    const-string v9, "EVENT_VOICE_CALL_ENDED_PEER"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onVoiceCallEndedPeer()V

    goto/16 :goto_0

    .line 3324
    :sswitch_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_RESET_PDP_DONE cid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3328
    :sswitch_16
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    iget-object v9, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v1, v9, v8

    .line 3329
    .local v1, cid:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SET_PACKETS_FLUSH cid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3330
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onPacketsFlush(I)V

    goto/16 :goto_0

    .line 3137
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e6 -> :sswitch_10
        0x3e7 -> :sswitch_f
        0x42002 -> :sswitch_0
        0x42003 -> :sswitch_9
        0x42004 -> :sswitch_3
        0x42005 -> :sswitch_4
        0x42009 -> :sswitch_1
        0x42010 -> :sswitch_2
        0x42012 -> :sswitch_5
        0x42013 -> :sswitch_6
        0x42016 -> :sswitch_7
        0x42017 -> :sswitch_8
        0x42018 -> :sswitch_a
        0x42022 -> :sswitch_b
        0x42023 -> :sswitch_c
        0x42024 -> :sswitch_d
        0x42025 -> :sswitch_e
        0x42026 -> :sswitch_11
        0x42027 -> :sswitch_12
        0x42029 -> :sswitch_14
        0x4202a -> :sswitch_13
        0x4202b -> :sswitch_15
        0x4202e -> :sswitch_16
    .end sparse-switch

    .line 3263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected handleScriResult(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/16 v8, 0x7530

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 3511
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    move-object v1, v2

    check-cast v1, Ljava/lang/Integer;

    .line 3512
    .local v1, scriResult:Ljava/lang/Integer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI] handleScriResult :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3514
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_8

    .line 3515
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 3518
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3519
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setPsSessionStatus(Z)V

    .line 3520
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 3521
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget-boolean v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    if-eqz v2, :cond_2

    .line 3522
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput-boolean v5, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    .line 3523
    const-string v2, "1st AT+ESCRI=1 for RAUFollowOnProceed is sent to modem successfully"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3564
    :cond_2
    :goto_0
    return-void

    .line 3528
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 3529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI] RAU with FollowOnProceed: RRC in connected state,scriState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getScriState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3530
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput-boolean v6, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mPeriodicRAUFollowOnProceedEnable:Z

    .line 3531
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput-boolean v6, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    goto :goto_0

    .line 3534
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI] mScriManager.retryCounter :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3535
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setPsSessionStatus(Z)V

    .line 3536
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    if-ge v2, v4, :cond_7

    .line 3537
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3539
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    if-eqz v2, :cond_6

    .line 3540
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataCounter:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    .line 3545
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    if-le v2, v8, :cond_5

    .line 3546
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput v8, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    .line 3549
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3550
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    const v3, 0x42023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3551
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SCRI] Retry counter = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", timeout = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3542
    .end local v0           #msg:Landroid/os/Message;
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriTriggerDataOffCounter:I

    mul-int/lit16 v3, v3, 0x3e8

    iput v3, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryTimer:I

    goto :goto_1

    .line 3555
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iput v5, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mScriRetryCounter:I

    .line 3556
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    goto/16 :goto_0

    .line 3560
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3561
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    const v3, 0x42023

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3562
    .restart local v0       #msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    const-wide/16 v3, 0x7530

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected initApnContextsAndDataConnection()V
    .locals 11

    .prologue
    .line 456
    const-string v9, "net.def_data_on_boot"

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 458
    .local v3, defaultEnabled:Z
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 460
    .local v8, networkConfigStrings:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 461
    .local v7, networkConfigString:Ljava/lang/String;
    new-instance v6, Landroid/net/NetworkConfig;

    invoke-direct {v6, v7}, Landroid/net/NetworkConfig;-><init>(Ljava/lang/String;)V

    .line 462
    .local v6, networkConfig:Landroid/net/NetworkConfig;
    const/4 v0, 0x0

    .line 464
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget v9, v6, Landroid/net/NetworkConfig;->type:I

    sparse-switch v9, :sswitch_data_0

    .line 460
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 466
    :sswitch_0
    const-string v9, "default"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 467
    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/ApnContext;->setEnabled(Z)V

    .line 516
    :goto_2
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, v6, Landroid/net/NetworkConfig;->dependencyMet:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onSetDependencyMet(Ljava/lang/String;Z)V

    goto :goto_1

    .line 470
    :sswitch_1
    const-string v9, "mms"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 471
    goto :goto_2

    .line 473
    :sswitch_2
    const-string v9, "supl"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 474
    goto :goto_2

    .line 476
    :sswitch_3
    const-string v9, "dun"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 477
    goto :goto_2

    .line 479
    :sswitch_4
    const-string v9, "hipri"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 480
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, "default"

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 481
    .local v2, defaultContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v10

    invoke-direct {p0, v0, v9, v10}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_1

    .line 489
    .end local v2           #defaultContext:Lcom/android/internal/telephony/ApnContext;
    :sswitch_5
    const-string v9, "fota"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 490
    goto :goto_2

    .line 492
    :sswitch_6
    const-string v9, "ims"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 493
    goto :goto_2

    .line 495
    :sswitch_7
    const-string v9, "cbs"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 496
    goto :goto_2

    .line 498
    :sswitch_8
    const-string v9, "dm"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 499
    goto :goto_2

    .line 501
    :sswitch_9
    const-string v9, "net"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 502
    goto :goto_2

    .line 504
    :sswitch_a
    const-string v9, "wap"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 505
    goto :goto_2

    .line 507
    :sswitch_b
    const-string v9, "cmmail"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 508
    goto :goto_2

    .line 510
    :sswitch_c
    const-string v9, "rcse"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->addApnContext(Ljava/lang/String;)Lcom/android/internal/telephony/ApnContext;

    move-result-object v0

    .line 511
    goto :goto_2

    .line 521
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v6           #networkConfig:Landroid/net/NetworkConfig;
    .end local v7           #networkConfigString:Ljava/lang/String;
    :cond_1
    return-void

    .line 464
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0x22 -> :sswitch_8
        0x23 -> :sswitch_a
        0x24 -> :sswitch_9
        0x25 -> :sswitch_b
        0x26 -> :sswitch_c
    .end sparse-switch
.end method

.method public isAllConnectionInactive()Z
    .locals 5

    .prologue
    .line 4151
    const/4 v2, 0x1

    .line 4152
    .local v2, retValue:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/DataConnectionAc;

    .line 4153
    .local v0, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionAc;->isInactiveSync()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found active DC="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4155
    const/4 v2, 0x0

    .line 4159
    .end local v0           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllConnectionInactive(): retValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4160
    return v2
.end method

.method public isApnTypeActive(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 405
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    .line 744
    const-string v3, "dun"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->fetchDunApn()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 755
    :goto_0
    return v2

    .line 748
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 749
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAllApns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnSetting;

    .line 750
    .local v0, apn:Lcom/android/internal/telephony/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 755
    .end local v0           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isApnTypeEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "apnType"

    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 583
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x0

    .line 586
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method protected isConnected()Z
    .locals 4

    .prologue
    .line 2784
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2785
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v2, v3, :cond_0

    .line 2787
    const/4 v2, 0x1

    .line 2791
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected isDataAllowed()Z
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 828
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v10

    .line 829
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z

    .line 830
    .local v4, internalDataEnabled:Z
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v2

    .line 833
    .local v2, gprsState:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v1

    .line 834
    .local v1, desiredPowerState:Z
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/IccRecords;

    .line 835
    .local v6, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v8

    .line 836
    .local v8, recordsLoaded:Z
    :goto_0
    const/4 v5, 0x1

    .line 838
    .local v5, isPeerPhoneIdle:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    sget v10, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v10, :cond_0

    .line 839
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v10

    if-eq v3, v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v10, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_f

    .line 841
    const/4 v5, 0x0

    .line 847
    :cond_0
    if-eqz v2, :cond_1

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-eqz v10, :cond_10

    :cond_1
    if-eqz v8, :cond_10

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_2
    if-eqz v4, :cond_10

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v10

    if-eqz v10, :cond_10

    :cond_3
    if-eqz v1, :cond_10

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, v10, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v10}, Lcom/android/internal/telephony/CommandsInterface;->isGettingAvailableNetworks()Z

    move-result v10

    if-nez v10, :cond_10

    if-eqz v5, :cond_10

    const/4 v0, 0x1

    .line 859
    .local v0, allowed:Z
    :goto_2
    if-nez v0, :cond_d

    .line 860
    const-string v7, ""

    .line 861
    .local v7, reason:Ljava/lang/String;
    if-eqz v2, :cond_4

    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mAutoAttachOnCreation:Z

    if-nez v9, :cond_4

    .line 862
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - gprs= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 864
    :cond_4
    if-nez v8, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - SIM not loaded"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 865
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v9, v10, :cond_6

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v9

    if-nez v9, :cond_6

    .line 867
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - PhoneState= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Concurrent voice and data not allowed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 870
    :cond_6
    if-nez v4, :cond_7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - mInternalDataEnabled= false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 871
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v9

    if-nez v9, :cond_8

    .line 872
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Roaming and data roaming not enabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 874
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsPsRestricted:Z

    if-eqz v9, :cond_9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - mIsPsRestricted= true"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 875
    :cond_9
    if-nez v1, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - desiredPowerState= false"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 876
    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v9, v9, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9}, Lcom/android/internal/telephony/CommandsInterface;->isGettingAvailableNetworks()Z

    move-result v9

    if-eqz v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - querying available network"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 877
    :cond_b
    if-nez v5, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " - Peer phone is not IDLE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 878
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isDataAllowed: not allowed due to"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 880
    .end local v7           #reason:Ljava/lang/String;
    :cond_d
    return v0

    .line 830
    .end local v0           #allowed:Z
    .end local v1           #desiredPowerState:Z
    .end local v2           #gprsState:I
    .end local v3           #i:I
    .end local v4           #internalDataEnabled:Z
    .end local v5           #isPeerPhoneIdle:Z
    .end local v6           #r:Lcom/android/internal/telephony/IccRecords;
    .end local v8           #recordsLoaded:Z
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .restart local v1       #desiredPowerState:Z
    .restart local v2       #gprsState:I
    .restart local v4       #internalDataEnabled:Z
    .restart local v6       #r:Lcom/android/internal/telephony/IccRecords;
    :cond_e
    move v8, v9

    .line 835
    goto/16 :goto_0

    .line 838
    .restart local v3       #i:I
    .restart local v5       #isPeerPhoneIdle:Z
    .restart local v8       #recordsLoaded:Z
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_10
    move v0, v9

    .line 847
    goto/16 :goto_2
.end method

.method protected isDataAllowedAsOff(Ljava/lang/String;)Z
    .locals 1
    .parameter "apnType"

    .prologue
    .line 4113
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v0, p1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->isDataAllowedAsOff(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isDataPossible(Ljava/lang/String;)Z
    .locals 10
    .parameter "apnType"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 412
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "apnType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 413
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 414
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 430
    :goto_0
    return v6

    .line 417
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    .line 418
    .local v1, apnContextIsEnabled:Z
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    .line 419
    .local v2, apnContextState:Lcom/android/internal/telephony/DctConstants$State;
    if-eqz v1, :cond_1

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v2, v8, :cond_2

    :cond_1
    move v3, v7

    .line 421
    .local v3, apnTypePossible:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed()Z

    move-result v4

    .line 422
    .local v4, dataAllowed:Z
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    move v5, v7

    .line 425
    .local v5, possible:Z
    :goto_2
    const-string v8, "isDataPossible(%s): possible=%b isDataAllowed=%b apnTypePossible=%b apnContextisEnabled=%b apnContextState()=%s"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v7

    const/4 v6, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v9, v6

    const/4 v6, 0x5

    aput-object v2, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    move v6, v5

    .line 430
    goto :goto_0

    .end local v3           #apnTypePossible:Z
    .end local v4           #dataAllowed:Z
    .end local v5           #possible:Z
    :cond_2
    move v3, v6

    .line 419
    goto :goto_1

    .restart local v3       #apnTypePossible:Z
    .restart local v4       #dataAllowed:Z
    :cond_3
    move v5, v6

    .line 422
    goto :goto_2
.end method

.method public isDisconnected()Z
    .locals 3

    .prologue
    .line 2796
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2797
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isDisconnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2799
    const/4 v2, 0x0

    .line 2803
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isNotDefaultTypeDataEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4007
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataEnabledLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4008
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mInternalDataEnabled:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sPolicyDataEnabled:Z

    if-nez v4, :cond_1

    .line 4009
    :cond_0
    monitor-exit v3

    .line 4017
    :goto_0
    return v2

    .line 4010
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 4013
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    const-string v4, "default"

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4014
    const/4 v2, 0x1

    monitor-exit v3

    goto :goto_0

    .line 4018
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4017
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3415
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3417
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3976
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3980
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 4000
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3984
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 3992
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GDCT][simId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mLogSimId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3996
    return-void
.end method

.method protected notifyDataConnection(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    .line 2808
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2809
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2810
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataConnection: type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2812
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_1

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2816
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2817
    return-void
.end method

.method protected notifyOffApnsOfAvailability(Ljava/lang/String;)V
    .locals 6
    .parameter "reason"

    .prologue
    .line 1039
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 1040
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1041
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnOfAvailability type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1042
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_0

    move-object v2, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1047
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOffApnsOfAvailability skipped apn due to isReady==false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1052
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    :cond_2
    return-void
.end method

.method protected onActionIntentReconnectAlarm(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 220
    const-string v8, "simId"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 221
    .local v6, reconnect_for_simId:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GPRS reconnect alarm triggered by simId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Previous state was "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 222
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getMySimId()I

    move-result v8

    if-eq v6, v8, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v8, "reconnect_alarm_extra_reason"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, reason:Ljava/lang/String;
    const-string v8, "reconnect_alarm_extra_type"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 230
    .local v2, connectionId:I
    const-string v8, "reconnect_alaram_extra_retry_count"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 232
    .local v7, retryCount:I
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnectionAc;

    .line 235
    .local v3, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActionIntentReconnectAlarm: mState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mState:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " connectionId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " retryCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dcac="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataConnectionAsyncChannels="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mDataConnectionAsyncChannels:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 240
    if-eqz v3, :cond_0

    .line 241
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnectionAc;->getApnListSync()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 242
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setRetryCount(I)V

    .line 244
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    .line 246
    .local v1, apnContextState:Lcom/android/internal/telephony/DctConstants$State;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onActionIntentReconnectAlarm: apnContext state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 248
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v8, :cond_2

    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v1, v8, :cond_3

    .line 251
    :cond_2
    const-string v8, "onActionIntentReconnectAlarm: state is FAILED|IDLE, disassociate"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 254
    invoke-virtual {v0, v10}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 255
    sget-object v8, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 261
    :goto_2
    const v8, 0x42003

    invoke-virtual {p0, v8, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 258
    :cond_3
    const-string v8, "onActionIntentReconnectAlarm: keep associated"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 264
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v1           #apnContextState:Lcom/android/internal/telephony/DctConstants$State;
    :cond_4
    invoke-virtual {v3, v10}, Lcom/android/internal/telephony/DataConnectionAc;->setReconnectIntentSync(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method protected onCleanUpAllConnections(Ljava/lang/String;)V
    .locals 1
    .parameter "cause"

    .prologue
    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 1092
    return-void
.end method

.method protected onCleanUpConnection(ZILjava/lang/String;)V
    .locals 3
    .parameter "tearDown"
    .parameter "apnId"
    .parameter "reason"

    .prologue
    .line 2775
    const-string v1, "onCleanUpConnection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2776
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2777
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    .line 2778
    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2779
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2781
    :cond_0
    return-void
.end method

.method protected onDataConnectionDetached()V
    .locals 1

    .prologue
    .line 795
    const-string v0, "onDataConnectionDetached: stop polling and notify detached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 797
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 799
    const-string v0, "dataDetached"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 804
    const-string v0, "onDataConnectionDetached: stopScriPoll()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopScriPoll()V

    .line 808
    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 16
    .parameter "ar"

    .prologue
    .line 2451
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2452
    .local v3, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    const/4 v8, 0x0

    .line 2453
    .local v8, handleError:Z
    const/4 v2, 0x0

    .line 2455
    .local v2, apnContext:Lcom/android/internal/telephony/ApnContext;
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v12, v12, Lcom/android/internal/telephony/ApnContext;

    if-eqz v12, :cond_2

    .line 2456
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v2, Lcom/android/internal/telephony/ApnContext;

    .line 2461
    .restart local v2       #apnContext:Lcom/android/internal/telephony/ApnContext;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDataSetupCompleteOk(Landroid/os/AsyncResult;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2462
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v6

    .line 2482
    .local v6, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-nez v6, :cond_3

    .line 2483
    const-string v12, "onDataSetupComplete: no connection to DC, handle as error"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2484
    sget-object v3, Lcom/android/internal/telephony/DataConnection$FailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2485
    const/4 v8, 0x1

    .line 2569
    .end local v6           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :goto_0
    if-eqz v8, :cond_1

    .line 2571
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 2572
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v12

    if-nez v12, :cond_f

    .line 2574
    const-string v12, "onDataSetupComplete: All APN\'s had permanent failures, stop retrying"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2576
    sget-object v12, Lcom/android/internal/telephony/DctConstants$State;->FAILED:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2577
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const-string v13, "apnFailed"

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2580
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2582
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "mms"

    if-ne v12, v13, :cond_0

    .line 2583
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableWaitingApn()Z

    .line 2586
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2587
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "default"

    if-eq v12, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingApnList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2589
    const-string v12, "dataEnabled"

    const-string v13, "default"

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2618
    :cond_1
    :goto_1
    return-void

    .line 2458
    :cond_2
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v13, "onDataSetupComplete: No apnContext"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 2487
    .restart local v6       #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getDataConnection()Lcom/android/internal/telephony/DataConnection;

    move-result-object v5

    .line 2488
    .local v5, dc:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 2490
    .local v1, apn:Lcom/android/internal/telephony/ApnSetting;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataSetupComplete: success apn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez v1, :cond_8

    const-string v12, "unknown"

    :goto_2
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2492
    if-eqz v1, :cond_5

    iget-object v12, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v12, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_5

    .line 2494
    :try_start_0
    iget-object v9, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    .line 2495
    .local v9, port:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    const-string v9, "8080"

    .line 2496
    :cond_4
    new-instance v10, Landroid/net/ProxyProperties;

    iget-object v12, v1, Lcom/android/internal/telephony/ApnSetting;->proxy:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v10, v12, v13, v14}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 2498
    .local v10, proxy:Landroid/net/ProxyProperties;
    invoke-virtual {v6, v10}, Lcom/android/internal/telephony/DataConnectionAc;->setLinkPropertiesHttpProxySync(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2506
    .end local v9           #port:Ljava/lang/String;
    .end local v10           #proxy:Landroid/net/ProxyProperties;
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v12

    const-string v13, "default"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2507
    const-string v12, "gsm.defaultpdpcontext.active"

    const-string v13, "true"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-nez v12, :cond_6

    .line 2509
    const-string v12, "onDataSetupComplete: PREFERED APN is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2510
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    .line 2511
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    if-eqz v12, :cond_6

    .line 2512
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPreferredApn:Lcom/android/internal/telephony/ApnSetting;

    iget v12, v12, Lcom/android/internal/telephony/ApnSetting;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setPreferredApn(I)V

    .line 2519
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mTetheringExt:Lcom/mediatek/common/telephony/ITetheringExt;

    invoke-interface {v12, v2}, Lcom/mediatek/common/telephony/ITetheringExt;->onDataSetupComplete(Lcom/mediatek/common/telephony/IApnContext;)V

    .line 2522
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v12

    if-nez v12, :cond_7

    .line 2524
    const-string v12, "onDataSetupComplete: In 2G phone call, notify data REASON_VOICE_CALL_STARTED"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2525
    const-string v12, "2GVoiceCallStarted"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2527
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/ApnContext;)V

    .line 2532
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startScriPoll()V

    goto/16 :goto_0

    .line 2490
    :cond_8
    iget-object v12, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    goto/16 :goto_2

    .line 2499
    :catch_0
    move-exception v7

    .line 2500
    .local v7, e:Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onDataSetupComplete: NumberFormatException making ProxyProperties ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v1, Lcom/android/internal/telephony/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2516
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_9
    const-string v12, "gsm.defaultpdpcontext.active"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2537
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    .end local v5           #dc:Lcom/android/internal/telephony/DataConnection;
    .end local v6           #dcac:Lcom/android/internal/telephony/DataConnectionAc;
    :cond_a
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v3, v12

    check-cast v3, Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 2539
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v1

    .line 2540
    .restart local v1       #apn:Lcom/android/internal/telephony/ApnSetting;
    const-string v13, "onDataSetupComplete: error apn=%s cause=%s"

    const/4 v12, 0x2

    new-array v14, v12, [Ljava/lang/Object;

    const/4 v15, 0x0

    if-nez v1, :cond_e

    const-string v12, "unknown"

    :goto_5
    aput-object v12, v14, v15

    const/4 v12, 0x1

    aput-object v3, v14, v12

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2543
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2545
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getCellLocationId()I

    move-result v4

    .line 2546
    .local v4, cid:I
    const v12, 0xc3b9

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2551
    .end local v4           #cid:I
    :cond_b
    invoke-virtual {v3}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->decWaitingApnsPermFailCount()V

    .line 2553
    :cond_c
    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getApnSetting()Lcom/android/internal/telephony/ApnSetting;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->removeWaitingApn(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2554
    sget-object v12, Lcom/android/internal/telephony/DataConnection$FailCause;->GMM_ERROR:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne v3, v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v12

    if-eqz v12, :cond_d

    .line 2557
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    .line 2558
    const-string v12, "onDataSetupComplete: GMM_ERROR, wait for GPRS attach to retry."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2561
    :cond_d
    const-string v12, "onDataSetupComplete: WaitingApns.size=%d WaitingApnsPermFailureCountDown=%d"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v2}, Lcom/android/internal/telephony/ApnContext;->getWaitingApnsPermFailCount()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2566
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 2540
    :cond_e
    iget-object v12, v1, Lcom/android/internal/telephony/ApnSetting;->apn:Ljava/lang/String;

    goto/16 :goto_5

    .line 2597
    .end local v1           #apn:Lcom/android/internal/telephony/ApnSetting;
    :cond_f
    const-string v12, "onDataSetupComplete: Not all permanent failures, retry"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2599
    const/4 v11, -0x1

    .line 2600
    .local v11, retryOverride:I
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v12, v12, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    if-eqz v12, :cond_10

    .line 2601
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v12, Lcom/android/internal/telephony/DataConnection$CallSetupException;

    invoke-virtual {v12}, Lcom/android/internal/telephony/DataConnection$CallSetupException;->getRetryOverride()I

    move-result v11

    .line 2604
    :cond_10
    const v12, 0x7fffffff

    if-ne v11, v12, :cond_11

    .line 2605
    const-string v12, "No retry is suggested."

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2607
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2, v11}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/ApnContext;I)V

    goto/16 :goto_1

    .line 2611
    .end local v11           #retryOverride:I
    :cond_12
    const-string v12, "onDataSetupComplete: Try next APN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2612
    sget-object v12, Lcom/android/internal/telephony/DctConstants$State;->SCANNING:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v2, v12}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2615
    sget v12, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DELAY_MILLIS:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    goto/16 :goto_1
.end method

.method protected onDisconnectDone(ILandroid/os/AsyncResult;)V
    .locals 8
    .parameter "connId"
    .parameter "ar"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2625
    const/4 v1, 0x0

    .line 2626
    .local v1, enableApnRet:Z
    const/4 v0, 0x0

    .line 2628
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    iget-object v2, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/ApnContext;

    if-eqz v2, :cond_3

    .line 2629
    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2635
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnectDone: EVENT_DISCONNECT_DONE apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2640
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2641
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableWaitingApn()Z

    move-result v1

    .line 2642
    if-eqz v1, :cond_0

    .line 2643
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    if-ne v2, v3, :cond_0

    .line 2645
    const-string v2, "radioTurnedOff"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnContext;->setReason(Ljava/lang/String;)V

    .line 2646
    const-string v2, "onDisconnectoinDone: set reason to radio turned off to avoid retry."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 2655
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingNonDefaultApn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2656
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mWaitingNonDefaultApn:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableApnType(Ljava/lang/String;)I

    .line 2659
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/ApnContext;->setState(Lcom/android/internal/telephony/DctConstants$State;)V

    .line 2662
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReactive()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnectDone(): isReactive() == true, notify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " APN with state CONNECTING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2664
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneConstants$DataState;)V

    .line 2668
    :goto_1
    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/ApnContext;->setReactive(Z)V

    .line 2672
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2675
    const-string v2, "All data connections are terminated:stopScriPoll()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopScriPoll()V

    .line 2678
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/ServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2680
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2681
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2682
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    .line 2714
    :cond_2
    :goto_2
    return-void

    .line 2631
    :cond_3
    const-string v2, "onDisconnectDone: Invalid ar in onDisconnectDone, ignore"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2650
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mms"

    if-ne v2, v3, :cond_0

    .line 2651
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->enableWaitingApn()Z

    goto/16 :goto_0

    .line 2666
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2694
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isReady()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2695
    const-string v2, "gsm.defaultpdpcontext.active"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    sget v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->APN_DELAY_MILLIS:I

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startAlarmForReconnect(ILcom/android/internal/telephony/ApnContext;)V

    .line 2706
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2707
    if-nez v1, :cond_2

    .line 2708
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "default"

    if-eq v2, v3, :cond_2

    .line 2710
    const-string v2, "dataEnabled"

    const-string v3, "default"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 2701
    :cond_7
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setApnSetting(Lcom/android/internal/telephony/ApnSetting;)V

    .line 2702
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnection(Lcom/android/internal/telephony/DataConnection;)V

    .line 2703
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/ApnContext;->setDataConnectionAc(Lcom/android/internal/telephony/DataConnectionAc;)V

    goto :goto_3
.end method

.method protected onEnableApn(II)V
    .locals 4
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x1

    .line 2355
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2356
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_0

    .line 2357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnableApn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): NO ApnContext"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    .line 2363
    :goto_0
    return-void

    .line 2361
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnableApn: apnContext="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " call applyNewState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2362
    if-ne p2, v1, :cond_1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDependencyMet()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected onPacketsFlush(I)V
    .locals 5
    .parameter "cid"

    .prologue
    .line 3342
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->findDataConnectionAcByCid(I)Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v1

    .line 3343
    .local v1, dcac:Lcom/android/internal/telephony/DataConnectionAc;
    if-eqz v1, :cond_0

    .line 3344
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 3345
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->getDataConnectionAc()Lcom/android/internal/telephony/DataConnectionAc;

    move-result-object v3

    if-ne v3, v1, :cond_0

    .line 3348
    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/android/internal/telephony/DctConstants;->ACTION_SET_PACKETS_FLUSH:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3349
    .local v2, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3355
    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3354
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPacketsFlush() not found, cid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    .line 2717
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DctConstants$State;->CONNECTED:Lcom/android/internal/telephony/DctConstants$State;

    if-ne v0, v1, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v1, 0x42004

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 2720
    const v0, 0x42005

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2722
    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2409
    const-string v1, "onRadioAvailable"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2410
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2414
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2416
    const-string v1, "onRadioAvailable: We\'re on the simulator; assuming data is connected"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2419
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    .line 2420
    .local v0, r:Lcom/android/internal/telephony/IccRecords;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2421
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2424
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getOverallState()Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DctConstants$State;->IDLE:Lcom/android/internal/telephony/DctConstants$State;

    if-eq v1, v2, :cond_2

    .line 2425
    const/4 v1, 0x1

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/ApnContext;)V

    .line 2427
    :cond_2
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2434
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetAllRetryCounts()V

    .line 2435
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    .line 2437
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2440
    const-string v0, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2445
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2446
    return-void

    .line 2442
    :cond_0
    const-string v0, "onRadioOffOrNotAvailable: is off and clean up all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2443
    const-string v0, "radioTurnedOff"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOff()V
    .locals 1

    .prologue
    .line 2380
    const-string v0, "onRoamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2382
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 2390
    :goto_0
    return-void

    .line 2384
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2385
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2386
    const-string v0, "roamingOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    goto :goto_0

    .line 2388
    :cond_1
    const-string v0, "roamingOff"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onRoamingOn()V
    .locals 2

    .prologue
    .line 2394
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUserDataEnabled:Z

    if-nez v0, :cond_0

    .line 2405
    :goto_0
    return-void

    .line 2396
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2397
    const-string v0, "onRoamingOn: setup data on roaming"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2398
    const-string v0, "roamingOn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2399
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    goto :goto_0

    .line 2401
    :cond_1
    const-string v0, "onRoamingOn: Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2402
    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 2403
    const-string v0, "roamingOn"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDependencyMet(Ljava/lang/String;Z)V
    .locals 3
    .parameter "apnType"
    .parameter "met"

    .prologue
    .line 2241
    const-string v1, "hipri"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2255
    :cond_0
    :goto_0
    return-void

    .line 2243
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2244
    .local v0, apnContext:Lcom/android/internal/telephony/ApnContext;
    if-nez v0, :cond_2

    .line 2245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetDependencyMet: ApnContext not found in onSetDependencyMet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2249
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    .line 2250
    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2252
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "hipri"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/ApnContext;
    check-cast v0, Lcom/android/internal/telephony/ApnContext;

    .line 2253
    .restart local v0       #apnContext:Lcom/android/internal/telephony/ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ApnContext;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->applyNewState(Lcom/android/internal/telephony/ApnContext;ZZ)V

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/ApnContext;)Z
    .locals 2
    .parameter "apnContext"

    .prologue
    .line 2374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: apnContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrySetupData: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2369
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2370
    const/4 v0, 0x1

    return v0
.end method

.method protected onUpdateIcc()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3390
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 3410
    :cond_0
    :goto_0
    return-void

    .line 3394
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v0

    .line 3396
    .local v0, newIccRecords:Lcom/android/internal/telephony/IccRecords;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/IccRecords;

    .line 3397
    .local v1, r:Lcom/android/internal/telephony/IccRecords;
    if-eq v1, v0, :cond_0

    .line 3398
    if-eqz v1, :cond_2

    .line 3399
    const-string v2, "Removing stale icc objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3400
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 3401
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3403
    :cond_2
    if-eqz v0, :cond_0

    .line 3404
    const-string v2, "New records found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 3405
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3406
    const v2, 0x42002

    invoke-virtual {v0, p0, v2, v4}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected onVoiceCallEnded()V
    .locals 1

    .prologue
    .line 2741
    const-string v0, "onVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2744
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2747
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2748
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2749
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 2750
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 2757
    :cond_1
    :goto_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2758
    return-void

    .line 2753
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->resetPollStats()V

    goto :goto_0
.end method

.method protected onVoiceCallEndedPeer()V
    .locals 1

    .prologue
    .line 2761
    const-string v0, "onVoiceCallEndedPeer"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2763
    const-string v0, "2GVoiceCallEnded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startNetStatPoll()V

    .line 2767
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->startDataStallAlarm(Z)V

    .line 2770
    :cond_0
    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V

    .line 2771
    return-void
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    .line 2726
    const-string v0, "onVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2729
    const-string v0, "2GVoiceCallStarted"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyDataConnection(Ljava/lang/String;)V

    .line 2732
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2733
    const-string v0, "onVoiceCallStarted stop polling"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopNetStatPoll()V

    .line 2735
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->stopDataStallAlarm()V

    .line 2737
    :cond_1
    return-void
.end method

.method registerSCRIEvent(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3474
    return-void
.end method

.method protected restartRadio()V
    .locals 10

    .prologue
    const/16 v9, 0x3e7

    const/4 v8, 0x0

    .line 1989
    const-string v6, "restartRadio: ************TURN OFF RADIO**************"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1991
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v5

    .line 1992
    .local v5, simId:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dual_sim_mode_setting"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1993
    .local v0, dualSimMode:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restartRadio: dual sim mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1994
    const/4 v6, 0x1

    const-string v7, "radioTurnedOff"

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .line 1995
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->powerOffRadioSafely(Lcom/android/internal/telephony/DataConnectionTracker;)V

    .line 1997
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start to radio off ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 1999
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2001
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v9, v0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    .line 2028
    :cond_0
    :goto_0
    const-string v6, "net.ppp.reset-by-timeout"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2029
    .local v3, reset:I
    const-string v6, "net.ppp.reset-by-timeout"

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    return-void

    .line 2004
    .end local v3           #reset:I
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 2005
    .local v1, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v4

    .line 2006
    .local v4, sim3G:I
    if-ne v4, v5, :cond_2

    .line 2007
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v6, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v7, v5, 0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    invoke-virtual {p0, v9, v0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 2009
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set radio off through peer phone("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") since current phone is 2G protocol"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2010
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v6, :cond_0

    .line 2011
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v6, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getPeerPhones(I)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v2

    .line 2012
    .local v2, peerPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    iget-object v6, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    add-int/lit8 v7, v5, 0x1

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v7, v0

    invoke-virtual {p0, v9, v0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setRadioMode(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method protected sendScriCmd(Z)V
    .locals 7
    .parameter "retry"

    .prologue
    .line 3568
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getPsSessionStatus()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p1, :cond_5

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsUmtsMode:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mChargingMode:Z

    if-nez v4, :cond_5

    .line 3573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] Send SCRI command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3574
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsScreenOn:Z

    if-nez v4, :cond_1

    .line 3575
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x1

    const v6, 0x42024

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setScri(ZLandroid/os/Message;)V

    .line 3576
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V

    .line 3615
    :goto_0
    return-void

    .line 3578
    :cond_1
    const/4 v1, 0x0

    .line 3581
    .local v1, forceFlag:Z
    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsCallPrefer:Z

    if-nez v4, :cond_2

    .line 3582
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 3583
    .local v2, mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    const/4 v3, 0x0

    .local v3, peerSimId:I
    :goto_1
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v4, :cond_2

    .line 3584
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getMySimId()I

    move-result v4

    if-eq v3, v4, :cond_4

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isRadioOnGemini(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3586
    const/4 v1, 0x1

    .line 3593
    .end local v2           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3           #peerSimId:I
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mGsmDCTExt:Lcom/mediatek/common/telephony/IGsmDCTExt;

    invoke-interface {v4, v1}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getFDForceFlag(Z)Z

    move-result v1

    .line 3596
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    iget-boolean v4, v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->mFirstESCRIRAUFollowOnProceed:Z

    if-eqz v4, :cond_3

    .line 3597
    const/4 v1, 0x1

    .line 3598
    const-string v4, "[SCRI]Screen ON: but RAUFollowOnProceed sets forceFlag as true"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3601
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI]Screen ON: send AT+ESCRI with forceFlag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3602
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const v5, 0x42024

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setScri(ZLandroid/os/Message;)V

    .line 3603
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3612
    .end local v1           #forceFlag:Z
    :catch_0
    move-exception v0

    .line 3613
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 3583
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #forceFlag:Z
    .restart local v2       #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .restart local v3       #peerSimId:I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3607
    .end local v1           #forceFlag:Z
    .end local v2           #mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;
    .end local v3           #peerSimId:I
    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] Ingore SCRI command due to ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->getPsSessionStatus()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] mIsUmtsMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsUmtsMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SCRI] mIsTetheredMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mIsTetheredMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 3610
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mScriManager:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$ScriManager;->setScriState(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 1
    .parameter "newTimerValue"
    .parameter "onComplete"

    .prologue
    .line 4126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mFDTimer:Lcom/android/internal/telephony/gsm/FDTimer;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gsm/FDTimer;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/DctConstants$State;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState should not be used in GSM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method protected startScriPoll()V
    .locals 0

    .prologue
    .line 3494
    return-void
.end method

.method protected stopScriPoll()V
    .locals 0

    .prologue
    .line 3508
    return-void
.end method

.method public updateFDMDEnableStatus(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    .line 4136
    const-string v2, "ril.fd.mode"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4137
    .local v1, FD_MD_Enable_Mode:I
    const-string v2, "gsm.3gswitch"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 4138
    .local v0, FDSimID:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateFDMDEnableStatus():enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",FD_MD_Enable_Mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", 3gSimID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->logd(Ljava/lang/String;)V

    .line 4139
    if-ne v1, v4, :cond_0

    .line 4146
    :cond_0
    return-void
.end method
