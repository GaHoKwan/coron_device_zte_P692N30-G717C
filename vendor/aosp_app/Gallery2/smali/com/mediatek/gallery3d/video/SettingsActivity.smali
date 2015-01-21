.class public Lcom/mediatek/gallery3d/video/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field private static final ACTION_APN:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field private static final DEFAULTAPN_URI:Landroid/net/Uri; = null

.field private static final DEFAULTAPN_URI_GEMINI:Landroid/net/Uri; = null

.field private static final DEFAULT_HTTP_BUFFER_SIZE:I = 0xa

.field private static final DEFAULT_RTSP_BUFFER_SIZE:I = 0x6

.field private static final EXTRA_SLOTID:Ljava/lang/String; = "slotid"

.field private static final KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "MTK-HTTP-CACHE-SIZE"

.field public static final KEY_LOGO_BITMAP:Ljava/lang/String; = "logo-bitmap"

.field private static final KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "MTK-RTSP-CACHE-SIZE"

.field private static final LOG:Z = true

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERAPN_URI_GEMINI:Landroid/net/Uri; = null

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final PREFERRED_APN_URI_GEMINI:Ljava/lang/String; = "content://telephony/carriers_gemini/preferapn"

.field private static final PREF_KEY_APN:Ljava/lang/String; = "apn_settings"

.field private static final PREF_KEY_ENABLE_HTTP_PROXY:Ljava/lang/String; = "enable_http_proxy"

.field private static final PREF_KEY_ENABLE_RTSP_PROXY:Ljava/lang/String; = "enable_rtsp_proxy"

.field private static final PREF_KEY_HTTP_BUFFER_SIZE:Ljava/lang/String; = "http_buffer_size"

.field private static final PREF_KEY_HTTP_PROXY:Ljava/lang/String; = "http_proxy_settings"

.field private static final PREF_KEY_RTSP_BUFFER_SIZE:Ljava/lang/String; = "rtsp_buffer_size"

.field private static final PREF_KEY_RTSP_PROXY:Ljava/lang/String; = "rtsp_proxy_settings"

.field private static final PREF_KEY_UDP_PORT:Ljava/lang/String; = "udp_port_settings"

.field public static final RESTORE_CARRIERS_URI:Ljava/lang/String; = "content://telephony/carriers/restore"

.field public static final RESTORE_CARRIERS_URI_GEMINI:Ljava/lang/String; = "content://telephony/carriers_gemini/restore"

.field private static final SETTING_KEY_HTTP_PROXY_ENABLED:Ljava/lang/String; = "mtk_http_proxy_enabled"

.field private static final SETTING_KEY_HTTP_PROXY_HOST:Ljava/lang/String; = "mtk_http_proxy_host"

.field private static final SETTING_KEY_HTTP_PROXY_PORT:Ljava/lang/String; = "mtk_http_proxy_port"

.field private static final SETTING_KEY_MAX_PORT:Ljava/lang/String; = "mtk_rtsp_max_udp_port"

.field private static final SETTING_KEY_MIN_PORT:Ljava/lang/String; = "mtk_rtsp_min_udp_port"

.field private static final SETTING_KEY_RTSP_PROXY_ENABLED:Ljava/lang/String; = "mtk_rtsp_proxy_enabled"

.field private static final SETTING_KEY_RTSP_PROXY_HOST:Ljava/lang/String; = "mtk_rtsp_proxy_host"

.field private static final SETTING_KEY_RTSP_PROXY_PORT:Ljava/lang/String; = "mtk_rtsp_proxy_port"

.field private static final SIM_CARD_1:I = 0x0

.field private static final SIM_CARD_2:I = 0x1

.field private static final SIM_CARD_3:I = 0x2

.field private static final SIM_CARD_4:I = 0x3

.field private static final SIM_CARD_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gallery2/VideoPlayer/SettingsActivity"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final UNKNOWN_PORT:I = -0x1


