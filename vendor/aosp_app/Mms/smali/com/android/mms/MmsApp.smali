.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsSettingsHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/MmsApp$ToastHandler;
    }
.end annotation


# static fields
.field public static final EVENT_QUIT:I = 0x64

.field public static final LOG_TAG:Ljava/lang/String; = "Mms"

.field public static final MSG_DONE:I = 0xc

.field public static final MSG_MMS_CAN_NOT_OPEN:I = 0xa

.field public static final MSG_MMS_CAN_NOT_SAVE:I = 0x8

.field public static final MSG_MMS_TOO_BIG_TO_DOWNLOAD:I = 0x6

.field public static final MSG_RETRIEVE_FAILURE_DEVICE_MEMORY_FULL:I = 0x2

.field public static final MSG_SHOW_TRANSIENTLY_FAILED_NOTIFICATION:I = 0x4

.field public static final TXN_TAG:Ljava/lang/String; = "Mms/Txn"

.field public static mIsFirstLaunch:Z

.field private static mToastHandler:Lcom/android/mms/MmsApp$ToastHandler;

.field private static mToastthread:Landroid/os/HandlerThread;

.field private static sMmsApp:Lcom/android/mms/MmsApp;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field mCreationMode:Ljava/lang/String;

.field private mDrmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

.field mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

.field private mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field mSmsServiceCenter:Ljava/lang/String;

.field private mSmsStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 99
    sput-object v0, Lcom/android/mms/MmsApp;->mToastthread:Landroid/os/HandlerThread;

    .line 100
    sput-object v0, Lcom/android/mms/MmsApp;->mToastHandler:Lcom/android/mms/MmsApp$ToastHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 338
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCreationMode:Ljava/lang/String;

    .line 339
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    .line 378
    new-instance v0, Lcom/android/mms/MmsApp$4;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$4;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mSmsStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private InitToastThread()V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/android/mms/MmsApp;->mToastHandler:Lcom/android/mms/MmsApp$ToastHandler;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/android/mms/MmsApp$ToastHandler;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$ToastHandler;-><init>(Lcom/android/mms/MmsApp;)V

    sput-object v0, Lcom/android/mms/MmsApp;->mToastHandler:Lcom/android/mms/MmsApp$ToastHandler;

    .line 279
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/MmsApp;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/mms/MmsApp;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/MmsApp;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/mms/MmsApp;->setSmsServiceCenter(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/MmsApp;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mSmsStateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 187
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getToastHandler()Lcom/android/mms/MmsApp$ToastHandler;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/android/mms/MmsApp;->mToastHandler:Lcom/android/mms/MmsApp$ToastHandler;

    return-object v0
.end method

.method private setCreactionMode(Ljava/lang/String;)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 348
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCreactionMode, mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    .local v0, context:Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 352
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_mms_creation_mode"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 355
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private setSmsServiceCenter(ILjava/lang/String;)V
    .locals 4
    .parameter "simId"
    .parameter "number"

    .prologue
    .line 358
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmsCenter,  simId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v0

    .line 360
    .local v0, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/MmsApp$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/android/mms/MmsApp$3;-><init>(Lcom/android/mms/MmsApp;Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 371
    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    .line 260
    .local v0, country:Landroid/location/Country;
    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 264
    .end local v0           #country:Landroid/location/Country;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object v1
.end method

.method public getDrmManagerClient()Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mDrmManagerClient:Lcom/mediatek/encapsulation/android/drm/EncapsulatedDrmManagerClient;

    return-object v0
.end method

.method public getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;
    .locals 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Lcom/android/mms/util/PduLoaderManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/PduLoaderManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/mms/util/ThumbnailManager;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/mms/util/ThumbnailManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 228
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 110
    const-string v1, "Mms/Txn"

    const-string v2, "MmsApp.onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const-string v1, "Mms:strictmode"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 121
    :cond_0
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 123
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->startIpService()V

    .line 124
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser2;->init(Landroid/content/Context;)V

    .line 127
    const v1, 0x7f05000d

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 130
    const-string v1, "country_detector"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 131
    new-instance v1, Lcom/android/mms/MmsApp$1;

    invoke-direct {v1, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 137
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v2, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 141
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 142
    invoke-static {p0}, Lcom/android/mms/MmsPluginManager;->initPlugins(Landroid/content/Context;)V

    .line 143
    invoke-static {p0}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;)V

    .line 144
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 147
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 148
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 149
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 151
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->InitToastThread()V

    .line 155
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    invoke-static {p0}, Lcom/android/mms/util/MuteCache;->init(Landroid/content/Context;)V

    .line 160
    :cond_1
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTransaction;

    .line 162
    .local v0, mmsTransactionPlugin:Lcom/mediatek/mms/ext/IMmsTransaction;
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsTransaction;->isRestartPendingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 163
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 173
    :goto_0
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    const-string v2, "MmsApp.onCreate"

    invoke-static {v1, v2}, Lcom/android/mms/MmsConfig;->printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsSettings;

    iput-object v1, p0, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    .line 178
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MmsApp#onCreate, mMmsSettingsPlugin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mMmsSettingsPlugin:Lcom/mediatek/mms/ext/IMmsSettings;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsSettings;->init(Lcom/mediatek/mms/ext/IMmsSettingsHost;)V

    .line 182
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/MmsApp;->mIsFirstLaunch:Z

    .line 184
    return-void

    .line 166
    :cond_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/MmsApp$2;

    invoke-direct {v2, p0}, Lcom/android/mms/MmsApp$2;-><init>(Lcom/android/mms/MmsApp;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 199
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mPduLoaderManager:Lcom/android/mms/util/PduLoaderManager;

    invoke-virtual {v0}, Lcom/android/mms/util/PduLoaderManager;->onLowMemory()V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mThumbnailManager:Lcom/android/mms/util/ThumbnailManager;

    invoke-virtual {v0}, Lcom/android/mms/util/ThumbnailManager;->onLowMemory()V

    .line 206
    :cond_1
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 193
    return-void
.end method

.method public registerSmsStateReceiver()V
    .locals 2

    .prologue
    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mms/MmsApp;->mSmsStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    return-void
.end method

.method public setSmsValues(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, values:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "creationmode"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCreationMode:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCreationMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/MmsApp;->setCreactionMode(Ljava/lang/String;)V

    .line 343
    const-string v0, "servicecenter"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    .line 344
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mSmsServiceCenter:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/MmsApp;->setSmsServiceCenter(ILjava/lang/String;)V

    .line 345
    return-void
.end method