# instance fields
.field private mApnPref:Landroid/preference/Preference;

.field private mBufferSizeHttpPref:Landroid/preference/Preference;

.field private mBufferSizeRtspPref:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCr:Landroid/content/ContentResolver;

.field private mDefaultApnUri:Landroid/net/Uri;

.field private mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

.field private mHttpProxyPref:Landroid/preference/Preference;

.field private mMobileStateFilter:Landroid/content/IntentFilter;

.field private final mMobileStateReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

.field private mRestoreCarrierUri:Landroid/net/Uri;

.field private mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

.field private mRtspProxyPref:Landroid/preference/Preference;

.field private mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

.field private mUdpDialog:Landroid/app/AlertDialog;

.field private mUdpPortPref:Landroid/preference/Preference;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 284
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/video/SettingsActivity;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 285
    const-string v0, "content://telephony/carriers_gemini/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/video/SettingsActivity;->DEFAULTAPN_URI_GEMINI:Landroid/net/Uri;

    .line 287
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/video/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    .line 288
    const-string v0, "content://telephony/carriers_gemini/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/gallery3d/video/SettingsActivity;->PREFERAPN_URI_GEMINI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 430
    new-instance v0, Lcom/mediatek/gallery3d/video/SettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/SettingsActivity$3;-><init>(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshUdpPort()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gallery3d/video/SettingsActivity;)Lcom/mediatek/gallery3d/video/ProxyDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshRtspProxy()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshHttpProxy()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshApn()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeHttp()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gallery3d/video/SettingsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeRtsp()V

    return-void
.end method

.method private getApnName()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->getQueryWhere()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 338
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 339
    .local v9, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-object v0

    .line 343
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    if-eqz v6, :cond_2

    .line 349
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->getSelectedApnKey()I

    move-result v8

    .line 350
    .local v8, key:I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    .line 351
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 352
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_1

    .line 353
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 362
    .end local v8           #key:I
    :cond_2
    if-eqz v6, :cond_3

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_3
    :goto_1
    const-string v0, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApnName() return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 369
    goto :goto_0

    .line 359
    :catch_0
    move-exception v7

    .line 360
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    if-eqz v6, :cond_3

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 362
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 363
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getQueryWhere()Ljava/lang/String;
    .locals 5

    .prologue
    .line 296
    const-string v1, ""

    .line 297
    .local v1, where:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUri:Landroid/net/Uri;

    .line 298
    sget-object v2, Lcom/mediatek/gallery3d/video/SettingsActivity;->PREFERAPN_URI:Landroid/net/Uri;

    iput-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    .line 299
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v0, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 301
    .local v0, slotid:I
    packed-switch v0, :pswitch_data_0

    .line 323
    const-string v2, "Gallery2/VideoPlayer/SettingsActivity"

    const-string v3, "Can\'t get any valid SIM information"

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    .end local v0           #slotid:I
    :goto_0
    const-string v2, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() mUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v2, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() mRestoreCarrierUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v2, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getQueryWhere() where="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    return-object v1

    .line 303
    .restart local v0       #slotid:I
    :pswitch_0
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    const-string v2, "gsm.sim.operator.numeric.2"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    goto :goto_0

    .line 313
    :pswitch_2
    const-string v2, "gsm.sim.operator.numeric.3"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    goto :goto_0

    .line 318
    :pswitch_3
    const-string v2, "gsm.sim.operator.numeric.4"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    goto :goto_0

    .line 327
    .end local v0           #slotid:I
    :cond_0
    const-string v2, "gsm.sim.operator.numeric"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getSelectedApnKey()I
    .locals 9

    .prologue
    .line 373
    const/4 v8, -0x1

    .line 374
    .local v8, key:I
    const/4 v6, 0x0

    .line 376
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRestoreCarrierUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 382
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 388
    :cond_0
    if-eqz v6, :cond_1

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 393
    :cond_1
    :goto_0
    const-string v0, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey() key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return v8

    .line 385
    :catch_0
    move-exception v7

    .line 386
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    if-eqz v6, :cond_1

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 388
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 389
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private isGemini()Z
    .locals 3

    .prologue
    .line 423
    const/4 v0, 0x1

    .line 425
    .local v0, gemini:Z
    const-string v1, "Gallery2/VideoPlayer/SettingsActivity"

    const-string v2, "isGemini() return true"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x1

    return v1
.end method

.method private refreshApn()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshSIMInfo()V

    .line 142
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    const v1, 0x7f0c01e3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    const v1, 0x7f0c01e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v3, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->getApnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshBufferSizeHttp()V
    .locals 6

    .prologue
    .line 441
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v2, "MTK-HTTP-CACHE-SIZE"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 442
    .local v0, bufferSize:I
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    const v2, 0x7f0c021e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    const-string v1, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBufferSizeHttp() bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return-void
.end method

.method private refreshBufferSizeRtsp()V
    .locals 6

    .prologue
    .line 449
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v2, "MTK-RTSP-CACHE-SIZE"

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 450
    .local v0, bufferSize:I
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    const v2, 0x7f0c0221

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 452
    const-string v1, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBufferSizeRtsp() bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/app/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-void
.end method

.method private refreshHttpProxy()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 168
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v5, "mtk_http_proxy_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 169
    .local v0, enableProxy:Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_host"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 171
    .local v2, port:I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v6, :cond_1

    .line 172
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 178
    const-string v3, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshHttpProxy() enableProxy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .end local v0           #enableProxy:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_0
    move v0, v3

    .line 168
    goto :goto_0

    .line 174
    .restart local v0       #enableProxy:Z
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #port:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    const v4, 0x7f0c01df

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private refreshRtspProxy()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x1

    .line 153
    iget-object v4, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v5, "mtk_rtsp_proxy_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 154
    .local v0, enableProxy:Z
    :goto_0
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_host"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_port"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 156
    .local v2, port:I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v2, v6, :cond_1

    .line 157
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    :goto_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    const-string v3, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshRtspProxy() enableProxy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPort="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .end local v0           #enableProxy:Z
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #port:I
    :cond_0
    move v0, v3

    .line 153
    goto :goto_0

    .line 159
    .restart local v0       #enableProxy:Z
    .restart local v1       #host:Ljava/lang/String;
    .restart local v2       #port:I
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    const v4, 0x7f0c01db

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method

.method private refreshSIMInfo()V
    .locals 7

    .prologue
    .line 400
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 401
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->isGemini()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "gprs_connection_sim_setting"

    const-wide/16 v5, -0x5

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 406
    .local v1, simid:J
    invoke-static {p0, v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 414
    .end local v1           #simid:J
    :cond_0
    :goto_0
    const-string v3, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSIMInfo() mSimInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v3, :cond_1

    .line 417
    const-string v3, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshSIMInfo() simid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v5, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v5, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", displayName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v5, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_1
    return-void

    .line 408
    :cond_2
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 409
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 410
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iput-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    goto :goto_0
.end method

.method private refreshUdpPort()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 183
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_min_udp_port"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 184
    .local v1, minport:I
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v3, "mtk_rtsp_max_udp_port"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 185
    .local v0, maxport:I
    if-eq v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    if-lt v0, v1, :cond_0

    .line 186
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 191
    :goto_0
    const-string v2, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshUdpPort() maxport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minport="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 188
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    const v3, 0x7f0c01e5

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method

.method private showApnDialog()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    if-eqz v1, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.settings.APN_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "slotid"

    iget-object v2, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 246
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 248
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshApn()V

    goto :goto_0
.end method

.method private showBufferSizeDialog(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 465
    new-instance v0, Lcom/mediatek/gallery3d/video/LimitDialog;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/gallery3d/video/LimitDialog;-><init>(Landroid/content/Context;I)V

    .line 466
    .local v0, limitDialog:Lcom/mediatek/gallery3d/video/LimitDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 467
    new-instance v1, Lcom/mediatek/gallery3d/video/SettingsActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/gallery3d/video/SettingsActivity$4;-><init>(Lcom/mediatek/gallery3d/video/SettingsActivity;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 478
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 479
    return-void
.end method

.method private showBufferSizeHttpDialog()V
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showBufferSizeDialog(I)V

    .line 458
    return-void
.end method

.method private showBufferSizeRtspDialog()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showBufferSizeDialog(I)V

    .line 462
    return-void
.end method

.method private showProxyDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 256
    :cond_0
    new-instance v0, Lcom/mediatek/gallery3d/video/ProxyDialog;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/gallery3d/video/ProxyDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    .line 257
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 258
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    new-instance v1, Lcom/mediatek/gallery3d/video/SettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/SettingsActivity$2;-><init>(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 269
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mProxyDialog:Lcom/mediatek/gallery3d/video/ProxyDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 270
    return-void
.end method

.method private showUdpPortDialog()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    :cond_0
    new-instance v0, Lcom/mediatek/gallery3d/video/PortDialog;

    invoke-direct {v0, p0}, Lcom/mediatek/gallery3d/video/PortDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    .line 230
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 231
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/mediatek/gallery3d/video/SettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/gallery3d/video/SettingsActivity$1;-><init>(Lcom/mediatek/gallery3d/video/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 239
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v1, "Gallery2/VideoPlayer/SettingsActivity"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "logo-bitmap"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 98
    .local v0, logo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 102
    :cond_0
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 103
    const-string v1, "apn_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    .line 104
    const-string v1, "enable_rtsp_proxy"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    .line 105
    const-string v1, "rtsp_proxy_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    .line 106
    const-string v1, "enable_http_proxy"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    .line 107
    const-string v1, "http_proxy_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    .line 108
    const-string v1, "udp_port_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    .line 109
    const-string v1, "http_buffer_size"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    .line 110
    const-string v1, "rtsp_buffer_size"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    .line 112
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCM:Landroid/net/ConnectivityManager;

    .line 113
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    .line 115
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    .line 117
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.START"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.transaction.STOP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 137
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 199
    const-string v3, "Gallery2/VideoPlayer/SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mApnPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showApnDialog()V

    .line 222
    :cond_0
    :goto_0
    return v2

    .line 203
    :cond_1
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_2

    .line 204
    invoke-direct {p0, v2}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showProxyDialog(I)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 206
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showProxyDialog(I)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mUdpPortPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 208
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showUdpPortDialog()V

    goto :goto_0

    .line 209
    :cond_4
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 210
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mRtspProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 211
    .local v0, enable:Z
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_rtsp_proxy_enabled"

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshRtspProxy()V

    goto :goto_0

    .line 213
    .end local v0           #enable:Z
    :cond_6
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_8

    .line 214
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mHttpProxyEnabler:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 215
    .restart local v0       #enable:Z
    iget-object v3, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mCr:Landroid/content/ContentResolver;

    const-string v4, "mtk_http_proxy_enabled"

    if-eqz v0, :cond_7

    move v1, v2

    :cond_7
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshHttpProxy()V

    goto :goto_0

    .line 217
    .end local v0           #enable:Z
    :cond_8
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeHttpPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_9

    .line 218
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showBufferSizeHttpDialog()V

    goto :goto_0

    .line 219
    :cond_9
    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mBufferSizeRtspPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->showBufferSizeRtspDialog()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 125
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshApn()V

    .line 126
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshRtspProxy()V

    .line 127
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshHttpProxy()V

    .line 128
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshUdpPort()V

    .line 129
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeHttp()V

    .line 130
    invoke-direct {p0}, Lcom/mediatek/gallery3d/video/SettingsActivity;->refreshBufferSizeRtsp()V

    .line 131
    iget-object v0, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/gallery3d/video/SettingsActivity;->mMobileStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method
