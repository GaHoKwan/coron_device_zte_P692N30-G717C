.class public Lcom/zte/heartyservice/main/HeartyServiceApp;
.super Landroid/app/Application;
.source "HeartyServiceApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/HeartyServiceApp$SDCardFileObserver;,
        Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;,
        Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final ACTION_SETTINGS_TIMER:Ljava/lang/String; = "com.android.server.action.SETTINGS_TIMER"

.field public static final ACTION_UPDATABLE_SUM_CHANGE:Ljava/lang/String; = "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

.field private static final CANCEL_APP_LOCK_MSG:I = 0x2

.field public static final CLICK_NOTIFICATION:Ljava/lang/String; = "com.zte.heartyservice.action.CLICK_NOTIFICATION"

.field private static final DBG:Z = true

.field private static final DISMISS_NOTIFY:I = 0x9

.field public static final ID_AUTO_CHECK:I = 0x0

.field public static final ID_AUTO_NET_TRAFFIC_ADJUST:I = 0x5

.field public static final ID_AUTO_STA:I = 0x4

.field public static final ID_AUTO_UPDATE:I = 0x3

.field public static final ID_CLEAR_APP:I = 0x2

.field public static final ID_CLEAR_MEMOERY:I = 0x7

.field public static final ID_VIRUS_SCAN:I = 0x1

.field private static final INTENTDBNAME:Ljava/lang/String; = "intent.db"

.field private static final KEY_SETTINGS_ALARM:Ljava/lang/String; = "key_settings_alarm"

.field public static final KEY_SETTING_AUTO_CHECK:Ljava/lang/String; = "hs_auto_check"

.field public static final KEY_SETTING_AUTO_NET_TRAFFIC_ADJUST:Ljava/lang/String; = "hs_auto_net_traffic_adjust"

.field public static final KEY_SETTING_AUTO_STA:Ljava/lang/String; = "hs_auto_sta"

.field public static final KEY_SETTING_AUTO_UPDATE:Ljava/lang/String; = "hs_auto_update"

.field public static final KEY_SETTING_CLEAR_APP:Ljava/lang/String; = "hs_clear_app"

.field public static final KEY_SETTING_LOCK_SCREEN_CLEAN:Ljava/lang/String; = "hs_lock_screen_clean"

.field public static final KEY_SETTING_MEMORY_OPTIMIZE:Ljava/lang/String; = "hs_memory_optimize"

.field public static final KEY_SETTING_POWER_SAVING:Ljava/lang/String; = "hs_power_saving"

.field public static final KEY_SETTING_STATUSBAR_SHOWING:Ljava/lang/String; = "hs_statusbar_showing"

.field public static final KEY_SETTING_SWITCH_MODE:Ljava/lang/String; = "hs_switch_mode"

.field public static final KEY_SETTING_VIRUS_SCAN:Ljava/lang/String; = "hs_virus_scan"

.field public static final KEY_STA_CHECK:Ljava/lang/String; = "key_sta_check"

.field public static final KEY_UPDATE_CHECK:Ljava/lang/String; = "key_update_check"

.field public static final KEY_ZB_CHECK:Ljava/lang/String; = "key_zb_check"

.field public static final MEDIA_APP_KEY:Ljava/lang/String; = "heartyservice_mediaapp_key"

.field public static final SETTINGS_ID_COUNT:I = 0x6

.field public static final SETTING_AUTO_CHECK_DATA:Ljava/lang/String; = "hs_auto_check_data"

.field public static final SETTING_AUTO_NET_TRAFFIC_ADJUST_DATA:Ljava/lang/String; = "hs_auto_net_traffic_adjust_data"

.field public static final SETTING_AUTO_STA_DATA:Ljava/lang/String; = "hs_auto_sta_data"

.field public static final SETTING_AUTO_UPDATE_DATA:Ljava/lang/String; = "hs_auto_update_data"

.field public static final SETTING_CLEAR_APP_DATA:Ljava/lang/String; = "hs_clear_app_data"

.field public static final SETTING_MEMORY_OPTIMIZE_DATA:Ljava/lang/String; = "hs_memory_optimize_data"

.field public static final SETTING_VIRUS_SCAN_DATA:Ljava/lang/String; = "hs_virus_scan_data"

.field public static final SHORTCUTS_FILENAME:Ljava/lang/String; = "shortcut_file.txt"

.field private static final SHOW_APP_LOCK_MSG:I = 0x1

.field private static final SHOW_AUTO_NET_TRAFFIC_ADJUST:I = 0x5

.field private static final SHOW_FEEDBACK_FAIL:I = 0x4

.field private static final SHOW_FEEDBACK_SUCCESS:I = 0x3

.field private static final SHOW_LOW_POWER_SAVE_START:I = 0x6

.field private static final SHOW_LOW_POWER_SAVE_STOP:I = 0x7

.field private static final SHOW_PERMISSION_ASK_MSG:I = 0x8

.field public static final SIM_STATUS_ABSENT:I = 0x0

.field public static final SIM_STATUS_NOT_READY:I = 0x1

.field public static final SIM_STATUS_READY:I = 0x2

.field public static final STATS_ALARM_TYPE_DAY:I = 0x0

.field public static final STATS_ALARM_TYPE_DAY_2:I = 0x2

.field public static final STATS_ALARM_TYPE_IDLEHOURS_SIM0:I = 0x4

.field public static final STATS_ALARM_TYPE_IDLEHOURS_SIM1:I = 0x5

.field public static final STATS_ALARM_TYPE_MONTH:I = 0x1

.field public static final STATS_ALARM_TYPE_MONTH_2:I = 0x3

.field private static final SWITCHING_SAVE_SETTING:I = 0xa

.field static final TAG:Ljava/lang/String; = "HeartyServiceApp"

.field public static final TYPE_PATTERN:I = 0x1

.field public static final TYPE_TEXT:I = 0x0

.field private static final URL_SAFE_AUTHORITY:Ljava/lang/String; = "com.ume.browser.securitysettingprovider"

.field private static final URL_SAFE_CONTENT_AUTHORITY:Landroid/net/Uri; = null

.field private static final URL_SAFE_CONTENT_URI:Landroid/net/Uri; = null

.field private static appFlags:I = 0x0

.field private static appcache:Ljava/lang/Long; = null

.field private static auto_run_app_num:Ljava/lang/Integer; = null

.field private static background_auto_run_app_num:Ljava/lang/Integer; = null

.field public static cnExSet:Ljava/util/HashSet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static final dbName:Ljava/lang/String; = "privacy.db"

.field private static deleted_app_file_size:Ljava/lang/Long;

.field public static donotShowTickAndSound:Z

.field private static errorLoginTime:Ljava/util/Date;

.field private static exist_app_file_size:Ljava/lang/Long;

.field private static exist_cache_app_num:Ljava/lang/Integer;

.field public static firstInterceptAdRoot:I

.field private static folderUuid:Ljava/lang/String;

.field public static interceptAdRoot:Z

.field private static isAppFileScanning:Z

.field private static isCharging:Z

.field private static isDonotDisturbStart:Z

.field private static isDonotDisturbStartToastShow:Z

.field private static isMTKMsim:Z

.field private static isMsim:Z

.field private static isQualcommMsim:Z

.field private static isSmartLowModeStart:Z

.field private static isTimingSaveElectricityStart:Z

.field private static isTimingSaveElectricityStartToastShow:Z

.field public static isVirusDBEngineInited:Z

.field public static mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mAppCacheInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppDownloadInfoSQLiteOpenHelper:Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

.field private static mAppFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mAutoRunAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mBackgroundAutoRunAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

.field private static mContextQQ:Landroid/content/Context;

.field public static mDonotHandleCall:Ljava/util/HashSet;

.field public static mDonotHandleSms:Ljava/util/HashSet;

.field private static mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

.field static final mHandler:Landroid/os/Handler;

.field private static mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

.field private static mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

.field private static mReceiverSQLiteOpenHelper:Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

.field private static mRunningProcessInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static mSIMStatus:I

.field public static mSIMStatus2:I

.field public static mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

.field private static mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

.field private static mSpSettings:Landroid/content/SharedPreferences;

.field private static mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

.field private static mTm:Landroid/telephony/TelephonyManager;

.field private static mUnLockedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static needRefreshGrid:Z

.field private static needRefreshList:Z

.field public static netdPid:J

.field private static notificationId:I

.field private static password:Ljava/lang/String;

.field private static passwordType:I

.field private static preferences:Landroid/content/SharedPreferences;

.field private static privacyHandler:Landroid/os/Handler;

.field private static privateKey:Ljava/security/PrivateKey;

.field public static final process_filter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static publicKey:Ljava/security/PublicKey;

.field private static sBuildModel:Ljava/lang/String;

.field private static sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

.field private static sInnerDeviceName:Ljava/lang/String;

.field private static sSycObject:Ljava/lang/Object;

.field private static sWhiteApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final settingIdToKey:[Ljava/lang/String;

.field private static final settingIdToKeySwitch:[Ljava/lang/String;

.field public static shell:Lorg/sufficientlysecure/rootcommands/Shell;

.field public static shoppingSecurityInfoType:I

.field public static showNewInterceptAdView:Z

.field private static showPrivacyLoginActivity:Z

.field private static showTemp:Z

.field public static skipEnter:Z

.field public static skipExit:Z

.field private static standardInterfaceUtils:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;

.field public static sysBroadcastIntents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

.field private static virustable:Landroid/database/sqlite/SQLiteDatabase;

.field private static virustable_version:I

.field private static widget_end_id:I

.field private static widget_start_id:I


# instance fields
.field private did:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCloseFloaterReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mInboxSmsReceiver:Lcom/zte/heartyservice/privacy/InboxSmsReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageAddReceiver:Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;

.field private mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoftwareUpdate:Landroid/content/BroadcastReceiver;

.field private mStatsReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Ljava/lang/Thread;

.field private mname:Ljava/lang/String;

.field netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field resolver:Landroid/content/ContentResolver;

.field private sid:Ljava/lang/String;

.field private wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 176
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    .line 177
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mTm:Landroid/telephony/TelephonyManager;

    .line 185
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 186
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppDownloadInfoSQLiteOpenHelper:Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    .line 187
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiverSQLiteOpenHelper:Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    .line 188
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->password:Ljava/lang/String;

    .line 189
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->passwordType:I

    .line 190
    const-string v0, "1"

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->folderUuid:Ljava/lang/String;

    .line 191
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshGrid:Z

    .line 192
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshList:Z

    .line 193
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->showTemp:Z

    .line 200
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    .line 246
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    .line 247
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    .line 248
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleSms:Ljava/util/HashSet;

    .line 249
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mDonotHandleCall:Ljava/util/HashSet;

    .line 250
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->publicKey:Ljava/security/PublicKey;

    .line 251
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->privateKey:Ljava/security/PrivateKey;

    .line 252
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim:Z

    .line 253
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMTKMsim:Z

    .line 254
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isQualcommMsim:Z

    .line 255
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->showPrivacyLoginActivity:Z

    .line 257
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->updateTask:Lcom/zte/heartyservice/update/NewCheckUpdateTask;

    .line 262
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    .line 263
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus2:I

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    .line 276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    .line 278
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    .line 279
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    .line 280
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mRunningProcessInfoList:Ljava/util/List;

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAutoRunAppInfoList:Ljava/util/List;

    .line 284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    .line 288
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .line 290
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    .line 291
    sput v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable_version:I

    .line 302
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->notificationId:I

    .line 360
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I

    .line 364
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hs_auto_check_data"

    aput-object v1, v0, v3

    const-string v1, "hs_virus_scan_data"

    aput-object v1, v0, v6

    const-string v1, "hs_clear_app_data"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "hs_auto_update_data"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hs_auto_sta_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hs_auto_net_traffic_adjust_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    .line 366
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hs_auto_check"

    aput-object v1, v0, v3

    const-string v1, "hs_virus_scan"

    aput-object v1, v0, v6

    const-string v1, "hs_clear_app"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "hs_auto_update"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hs_auto_sta"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hs_auto_net_traffic_adjust"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKeySwitch:[Ljava/lang/String;

    .line 372
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart:Z

    .line 373
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart:Z

    .line 374
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow:Z

    .line 375
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow:Z

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mUnLockedPackages:Ljava/util/ArrayList;

    .line 389
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    .line 391
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_start_id:I

    .line 392
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_end_id:I

    .line 394
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sysBroadcastIntents:Ljava/util/HashSet;

    .line 397
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isVirusDBEngineInited:Z

    .line 401
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->shell:Lorg/sufficientlysecure/rootcommands/Shell;

    .line 403
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->showNewInterceptAdView:Z

    .line 405
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->interceptAdRoot:Z

    .line 407
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->firstInterceptAdRoot:I

    .line 409
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->netdPid:J

    .line 411
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 413
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    .line 1159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sSycObject:Ljava/lang/Object;

    .line 1160
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    .line 1293
    const-string v0, "content://com.ume.browser.securitysettingprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->URL_SAFE_CONTENT_AUTHORITY:Landroid/net/Uri;

    .line 1294
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->URL_SAFE_CONTENT_AUTHORITY:Landroid/net/Uri;

    const-string v1, "securitysettingdata"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->URL_SAFE_CONTENT_URI:Landroid/net/Uri;

    .line 1590
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->isAppFileScanning:Z

    .line 2711
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    .line 3268
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$8;

    invoke-direct {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp$8;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    .line 3362
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipExit:Z

    .line 3363
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipEnter:Z

    .line 3462
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    .line 3488
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    .line 3574
    sput-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3576
    sput v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3578
    sput-boolean v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->donotShowTickAndSound:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2114
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 178
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->did:Ljava/lang/String;

    .line 179
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sid:Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mname:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->resolver:Landroid/content/ContentResolver;

    .line 309
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    invoke-direct {v0}, Lcom/zte/heartyservice/permission/PermissionEventReceiver;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    .line 310
    new-instance v0, Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;

    invoke-direct {v0}, Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPackageAddReceiver:Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;

    .line 311
    new-instance v0, Lcom/zte/heartyservice/privacy/InboxSmsReceiver;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/InboxSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mInboxSmsReceiver:Lcom/zte/heartyservice/privacy/InboxSmsReceiver;

    .line 1731
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$2;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    .line 1819
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$3;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCloseFloaterReceiver:Landroid/content/BroadcastReceiver;

    .line 1832
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$4;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$4;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    .line 1867
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$5;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$5;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mThread:Ljava/lang/Thread;

    .line 3365
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$9;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$9;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2115
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    .line 2116
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mContextQQ:Landroid/content/Context;

    .line 2117
    return-void
.end method

.method static synthetic access$000()Lcom/zte/heartyservice/main/HeartyServiceApp;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/main/HeartyServiceApp;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1000()V
    .locals 0

    .prologue
    .line 172
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doSta()V

    return-void
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkAllTimerWhenAppStart()V

    return-void
.end method

.method static synthetic access$1300()Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;)Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    return-object p0
.end method

.method static synthetic access$1400()V
    .locals 0

    .prologue
    .line 172
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->autoNetTrafficAdjust()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/main/HeartyServiceApp;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isAlertShownToday(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/main/HeartyServiceApp;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showTrafficOverLimitAlert(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/zte/heartyservice/indicator/Notifier;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/indicator/Notifier;)Lcom/zte/heartyservice/indicator/Notifier;
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startAutoStartAndPersistentForEver()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/main/HeartyServiceApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkMemoryAndRecycle()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/main/HeartyServiceApp;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/main/HeartyServiceApp;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isRemovedPkgHasUnDeletedFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doExpire(Landroid/content/Context;I)V

    return-void
.end method

.method public static addUnlockedPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "pkg"

    .prologue
    .line 3243
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mUnLockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3244
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mUnLockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3245
    :cond_0
    return-void
.end method

.method public static addWhiteApp(Ljava/lang/String;)V
    .locals 7
    .parameter "pkgname"

    .prologue
    .line 1222
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->sSycObject:Ljava/lang/Object;

    monitor-enter v5

    .line 1223
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 1225
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    move-result-object v2

    .line 1227
    .local v2, helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    invoke-virtual {v2}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1228
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1229
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "package"

    invoke-virtual {v3, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    const-string v4, "white_apps"

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1232
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1237
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 1238
    return-void

    .line 1233
    :catch_0
    move-exception v1

    .line 1234
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "HeartyServiceApp"

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1237
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private static autoNetTrafficAdjust()V
    .locals 3

    .prologue
    .line 887
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/msim/SimManager;->getDataSim()I

    move-result v0

    .line 893
    .local v0, subscription:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 900
    :goto_0
    return-void

    .line 899
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/net/TrafficAdjustUtils;->adjustTraffic(ILandroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static backToHome()V
    .locals 3

    .prologue
    .line 3259
    invoke-static {}, Lcom/zte/heartyservice/common/utils/AppUtils;->hideInputMethodAppLockUse()V

    .line 3260
    const/4 v0, 0x0

    .line 3261
    .local v0, mHomeIntent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #mHomeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3262
    .restart local v0       #mHomeIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3263
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3265
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 3266
    return-void
.end method

.method public static canOpenUrlSafe()Z
    .locals 6

    .prologue
    .line 1347
    const/4 v1, 0x0

    .line 1348
    .local v1, ret:Z
    const/4 v2, 0x0

    .line 1350
    .local v2, versionCode:I
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.ume.browser"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    :goto_0
    const v3, 0x1332d98

    if-lt v2, v3, :cond_0

    .line 1355
    const/4 v1, 0x1

    .line 1357
    :cond_0
    return v1

    .line 1351
    :catch_0
    move-exception v0

    .line 1352
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static canStartSmartLowMode()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3177
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v6

    const-string v7, "powermanager"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3178
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v6, "smart_low_switch"

    sget-boolean v7, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3179
    .local v1, smartLowSwitch:Z
    const-string v6, "battery_level"

    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3180
    .local v0, level:I
    const-string v6, "smart_low_value"

    const/16 v7, 0xa

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3181
    .local v2, smartLowValue:I
    if-gt v0, v2, :cond_0

    if-ne v4, v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isCharging()Z

    move-result v6

    if-nez v6, :cond_0

    .line 3184
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method public static cancelStopHeartyService()V
    .locals 2

    .prologue
    .line 739
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    return-void
.end method

.method private checkAllTimerWhenAppStart()V
    .locals 2

    .prologue
    .line 814
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 815
    invoke-static {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkAndSetTimer(Landroid/content/Context;I)V

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_0
    return-void
.end method

.method public static checkAndSetTimer(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    const-wide/16 v11, 0x3e8

    .line 779
    if-gez p1, :cond_0

    .line 805
    :goto_0
    return-void

    .line 783
    :cond_0
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    aget-object v2, v7, p1

    .line 785
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 786
    .local v0, current:J
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getLastTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    .line 788
    .local v3, last:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-eqz v7, :cond_1

    cmp-long v7, v3, v0

    if-lez v7, :cond_2

    .line 789
    :cond_1
    move-wide v3, v0

    .line 790
    invoke-static {p1, v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setLastTimestamp(IJ)V

    .line 792
    :cond_2
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v5

    .line 794
    .local v5, period:J
    add-long v7, v3, v5

    cmp-long v7, v7, v0

    if-gtz v7, :cond_3

    .line 796
    const-string v7, "HeartyServiceApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "liuji ------ checkAndSetTimer doExpire id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (last + period):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-long v9, v3, v5

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v0, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doExpire(Landroid/content/Context;I)V

    goto :goto_0

    .line 801
    :cond_3
    const-string v7, "HeartyServiceApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "liuji ------ checkAndSetTimer setTimer id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (last + period):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-long v9, v3, v5

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " current:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v0, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    add-long v7, v3, v5

    invoke-static {p0, p1, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimer(Landroid/content/Context;IJ)V

    goto/16 :goto_0
.end method

.method private checkMemoryAndRecycle()V
    .locals 7

    .prologue
    .line 1241
    const-string v3, "hs_memory_optimize"

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    const-string v3, "hs_memory_optimize_data"

    invoke-static {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v2

    .line 1245
    .local v2, thresHold:I
    int-to-float v3, v2

    const/high16 v4, 0x42c8

    div-float v1, v3, v4

    .line 1247
    .local v1, rate:F
    const-string v3, "HeartyServiceApp"

    const-string v4, "liuji ****** checkMemoryAndRecycle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "liuji ****** total:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " availabe:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getTotalMemory()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->getAvailMemory()J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 1252
    const-string v3, "HeartyServiceApp"

    const-string v4, "liuji ****** recycle"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    new-instance v0, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v0, localAutoCloseBackgroundProcess:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v3, v4}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static checkThreadValid()V
    .locals 3

    .prologue
    .line 3160
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3161
    new-instance v0, Landroid/util/AndroidRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Please call this method in ui thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    iget-object v2, v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3165
    :cond_0
    return-void
.end method

.method public static checkTimer(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    const-wide/16 v11, 0x3e8

    .line 757
    if-gez p1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    aget-object v2, v7, p1

    .line 763
    .local v2, key:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 764
    .local v0, current:J
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getLastTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    .line 766
    .local v3, last:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_2

    .line 767
    move-wide v3, v0

    .line 769
    :cond_2
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v5

    .line 772
    .local v5, period:J
    const-string v7, "HeartyServiceApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "liuji ------ checkTimer id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " last = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v3, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " period = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v5, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    add-long v7, v3, v5

    cmp-long v7, v7, v0

    if-gtz v7, :cond_0

    .line 774
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doExpire(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static clearAllUnlockedPackages()V
    .locals 1

    .prologue
    .line 3247
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mUnLockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3248
    return-void
.end method

.method public static closeAppLockDB()V
    .locals 1

    .prologue
    .line 3689
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    if-eqz v0, :cond_0

    .line 3690
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;->close()V

    .line 3691
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 3693
    :cond_0
    return-void
.end method

.method public static delayForceSwithingAboutWireless(JIIIII)V
    .locals 4
    .parameter "delayMillis"
    .parameter "netdata"
    .parameter "wifi"
    .parameter "gps"
    .parameter "bluetooth"
    .parameter "sync"

    .prologue
    const/4 v3, 0x5

    .line 744
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 746
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 747
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "netdata"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 748
    const-string v2, "wifi"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 749
    const-string v2, "gps"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 750
    const-string v2, "bluetooth"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string v2, "sync"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 752
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 753
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p0, p1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 754
    return-void
.end method

.method public static delayStopHeartyService(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 734
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 735
    return-void
.end method

.method public static deleteNotSecurityAppFromTable(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2833
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 2834
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 2835
    .local v2, localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    const-string v3, "chenlu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from virustable where pkgName = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from virustable where pkgName = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and path = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 2839
    .end local v2           #localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2840
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2841
    const-string v3, "from"

    const-string v4, "antivirus"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2843
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2844
    const-string v3, "HeartyServiceApp"

    const-string v4, "deleteNotSecurityAppFromTable,send ACTION_REFRESH_NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2846
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static dismissNotifyAfter5S()V
    .locals 4

    .prologue
    .line 3629
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->removeDismissNotifyMsg()V

    .line 3630
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3631
    return-void
.end method

.method private static doExpire(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 833
    invoke-static {p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 878
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 838
    .local v0, current:J
    const-string v4, "HeartyServiceApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "liuji ------ doExpire id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    packed-switch p1, :pswitch_data_0

    .line 875
    :goto_1
    invoke-static {p1, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setLastTimestamp(IJ)V

    .line 876
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    goto :goto_0

    .line 846
    :pswitch_0
    const-string v4, "HeartyServiceApp"

    const-string v5, "liuji debug AutoExam 000"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/zte/heartyservice/setting/AutoExam;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/setting/AutoExam;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/heartyservice/setting/AutoExam;->startExam()V

    goto :goto_1

    .line 850
    :pswitch_1
    new-instance v3, Lcom/zte/heartyservice/examination/AutoScanVirusTask;

    invoke-direct {v3}, Lcom/zte/heartyservice/examination/AutoScanVirusTask;-><init>()V

    .line 851
    .local v3, localAutoScanVirus:Lcom/zte/heartyservice/examination/AutoScanVirusTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Lcom/zte/heartyservice/examination/AutoScanVirusTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 854
    .end local v3           #localAutoScanVirus:Lcom/zte/heartyservice/examination/AutoScanVirusTask;
    :pswitch_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendAutoNetTrafficAdjustMsg()V

    goto :goto_1

    .line 859
    :pswitch_3
    new-instance v2, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;-><init>(Landroid/content/Context;)V

    .line 860
    .local v2, localAutoCloseBackgroundProcess:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v8, [Ljava/lang/Void;

    invoke-virtual {v2, v4, v5}, Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 864
    .end local v2           #localAutoCloseBackgroundProcess:Lcom/zte/heartyservice/examination/AutoCloseBackgroundProcessTask;
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_update_check"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 867
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_sta_check"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 868
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "key_zb_check"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 869
    const/4 v4, 0x4

    const-wide/32 v5, 0x240c8400

    invoke-static {v4, v5, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 870
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doSta()V

    goto :goto_1

    .line 839
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static doReceiveAppLockEvent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3392
    const-string v3, "zte.intent.extra.type"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3393
    .local v2, type:I
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCK_APP, type is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3394
    if-nez v2, :cond_1

    .line 3395
    const-string v3, "zte.intent.extra.package"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3396
    .local v1, pkg:Ljava/lang/String;
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOCK_APP, pkg is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3397
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3398
    .local v0, msg:Landroid/os/Message;
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 3399
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3405
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #pkg:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3400
    :cond_1
    if-ne v2, v6, :cond_0

    .line 3401
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->clearAllUnlockedPackages()V

    .line 3402
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3403
    .restart local v0       #msg:Landroid/os/Message;
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static doReceivePermissionAskEvent(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5
    .parameter "packageName"
    .parameter "permission"
    .parameter "enable"
    .parameter "slotId"

    .prologue
    .line 3424
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v2

    .line 3425
    .local v2, utils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3426
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp$1;)V

    .line 3427
    .local v0, localAskArg:Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;
    iput-object p0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->packageName:Ljava/lang/String;

    .line 3428
    iput-object p1, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->permission:Ljava/lang/String;

    .line 3429
    iput-boolean p2, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->enable:Z

    .line 3430
    iput p3, v0, Lcom/zte/heartyservice/main/HeartyServiceApp$AskArg;->slotId:I

    .line 3431
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3432
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3433
    return-void
.end method

.method private static doSta()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2395
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2416
    .local v0, connManager:Landroid/net/ConnectivityManager;
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 2401
    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    .end local v1           #networkInfo:Landroid/net/NetworkInfo;
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_sta_check"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2402
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2403
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2404
    .restart local v1       #networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2405
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->p2HS()V

    .line 2409
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_zb_check"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2410
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #connManager:Landroid/net/ConnectivityManager;
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2411
    .restart local v0       #connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 2412
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2413
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->p2ZB()V

    goto :goto_0
.end method

.method private getAll()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 2497
    const-string v0, "HeartyServiceAppData"

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    .line 2499
    const-string v0, "settings"

    invoke-virtual {p0, v0, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSpSettings:Landroid/content/SharedPreferences;

    .line 2501
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "auto_run_app_num"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    .line 2502
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "background_auto_run_app_num"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    .line 2503
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exist_cache_app_num"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    .line 2504
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "appcache"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    .line 2505
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exist_app_file_size"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    .line 2506
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "deleted_app_file_size"

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    .line 2507
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "widget_start_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_start_id:I

    .line 2508
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "widget_end_id"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_end_id:I

    .line 2524
    return-void
.end method

.method public static getAllShortCutItems()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2963
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2964
    .local v16, shortcutList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/ShortCutItem;>;"
    sget-object v17, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 2965
    .local v9, pm:Landroid/content/pm/PackageManager;
    sget-object v17, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070047

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 2968
    .local v15, shortcutAtions:[Ljava/lang/String;
    if-eqz v15, :cond_e

    .line 2969
    move-object v3, v15

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v8, :cond_e

    aget-object v14, v3, v5

    .line 2970
    .local v14, shorcut:Ljava/lang/String;
    if-eqz v14, :cond_1

    const-string v17, "TENCENT"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2981
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2984
    new-instance v7, Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-direct {v7}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .line 2985
    .local v7, item1:Lcom/zte/heartyservice/main/ShortCutItem;
    iput-object v14, v7, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    .line 2986
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v7, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    .line 2987
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v7, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    .line 2988
    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2969
    .end local v7           #item1:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2993
    :cond_1
    if-eqz v14, :cond_0

    .line 2994
    const/4 v11, 0x0

    .line 2995
    .local v11, r:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 2999
    .local v4, i:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    .end local v4           #i:Landroid/content/Intent;
    invoke-direct {v4, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3000
    .restart local v4       #i:Landroid/content/Intent;
    sget-object v17, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPackageName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3002
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v4, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v13

    .line 3004
    .local v13, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v13, :cond_0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 3006
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #r:Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3007
    .restart local v11       #r:Landroid/content/pm/ResolveInfo;
    if-eqz v11, :cond_0

    .line 3008
    const-string v17, ".HS_CHECKENTRY"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3009
    const-string v17, ".HS_CHECKENTRY"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 3010
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, v17

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 3013
    .local v12, reInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 3018
    .end local v12           #reInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    const-string v17, ".HS_ENTRY"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3021
    .local v2, action:Ljava/lang/String;
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.ad_intercept"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3022
    new-instance v6, Lcom/zte/heartyservice/main/AdShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/AdShortCutItem;-><init>()V

    .line 3039
    .local v6, item:Lcom/zte/heartyservice/main/ShortCutItem;
    :goto_2
    iput-object v2, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    .line 3040
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->icon:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    .line 3041
    iget-object v0, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    .line 3042
    iget v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    iget v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 3043
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 3045
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->getEnterName()Ljava/lang/String;

    move-result-object v10

    .line 3047
    .local v10, privacyName:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 3048
    iput-object v10, v6, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    .line 3071
    .end local v10           #privacyName:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 3023
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_4
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.PERMISSION_SCANNER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 3025
    new-instance v6, Lcom/zte/heartyservice/main/PermissionShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/PermissionShortCutItem;-><init>()V

    .restart local v6       #item:Lcom/zte/heartyservice/main/ShortCutItem;
    goto :goto_2

    .line 3026
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_5
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 3028
    new-instance v6, Lcom/zte/heartyservice/main/InterceptShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/InterceptShortCutItem;-><init>()V

    .restart local v6       #item:Lcom/zte/heartyservice/main/ShortCutItem;
    goto :goto_2

    .line 3029
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_6
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.PRIVACY_LOGIN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 3031
    new-instance v6, Lcom/zte/heartyservice/main/PrivacyShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/PrivacyShortCutItem;-><init>()V

    .restart local v6       #item:Lcom/zte/heartyservice/main/ShortCutItem;
    goto :goto_2

    .line 3032
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_7
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.VIRUS_SCANNER"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 3034
    new-instance v6, Lcom/zte/heartyservice/main/VirusShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/VirusShortCutItem;-><init>()V

    .restart local v6       #item:Lcom/zte/heartyservice/main/ShortCutItem;
    goto/16 :goto_2

    .line 3036
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_8
    new-instance v6, Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-direct {v6}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .restart local v6       #item:Lcom/zte/heartyservice/main/ShortCutItem;
    goto/16 :goto_2

    .line 3050
    :cond_9
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.VIRUS_SCANNER"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 3052
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v17

    if-eqz v17, :cond_3

    goto/16 :goto_1

    .line 3055
    :cond_a
    const-string v17, "com.zte.heartyservice.intent.action.startApk.CLOUDBACKUP"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 3057
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v17

    if-eqz v17, :cond_3

    goto/16 :goto_1

    .line 3060
    :cond_b
    const-string v17, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_c

    const-string v17, "com.zte.heartyservice.intent.action.startActivity.ad_intercept"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 3063
    :cond_c
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v17

    if-eqz v17, :cond_3

    goto/16 :goto_1

    .line 3066
    :cond_d
    const-string v17, "com.zte.heartyservice.intent.action.startApk.RETRIEVE"

    iget-object v0, v6, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3067
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->includePhoneFindBack()Z

    move-result v17

    if-nez v17, :cond_3

    goto/16 :goto_1

    .line 3078
    .end local v2           #action:Ljava/lang/String;
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i:Landroid/content/Intent;
    .end local v5           #i$:I
    .end local v6           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    .end local v8           #len$:I
    .end local v11           #r:Landroid/content/pm/ResolveInfo;
    .end local v13           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14           #shorcut:Ljava/lang/String;
    :cond_e
    return-object v16
.end method

.method public static getAntiPhoneRecordingSetting()I
    .locals 3

    .prologue
    .line 3508
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "anti_phone_recording"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAppCache()J
    .locals 4

    .prologue
    .line 1406
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    monitor-enter v1

    .line 1407
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 1408
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAppCacheInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1522
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1523
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAppDownloadInfoSQLiteOpenHelper()Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;
    .locals 2

    .prologue
    .line 620
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppDownloadInfoSQLiteOpenHelper:Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 621
    new-instance v0, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;-><init>(I)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppDownloadInfoSQLiteOpenHelper:Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    .line 623
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppDownloadInfoSQLiteOpenHelper:Lcom/zte/heartyservice/main/AppDownloadInfoSQLiteOpenHelper;

    return-object v0
.end method

.method public static getAppFileInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1550
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1551
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1552
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAppFileScanState()Z
    .locals 1

    .prologue
    .line 1596
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isAppFileScanning:Z

    return v0
.end method

.method public static getAppLockSettingsAdapter()Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    invoke-direct {v0}, Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    .line 443
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAdapter:Lcom/zte/heartyservice/privacy/AppLockSettingsAdapter;

    return-object v0
.end method

.method public static getAutoRunAppInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAutoRunAppInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1465
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAutoRunAppInfoList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1466
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getAutoRunAppNum()I
    .locals 2

    .prologue
    .line 1361
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    monitor-enter v1

    .line 1362
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBackgroundAutoRunAppInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1489
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1490
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBackgroundAutoRunAppNum()I
    .locals 2

    .prologue
    .line 1376
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    monitor-enter v1

    .line 1377
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1378
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getBuildModel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3491
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3492
    const-string v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    .line 3493
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3494
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    .line 3495
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3496
    const-string v0, "android"

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    .line 3500
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sBuildModel:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2451
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mContextQQ:Landroid/content/Context;

    return-object v0
.end method

.method private getCurrentApiVersion()I
    .locals 1

    .prologue
    .line 2066
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;
    .locals 1

    .prologue
    .line 2111
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    return-object v0
.end method

.method public static getDeletedAppFileInfoListSize()I
    .locals 5

    .prologue
    .line 1556
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    monitor-enter v4

    .line 1557
    const/4 v2, 0x0

    .line 1558
    .local v2, ret:I
    :try_start_0
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1559
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 1560
    .local v1, loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    iget v3, v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    if-nez v3, :cond_0

    .line 1561
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1565
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :cond_1
    monitor-exit v4

    return v2

    .line 1566
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getDeletedAppFileSize()J
    .locals 4

    .prologue
    .line 1436
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    monitor-enter v1

    .line 1437
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 1438
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getDetectedNotSecurityAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2849
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2850
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 2851
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "select * from virustable"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2852
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2853
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->getVirusScanResult(Landroid/database/Cursor;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    move-result-object v2

    .line 2855
    .local v2, localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2857
    .end local v2           #localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2859
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    return-object v1
.end method

.method public static getErrorLoginTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 2863
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->errorLoginTime:Ljava/util/Date;

    return-object v0
.end method

.method public static getExamLevel()I
    .locals 3

    .prologue
    .line 2791
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exam_result_level"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExamScore()I
    .locals 3

    .prologue
    .line 2800
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exam_result_score"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getExamTime()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 2810
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "exam_result_time"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateForDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getExistAppFileSize()J
    .locals 4

    .prologue
    .line 1421
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    monitor-enter v1

    .line 1422
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    .line 1423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getExistCacheAppNum()I
    .locals 2

    .prologue
    .line 1391
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    monitor-enter v1

    .line 1392
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    return v0

    .line 1393
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getFolderUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 670
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->folderUuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getFromExSet(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 5
    .parameter "cn"

    .prologue
    .line 422
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    monitor-enter v4

    .line 423
    const/4 v1, 0x0

    .line 424
    .local v1, find:Landroid/content/ComponentName;
    :try_start_0
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 425
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 426
    .local v0, cnEx:Landroid/content/ComponentName;
    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    move-object v1, v0

    .line 432
    .end local v0           #cnEx:Landroid/content/ComponentName;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    if-eqz v1, :cond_2

    .line 433
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 435
    :cond_2
    monitor-exit v4

    return-object v1

    .line 436
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getFromExSetByPkgName(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    monitor-enter v5

    .line 448
    const/4 v1, 0x0

    .line 449
    .local v1, find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :try_start_0
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 450
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move-object v2, v1

    .end local v1           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .local v2, find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 451
    .local v0, cnEx:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 452
    if-nez v2, :cond_3

    .line 453
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 455
    .end local v2           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :goto_1
    :try_start_2
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object v2, v1

    .end local v1           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    goto :goto_0

    .end local v0           #cnEx:Landroid/content/ComponentName;
    :cond_0
    move-object v1, v2

    .line 459
    .end local v2           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local v1       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 460
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 462
    :cond_2
    monitor-exit v5

    return-object v1

    .line 463
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .end local v1           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v3       #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    goto :goto_3

    .end local v1           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #cnEx:Landroid/content/ComponentName;
    .restart local v2       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_3
    move-object v1, v2

    .end local v2           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    goto :goto_1

    .end local v1           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v2       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_4
    move-object v1, v2

    .end local v2           #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v1       #find:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    goto :goto_2
.end method

.method public static getInnerDeviceName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3464
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3465
    const-string v0, "UNKNOW"

    .line 3466
    .local v0, UNKOWN:Ljava/lang/String;
    const-string v3, "ro.build.sw_internal_version"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3469
    .local v2, version_in:Ljava/lang/String;
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDevDetailSwV1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3472
    const-string v3, "ro.build.inner.version"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3474
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDevDetailSwV2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    :cond_0
    const-string v3, "V"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3478
    .local v1, endtag:I
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    .line 3479
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3480
    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    .line 3482
    :cond_1
    const-string v3, "HeartyServiceApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "innerDeviceName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    :cond_2
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sInnerDeviceName:Ljava/lang/String;

    return-object v3
.end method

.method private static getLastTimestamp(Ljava/lang/String;)J
    .locals 3
    .parameter "key"

    .prologue
    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "timestamp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 942
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 636
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->password:Ljava/lang/String;

    return-object v0
.end method

.method public static getPasswordType()I
    .locals 1

    .prologue
    .line 646
    sget v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->passwordType:I

    return v0
.end method

.method public static getPeriod(JI)J
    .locals 6
    .parameter "last"
    .parameter "week_day"

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 981
    const/4 v1, 0x1

    .line 982
    .local v1, i:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 983
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v1, 0x1

    :goto_0
    if-gt v1, v5, :cond_0

    .line 984
    const v2, 0x5265c00

    mul-int/2addr v2, v1

    int-to-long v2, v2

    add-long/2addr v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 985
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 990
    :cond_0
    const/16 v2, 0xb

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 991
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 992
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->set(II)V

    .line 994
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    return-wide v2

    .line 983
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getPeriod(Ljava/lang/String;)J
    .locals 13
    .parameter "key"

    .prologue
    const-wide/16 v11, 0x0

    .line 953
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 954
    .local v3, current:J
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getLastTimestamp(Ljava/lang/String;)J

    move-result-wide v5

    .line 955
    .local v5, last:J
    cmp-long v8, v5, v11

    if-nez v8, :cond_0

    .line 956
    move-wide v5, v3

    .line 958
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v8

    const-string v9, "powermanager"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 960
    .local v7, mSpPowerManager:Landroid/content/SharedPreferences;
    const-string v8, "hs_auto_check_data"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 961
    const-string v8, "auto_check_day"

    sget v9, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoCheckDay:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 964
    .local v0, auto_check_choose:I
    invoke-static {v5, v6, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(JI)J

    move-result-wide v8

    .line 976
    .end local v0           #auto_check_choose:I
    :goto_0
    return-wide v8

    .line 965
    :cond_1
    const-string v8, "hs_virus_scan_data"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 966
    const-string v8, "auto_virus_scan_day"

    sget v9, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoVirusScanDay:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 969
    .local v2, auto_virus_scan_choose:I
    invoke-static {v5, v6, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(JI)J

    move-result-wide v8

    goto :goto_0

    .line 970
    .end local v2           #auto_virus_scan_choose:I
    :cond_2
    const-string v8, "hs_auto_net_traffic_adjust_data"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 971
    const-string v8, "auto_net_traffic_adjust_day"

    sget v9, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoNetTrafficAdjustDay:I

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 974
    .local v1, auto_net_traffic_adjust_choose:I
    invoke-static {v5, v6, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(JI)J

    move-result-wide v8

    goto :goto_0

    .line 976
    .end local v1           #auto_net_traffic_adjust_choose:I
    :cond_3
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8, p0, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    goto :goto_0
.end method

.method public static getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .locals 2

    .prologue
    .line 613
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;-><init>(I)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    .line 616
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPrivacySQLiteOpenHelper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    return-object v0
.end method

.method public static getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 662
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public static getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 654
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public static getReceiverSQLiteOpenHelper()Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;
    .locals 1

    .prologue
    .line 627
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiverSQLiteOpenHelper:Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    invoke-direct {v0}, Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiverSQLiteOpenHelper:Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    .line 630
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiverSQLiteOpenHelper:Lcom/zte/heartyservice/speedup/ReceiverSQLiteOpenHelper;

    return-object v0
.end method

.method public static getRunningProcessInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1451
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mRunningProcessInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1452
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mRunningProcessInfoList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1453
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSettingInt(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1007
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getShoppingSafe()Z
    .locals 3

    .prologue
    .line 1283
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "shopping_safe"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowPermNotice()Z
    .locals 3

    .prologue
    .line 1273
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "perm_notice"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getShowShortCutItems()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3082
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3083
    .local v11, showShortcutList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/ShortCutItem;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAllShortCutItems()Ljava/util/List;

    move-result-object v1

    .line 3084
    .local v1, allShortcutList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/ShortCutItem;>;"
    const/4 v10, 0x0

    .line 3085
    .local v10, showShortcutAtions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 3087
    .local v6, is:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v7, Ljava/io/ObjectInputStream;

    sget-object v12, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v13, "short_cut_action_show"

    invoke-virtual {v12, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3089
    .end local v6           #is:Ljava/io/ObjectInputStream;
    .local v7, is:Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3092
    if-eqz v7, :cond_5

    .line 3094
    :try_start_2
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 3100
    .end local v7           #is:Ljava/io/ObjectInputStream;
    .restart local v6       #is:Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    if-eqz v10, :cond_3

    .line 3101
    new-instance v8, Lcom/zte/heartyservice/main/ShortCutItem;

    invoke-direct {v8}, Lcom/zte/heartyservice/main/ShortCutItem;-><init>()V

    .line 3102
    .local v8, item:Lcom/zte/heartyservice/main/ShortCutItem;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 3103
    .local v9, showShortcut:Ljava/lang/String;
    iput-object v9, v8, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    .line 3104
    invoke-interface {v1, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 3105
    .local v5, index:I
    if-ltz v5, :cond_1

    .line 3106
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3095
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #index:I
    .end local v6           #is:Ljava/io/ObjectInputStream;
    .end local v8           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    .end local v9           #showShortcut:Ljava/lang/String;
    .restart local v7       #is:Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 3096
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v6, v7

    .line 3097
    .end local v7           #is:Ljava/io/ObjectInputStream;
    .restart local v6       #is:Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 3090
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v12

    .line 3092
    :goto_2
    if-eqz v6, :cond_0

    .line 3094
    :try_start_3
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 3095
    :catch_2
    move-exception v2

    .line 3096
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 3092
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v6, :cond_2

    .line 3094
    :try_start_4
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3097
    :cond_2
    :goto_4
    throw v12

    .line 3095
    :catch_3
    move-exception v2

    .line 3096
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3110
    .end local v2           #e:Ljava/io/IOException;
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    const/4 v12, 0x6

    if-ge v3, v12, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v3, v12, :cond_4

    .line 3111
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3110
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 3114
    .end local v3           #i:I
    :cond_4
    return-object v11

    .line 3092
    .end local v6           #is:Ljava/io/ObjectInputStream;
    .restart local v7       #is:Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7           #is:Ljava/io/ObjectInputStream;
    .restart local v6       #is:Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 3090
    .end local v6           #is:Ljava/io/ObjectInputStream;
    .restart local v7       #is:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v12

    move-object v6, v7

    .end local v7           #is:Ljava/io/ObjectInputStream;
    .restart local v6       #is:Ljava/io/ObjectInputStream;
    goto :goto_2

    .end local v6           #is:Ljava/io/ObjectInputStream;
    .restart local v7       #is:Ljava/io/ObjectInputStream;
    :cond_5
    move-object v6, v7

    .end local v7           #is:Ljava/io/ObjectInputStream;
    .restart local v6       #is:Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public static getSysGarbageFile()Lcom/zte/heartyservice/speedup/SysGarbageFile;
    .locals 2

    .prologue
    .line 1510
    const-string v0, "HeartyServiceApp"

    const-string v1, "getSysGarbageFile ===================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    return-object v0
.end method

.method public static getUmeDownloadId()J
    .locals 4

    .prologue
    .line 1315
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "ume_download_id"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUmeDownloadStatus()I
    .locals 9

    .prologue
    .line 1319
    const/4 v6, 0x0

    .line 1320
    .local v6, ret:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getUmeDownloadId()J

    move-result-wide v3

    .line 1321
    .local v3, lastDownLoadId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    .line 1322
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v7

    const-string v8, "download"

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    .line 1323
    .local v2, downloadManager:Landroid/app/DownloadManager;
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1324
    .local v5, query:Landroid/app/DownloadManager$Query;
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v3, v7, v8

    invoke-virtual {v5, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 1325
    invoke-virtual {v2, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 1326
    .local v1, cur:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1327
    const-string v7, "status"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1328
    .local v0, columnIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1338
    :pswitch_0
    const/4 v6, 0x0

    .line 1343
    .end local v0           #columnIndex:I
    .end local v1           #cur:Landroid/database/Cursor;
    .end local v2           #downloadManager:Landroid/app/DownloadManager;
    .end local v5           #query:Landroid/app/DownloadManager$Query;
    :cond_0
    :goto_0
    return v6

    .line 1332
    .restart local v0       #columnIndex:I
    .restart local v1       #cur:Landroid/database/Cursor;
    .restart local v2       #downloadManager:Landroid/app/DownloadManager;
    .restart local v5       #query:Landroid/app/DownloadManager$Query;
    :pswitch_1
    const/4 v6, 0x1

    .line 1333
    goto :goto_0

    .line 1335
    :pswitch_2
    const/4 v6, 0x2

    .line 1336
    goto :goto_0

    .line 1328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getUrlSafeDefault()Z
    .locals 4

    .prologue
    .line 1297
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "ume"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1298
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "url_safe_default"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getWidgetEndID()I
    .locals 1

    .prologue
    .line 3447
    sget v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_end_id:I

    return v0
.end method

.method public static getWidgetStartID()I
    .locals 1

    .prologue
    .line 3443
    sget v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->widget_start_id:I

    return v0
.end method

.method private initDefaultSettings()V
    .locals 12

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1059
    .local v5, resource:Landroid/content/res/Resources;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v8

    const-string v9, "powermanager"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1060
    .local v3, mSpPowerManager:Landroid/content/SharedPreferences;
    const-string v8, "auto_check_day"

    const/4 v9, -0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1061
    .local v0, auto_check_choose:I
    const/4 v8, -0x1

    if-ne v8, v0, :cond_0

    .line 1062
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "auto_check_day"

    sget v10, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoCheckDay:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1063
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1064
    const-string v8, "hs_auto_check"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1068
    :goto_0
    const/4 v8, 0x0

    invoke-static {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1070
    :cond_0
    const-string v8, "auto_virus_scan_day"

    const/4 v9, -0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1071
    .local v2, auto_virus_scan_choose:I
    const/4 v8, -0x1

    if-ne v8, v2, :cond_1

    .line 1072
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "auto_virus_scan_day"

    sget v10, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoVirusScanDay:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1073
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1074
    const-string v8, "hs_virus_scan"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1078
    :goto_1
    const/4 v8, 0x1

    invoke-static {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1080
    :cond_1
    const-string v8, "auto_net_traffic_adjust_day"

    const/4 v9, -0x1

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1081
    .local v1, auto_net_traffic_adjust_choose:I
    const/4 v8, -0x1

    if-ne v8, v1, :cond_2

    .line 1082
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "auto_net_traffic_adjust_day"

    sget v10, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoNetTrafficAdjustDay:I

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1083
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1084
    const-string v8, "hs_auto_net_traffic_adjust"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1088
    :goto_2
    const/4 v8, 0x5

    invoke-static {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1090
    :cond_2
    const-string v8, "hs_clear_app_data"

    invoke-static {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/32 v10, 0x6ddd00

    cmp-long v8, v8, v10

    if-gez v8, :cond_3

    .line 1091
    const v8, 0x7f090002

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1093
    .local v4, p:I
    const/4 v8, 0x2

    mul-int/lit8 v9, v4, 0x3c

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 1094
    const/4 v8, 0x2

    invoke-static {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1095
    const-string v8, "hs_clear_app"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1097
    .end local v4           #p:I
    :cond_3
    const-string v8, "hs_auto_update_data"

    invoke-static {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_5

    .line 1098
    const v8, 0x7f090003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1100
    .restart local v4       #p:I
    const/4 v8, 0x3

    mul-int/lit8 v9, v4, 0x18

    mul-int/lit16 v9, v9, 0xe10

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-static {v8, v9, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 1101
    const/4 v8, 0x3

    invoke-static {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1102
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1103
    :cond_4
    const-string v8, "hs_auto_update"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1113
    .end local v4           #p:I
    :cond_5
    :goto_3
    const-string v8, "hs_memory_optimize_data"

    invoke-static {v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v8

    if-gtz v8, :cond_6

    .line 1114
    const v8, 0x7f090004

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1115
    .local v7, v:I
    const-string v8, "hs_memory_optimize_data"

    invoke-static {v8, v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingInt(Ljava/lang/String;I)V

    .line 1116
    const-string v8, "hs_memory_optimize"

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1119
    .end local v7           #v:I
    :cond_6
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v6

    .line 1120
    .local v6, settingUtils:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInitFlag()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1121
    invoke-virtual {v6}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setInitFlag()V

    .line 1122
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setMonWarnOpen(Z)V

    .line 1123
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1124
    const-string v8, "hs_statusbar_showing"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingInt(Ljava/lang/String;I)V

    .line 1128
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v8}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 1129
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPresetCTFlag()V

    .line 1132
    :cond_7
    return-void

    .line 1066
    .end local v1           #auto_net_traffic_adjust_choose:I
    .end local v2           #auto_virus_scan_choose:I
    .end local v6           #settingUtils:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :cond_8
    const-string v8, "hs_auto_check"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1076
    .restart local v2       #auto_virus_scan_choose:I
    :cond_9
    const-string v8, "hs_virus_scan"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1086
    .restart local v1       #auto_net_traffic_adjust_choose:I
    :cond_a
    const-string v8, "hs_auto_net_traffic_adjust"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 1105
    .restart local v4       #p:I
    :cond_b
    const-string v8, "hs_auto_update"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    goto :goto_3
.end method

.method public static initFloater()V
    .locals 5

    .prologue
    .line 2342
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    .line 2343
    .local v0, settingUtils:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getFloaterOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2345
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-class v4, Lcom/zte/heartyservice/floater/BackgroundService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2351
    :cond_0
    return-void
.end method

.method public static insertNotSecurityAppToTable(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/VirusScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2814
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/VirusScanResult;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_1

    .line 2815
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 2821
    .local v2, localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "virustable"

    const/4 v5, 0x0

    invoke-virtual {v2}, Lcom/zte/heartyservice/common/datatype/VirusScanResult;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 2823
    .end local v2           #localVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2824
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2825
    const-string v3, "from"

    const-string v4, "antivirus"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2827
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2828
    const-string v3, "HeartyServiceApp"

    const-string v4, "insertNotSecurityAppToTable,send ACTION_REFRESH_NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private installAutoUpdate()V
    .locals 5

    .prologue
    .line 3143
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "intent.action.startActivity.CHECK_MULTI_UPDATE"

    invoke-static {v2, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->isAppInstalledByAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3146
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AutoUpdate.apk"

    const-string v4, "AutoUpdate.apk"

    invoke-static {v2, v3, v4}, Lcom/zte/heartyservice/common/utils/AppUtils;->unzipAssetsFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3148
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "AutoUpdate.apk"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3149
    .local v1, file:Ljava/io/File;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.zte.autoupdate"

    invoke-static {v2, v1, v3}, Lcom/zte/heartyservice/common/utils/AppUtils;->installSilent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3155
    .end local v1           #file:Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 3150
    :catch_0
    move-exception v0

    .line 3152
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isAlertShownToday(I)Z
    .locals 9
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1608
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1610
    .local v2, localCalendar:Ljava/util/Calendar;
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 1611
    .local v4, year:I
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1612
    .local v3, month:I
    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1614
    .local v0, day:I
    mul-int/lit16 v7, v4, 0x2710

    mul-int/lit8 v8, v3, 0x64

    add-int/2addr v7, v8

    add-int v1, v7, v0

    .line 1616
    .local v1, featureCode:I
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v5, v6

    .line 1652
    :goto_0
    return v5

    .line 1618
    :pswitch_0
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_day"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1623
    :pswitch_1
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_month"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1628
    :pswitch_2
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_day_2"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1633
    :pswitch_3
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_month_2"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1639
    :pswitch_4
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_idleHours_sim0"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1644
    :pswitch_5
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "overlimit_code_idleHours_sim1"

    invoke-interface {v7, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v1, :cond_0

    goto :goto_0

    .line 1616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static isCharging()Z
    .locals 1

    .prologue
    .line 3192
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isCharging:Z

    return v0
.end method

.method public static isDonotDisturbStart()Z
    .locals 1

    .prologue
    .line 3216
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart:Z

    return v0
.end method

.method public static isDonotDisturbStartToastShow()Z
    .locals 1

    .prologue
    .line 3224
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow:Z

    return v0
.end method

.method public static isFirstStart()Z
    .locals 3

    .prologue
    .line 1014
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "last_version_code"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v1}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInWhiteApps(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgname"

    .prologue
    .line 1196
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sSycObject:Ljava/lang/Object;

    monitor-enter v1

    .line 1197
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1198
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 1201
    :goto_0
    return v0

    .line 1200
    :cond_0
    monitor-exit v1

    .line 1201
    const/4 v0, 0x0

    goto :goto_0

    .line 1200
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInterceptadOpen()Z
    .locals 3

    .prologue
    .line 1025
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "interceptad"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isMTKMsim()Z
    .locals 1

    .prologue
    .line 706
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMTKMsim:Z

    return v0
.end method

.method public static isMsim()Z
    .locals 1

    .prologue
    .line 702
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim:Z

    return v0
.end method

.method public static isNeedRefreshGrid()Z
    .locals 1

    .prologue
    .line 678
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshGrid:Z

    return v0
.end method

.method public static isNeedRefreshList()Z
    .locals 1

    .prologue
    .line 686
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshList:Z

    return v0
.end method

.method public static isOptionEnabled(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 820
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKeySwitch:[Ljava/lang/String;

    aget-object v0, v1, p0

    .line 821
    .local v0, key:Ljava/lang/String;
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isOptionEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "key"

    .prologue
    .line 825
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSpSettings:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isQualcommMsim()Z
    .locals 1

    .prologue
    .line 710
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isQualcommMsim:Z

    return v0
.end method

.method private isRemovedPkgHasUnDeletedFile(Ljava/lang/String;)Z
    .locals 16
    .parameter "pkgName"

    .prologue
    .line 2070
    const/4 v15, 0x0

    .line 2071
    .local v15, ret:Z
    const/4 v1, 0x0

    .line 2073
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2074
    const-string v2, "app_file_info.db"

    const v3, 0x7f090012

    const/high16 v4, 0x7f06

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDB(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2076
    :cond_0
    if-eqz v1, :cond_3

    .line 2077
    const-string v2, "info"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "path"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2078
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 2079
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2080
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2081
    .local v14, path:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getInternalSD()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2083
    .local v13, internalSDPath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2084
    .local v12, internalSDFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2085
    const/4 v15, 0x1

    .line 2099
    .end local v12           #internalSDFile:Ljava/io/File;
    .end local v13           #internalSDPath:Ljava/lang/String;
    .end local v14           #path:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2103
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v1, :cond_4

    .line 2104
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2107
    :cond_4
    return v15

    .line 2089
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v14       #path:Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getExternalSD()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2091
    .local v11, externalSDPath:Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2092
    .local v10, externalSDFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 2093
    const/4 v15, 0x1

    .line 2094
    goto :goto_0

    .line 2103
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #externalSDFile:Ljava/io/File;
    .end local v11           #externalSDPath:Ljava/lang/String;
    .end local v14           #path:Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    .line 2104
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    throw v2
.end method

.method public static isShowPrivacyLoginActivity()Z
    .locals 1

    .prologue
    .line 714
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->showPrivacyLoginActivity:Z

    return v0
.end method

.method public static isShowTemp()Z
    .locals 1

    .prologue
    .line 694
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->showTemp:Z

    return v0
.end method

.method public static isSmartLowModeStart()Z
    .locals 3

    .prologue
    .line 3172
    const-string v0, "20140303"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartLowModeStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart:Z

    return v0
.end method

.method public static isSystemApp()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2479
    sget v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I

    if-nez v1, :cond_0

    .line 2481
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mContextQQ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.zte.heartyservice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sput v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2485
    :cond_0
    :goto_0
    sget v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2482
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isTimingSaveElectricityStart()Z
    .locals 1

    .prologue
    .line 3200
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart:Z

    return v0
.end method

.method public static isTimingSaveElectricityStartToastShow()Z
    .locals 1

    .prologue
    .line 3208
    sget-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow:Z

    return v0
.end method

.method public static isUpdateFromPresetCT()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3228
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3231
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "last_preset_ct"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isUpdatedSystemApp()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2460
    sget v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I

    if-nez v1, :cond_0

    .line 2462
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mContextQQ:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.zte.heartyservice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    sput v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2466
    :cond_0
    :goto_0
    sget v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2463
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static loadWhiteApps()V
    .locals 14

    .prologue
    .line 1163
    sget-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->sSycObject:Ljava/lang/Object;

    monitor-enter v13

    .line 1164
    :try_start_0
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 1165
    monitor-exit v13

    .line 1193
    .local v8, cur:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 1167
    .end local v8           #cur:Landroid/database/Cursor;
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    const/4 v8, 0x0

    .line 1170
    .restart local v8       #cur:Landroid/database/Cursor;
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    move-result-object v10

    .line 1172
    .local v10, helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    invoke-virtual {v10}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1173
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "white_apps"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1175
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1176
    const-string v1, "package"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1178
    .local v11, packageIndex:I
    :cond_1
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1179
    .local v12, pkg:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1180
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    invoke-interface {v1, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1188
    .end local v11           #packageIndex:I
    .end local v12           #pkg:Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 1189
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1192
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v10           #helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    :cond_4
    :goto_1
    monitor-exit v13

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1185
    :catch_0
    move-exception v9

    .line 1186
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "HeartyServiceApp"

    const-string v2, ""

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1188
    if-eqz v8, :cond_4

    .line 1189
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1188
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    if-eqz v8, :cond_5

    .line 1189
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public static needLockedApp(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 3251
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mUnLockedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3253
    :cond_0
    const/4 v0, 0x0

    .line 3255
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static putIntoExSet(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "cn"

    .prologue
    .line 416
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 417
    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->cnExSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 418
    monitor-exit v1

    .line 419
    return-void

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static readFilterFile(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 2740
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    const-string v6, "filter"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2741
    .local v3, file:Ljava/io/File;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 2742
    .local v0, bf:Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2743
    .local v4, sb:Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 2744
    .local v1, content:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 2745
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 2746
    if-nez v1, :cond_1

    .line 2751
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 2752
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2754
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :goto_1
    return-object v5

    .line 2749
    .restart local v0       #bf:Ljava/io/BufferedReader;
    .restart local v1       #content:Ljava/lang/String;
    .restart local v3       #file:Ljava/io/File;
    .restart local v4       #sb:Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2753
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v1           #content:Ljava/lang/String;
    .end local v3           #file:Ljava/io/File;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 2754
    .local v2, e:Ljava/io/IOException;
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static realShowFailedDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "activity"
    .parameter "args"

    .prologue
    .line 3658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3659
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v3, "packageName"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3660
    .local v2, packageName:Ljava/lang/String;
    const v3, 0x7f0a0633

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "appName"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0a0634

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3663
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0632

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0174

    new-instance v5, Lcom/zte/heartyservice/main/HeartyServiceApp$11;

    invoke-direct {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp$11;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a012b

    new-instance v5, Lcom/zte/heartyservice/main/HeartyServiceApp$10;

    invoke-direct {v5, v2, p0}, Lcom/zte/heartyservice/main/HeartyServiceApp$10;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 3684
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 3685
    return-object v1
.end method

.method private registerAll()V
    .locals 22

    .prologue
    .line 2558
    new-instance v4, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.USER_PRESENT"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2559
    .local v4, intentFilter:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2560
    const-string v20, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2561
    const-string v20, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2562
    const-string v20, "com.android.server.action.NETWORK_STATS_UPDATED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2563
    const-string v20, "com.android.server.action.SETTINGS_TIMER"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2564
    const-string v20, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2565
    const-string v20, "android.intent.action.TIME_SET"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2566
    const-string v20, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2568
    new-instance v9, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2569
    .local v9, intentFilter2:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.PACKAGE_RESTARTED"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2570
    const-string v20, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2571
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2573
    new-instance v10, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2574
    .local v10, intentFilter3:Landroid/content/IntentFilter;
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2580
    new-instance v18, Landroid/content/IntentFilter;

    const-string v20, "com.zte.heartyservice.floater"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2582
    .local v18, mCloseFloaterFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCloseFloaterReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2586
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2587
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v20, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2594
    new-instance v11, Landroid/content/IntentFilter;

    const-string v20, "permission.intent.action.PERMISSION_EVENT"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2595
    .local v11, intentFilter4:Landroid/content/IntentFilter;
    const-string v20, "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2597
    new-instance v12, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-direct {v12, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2598
    .local v12, intentFilter5:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2599
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2601
    new-instance v13, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2602
    .local v13, intentFilter6:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2603
    const-string v20, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2604
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2606
    new-instance v17, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2607
    .local v17, intentFilterExternal:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPackageAddReceiver:Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2615
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 2616
    .local v14, intentFilter7:Landroid/content/IntentFilter;
    const-string v20, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2619
    sget v20, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0x13

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 2620
    new-instance v15, Landroid/content/IntentFilter;

    const-string v20, "android.provider.Telephony.SMS_RECEIVED"

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2621
    .local v15, intentFilter8:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mInboxSmsReceiver:Lcom/zte/heartyservice/privacy/InboxSmsReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2624
    .end local v15           #intentFilter8:Landroid/content/IntentFilter;
    :cond_0
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 2629
    .local v16, intentFilter9:Landroid/content/IntentFilter;
    const-string v20, "com.zte.heartyservice.appwidget.WidgetReceiver.updateMem"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2631
    const-string v20, "com.zte.heartyservice.appwidget.WidgetReceiver.memPercent"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2632
    const-string v20, "com.zte.heartyservice.appwidget.WidgetReceiver.circleVisible"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2633
    new-instance v20, Lcom/zte/heartyservice/appwidget/WidgetReceiver;

    invoke-direct/range {v20 .. v20}, Lcom/zte/heartyservice/appwidget/WidgetReceiver;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2646
    new-instance v5, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2647
    .local v5, intentFilter11:Landroid/content/IntentFilter;
    const-string v20, "package"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 2648
    new-instance v6, Landroid/content/IntentFilter;

    const-string v20, "com.zte.heartyservice.intent.action.clean_ad_notice"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2649
    .local v6, intentFilter12:Landroid/content/IntentFilter;
    const-string v20, "com.zte.heartyservice.intent.action.clean_permission_notice"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2650
    const-string v20, "com.zte.heartyservice.intent.action.REFRESH_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2651
    const-string v20, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2652
    const-string v20, "com.zte.heartyservice.intent.action.update_battery_notification"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2653
    const-string v20, "com.zte.heartyservice.appwidget.WidgetReceiver.updatePowerMode"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2654
    const-string v20, "com.zte.heartyservice.intent.action.notice_autocheck_score"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2655
    const-string v20, "com.zte.heartyservice.intent.action.clean_autocheck_score"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2656
    const-string v20, "com.zte.heartyservice.intent.action.install_by_heartyservice"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2657
    const-string v20, "qqplaza.intent.action.UPDATABLE_SUM_CHANGE"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2659
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v19

    .line 2660
    .local v19, receiver:Landroid/content/BroadcastReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2661
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2663
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v20

    if-nez v20, :cond_1

    .line 2664
    new-instance v7, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2665
    .local v7, intentFilter13:Landroid/content/IntentFilter;
    new-instance v20, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;

    invoke-direct/range {v20 .. v20}, Lcom/zte/heartyservice/intercept/Common/AddBlackListReceiver;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2668
    .end local v7           #intentFilter13:Landroid/content/IntentFilter;
    :cond_1
    new-instance v8, Landroid/content/IntentFilter;

    const-string v20, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2669
    .local v8, intentFilter14:Landroid/content/IntentFilter;
    const-string v20, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2670
    new-instance v20, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;

    invoke-direct/range {v20 .. v20}, Lcom/zte/heartyservice/setting/LockScreenCleanReceiver;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2672
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->addMonitor()V

    .line 2674
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerBroadcastReceiver()V

    .line 2677
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->updateData()V

    .line 2678
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->getLeftChargingTime(Landroid/content/Context;II)Ljava/lang/String;

    .line 2679
    invoke-static {}, Lcom/zte/heartyservice/update/NetworkTool;->startDownloadMonitor()V

    .line 2681
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->checkMonitor()V

    .line 2683
    invoke-static {}, Lcom/zte/heartyservice/update/CTUpdateNotice;->checkMonitor()V

    .line 2684
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 3436
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3437
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3438
    const-string v1, "zte.intent.action.APP_LOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3439
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3440
    return-void
.end method

.method public static registerCallLogContentObserver()V
    .locals 4

    .prologue
    .line 2419
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    if-nez v0, :cond_0

    .line 2420
    new-instance v0, Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/CallLogContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    .line 2421
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2425
    :cond_0
    return-void
.end method

.method private registerNetStatsUpdate()V
    .locals 2

    .prologue
    .line 2491
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2492
    .local v0, statsFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2493
    iget-object v1, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mStatsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2494
    return-void
.end method

.method public static registerSmsContentObserver()V
    .locals 4

    .prologue
    .line 2435
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    if-nez v0, :cond_0

    .line 2436
    new-instance v0, Lcom/zte/heartyservice/privacy/SmsContentObserver;

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/privacy/SmsContentObserver;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    .line 2437
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2440
    :cond_0
    return-void
.end method

.method public static removeDismissNotifyMsg()V
    .locals 2

    .prologue
    .line 3634
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3635
    return-void
.end method

.method public static removeSwitchingSaveSettingMsg()V
    .locals 2

    .prologue
    .line 3643
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3644
    return-void
.end method

.method public static removeWhiteApp(Ljava/lang/String;)V
    .locals 7
    .parameter "pkgname"

    .prologue
    .line 1205
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->sSycObject:Ljava/lang/Object;

    monitor-enter v4

    .line 1206
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 1208
    :try_start_1
    invoke-static {}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getInstance()Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;

    move-result-object v2

    .line 1210
    .local v2, helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    invoke-virtual {v2}, Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1211
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "white_apps"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1213
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sWhiteApps:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1218
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #helper:Lcom/zte/heartyservice/setting/SettingSQLiteOpenHelper;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v4

    .line 1219
    return-void

    .line 1214
    :catch_0
    move-exception v1

    .line 1215
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "HeartyServiceApp"

    const-string v5, ""

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1218
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static sendAutoNetTrafficAdjustMsg()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 881
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 882
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 884
    return-void
.end method

.method public static setAntiPhoneRecordingSetting(I)V
    .locals 2
    .parameter "i"

    .prologue
    .line 3504
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "anti_phone_recording"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3505
    return-void
.end method

.method public static setAppCache(J)V
    .locals 5
    .parameter "pappcache"

    .prologue
    .line 1412
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    monitor-enter v2

    .line 1413
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    .line 1414
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1415
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "appcache"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->appcache:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1417
    monitor-exit v2

    .line 1418
    return-void

    .line 1417
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setAppCacheInfoList(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1527
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppCacheInfo;>;"
    sget-object v6, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    monitor-enter v6

    .line 1528
    :try_start_0
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1529
    sget-object v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppCacheInfoList:Ljava/util/List;

    invoke-interface {v5, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1530
    const-wide/16 v3, 0x0

    .line 1531
    .local v3, total_cache:J
    const/4 v2, 0x0

    .line 1532
    .local v2, size:I
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 1533
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;

    .line 1534
    .local v1, loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    iget-wide v7, v1, Lcom/zte/heartyservice/common/datatype/AppCacheInfo;->cache:J

    add-long/2addr v3, v7

    goto :goto_0

    .line 1536
    .end local v1           #loaclAppCacheInfo:Lcom/zte/heartyservice/common/datatype/AppCacheInfo;
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1538
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-static {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAppCache(J)V

    .line 1539
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setExistCacheAppNum(I)V

    .line 1540
    monitor-exit v6

    .line 1547
    return-void

    .line 1540
    .end local v2           #size:I
    .end local v3           #total_cache:J
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public static setAppFileInfoList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AppFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1570
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AppFileInfo;>;"
    sget-object v7, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    monitor-enter v7

    .line 1571
    :try_start_0
    sget-object v6, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 1572
    sget-object v6, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAppFileInfoList:Ljava/util/List;

    invoke-interface {v6, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1573
    const-wide/16 v2, 0x0

    .line 1574
    .local v2, total_size_of_deleted_apk:J
    const-wide/16 v4, 0x0

    .line 1575
    .local v4, total_size_of_exist_apk:J
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1576
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;

    .line 1577
    .local v1, loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    iget v6, v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->exist:I

    if-lez v6, :cond_0

    .line 1578
    iget-wide v8, v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    add-long/2addr v4, v8

    goto :goto_0

    .line 1580
    :cond_0
    iget-wide v8, v1, Lcom/zte/heartyservice/common/datatype/AppFileInfo;->fileSize:J

    add-long/2addr v2, v8

    goto :goto_0

    .line 1584
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loaclAppFileInfo:Lcom/zte/heartyservice/common/datatype/AppFileInfo;
    :cond_1
    invoke-static {v4, v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setExistAppFileSize(J)V

    .line 1585
    invoke-static {v2, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDeletedAppFileSize(J)V

    .line 1586
    monitor-exit v7

    .line 1587
    return-void

    .line 1586
    .end local v2           #total_size_of_deleted_apk:J
    .end local v4           #total_size_of_exist_apk:J
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public static setAppFileScanState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1592
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isAppFileScanning:Z

    .line 1593
    return-void
.end method

.method public static setAutoRunAppInfoList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1470
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;>;"
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAutoRunAppInfoList:Ljava/util/List;

    monitor-enter v4

    .line 1471
    :try_start_0
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAutoRunAppInfoList:Ljava/util/List;

    .line 1472
    const/4 v2, 0x0

    .line 1473
    .local v2, size:I
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1474
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;

    .line 1475
    .local v1, loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    iget v3, v1, Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;->enable:I

    add-int/2addr v2, v3

    goto :goto_0

    .line 1478
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #loaclAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/AutoRunAppInfo;
    :cond_0
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setAutoRunAppNum(I)V

    .line 1479
    monitor-exit v4

    .line 1486
    return-void

    .line 1479
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static setAutoRunAppNum(I)V
    .locals 4
    .parameter "pauto_run_app_num"

    .prologue
    .line 1367
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    monitor-enter v2

    .line 1368
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    .line 1369
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1370
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "auto_run_app_num"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->auto_run_app_num:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1371
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1372
    monitor-exit v2

    .line 1373
    return-void

    .line 1372
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setBackgroundAutoRunAppInfoList(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1495
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;>;"
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    monitor-enter v4

    .line 1496
    :try_start_0
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mBackgroundAutoRunAppInfoList:Ljava/util/List;

    .line 1497
    const/4 v2, 0x0

    .line 1498
    .local v2, size:I
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 1499
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;

    .line 1500
    .local v1, localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    iget v3, v1, Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;->stoppedState:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1503
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #localBackgroundAutoRunAppInfo:Lcom/zte/heartyservice/common/datatype/BackgroundAutoRunAppInfo;
    :cond_1
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setBackgroundAutoRunAppNum(I)V

    .line 1504
    monitor-exit v4

    .line 1505
    return-void

    .line 1504
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static setBackgroundAutoRunAppNum(I)V
    .locals 4
    .parameter "pbackground_auto_run_app_num"

    .prologue
    .line 1382
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    monitor-enter v2

    .line 1383
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    .line 1384
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1385
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "background_auto_run_app_num"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->background_auto_run_app_num:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1386
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1387
    monitor-exit v2

    .line 1388
    return-void

    .line 1387
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setCharging(Z)V
    .locals 0
    .parameter "charging"

    .prologue
    .line 3188
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isCharging:Z

    .line 3189
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 2455
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mContextQQ:Landroid/content/Context;

    .line 2456
    return-void
.end method

.method private static setDefaultFilters()V
    .locals 2

    .prologue
    .line 2714
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2715
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2716
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "android.process.acore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2717
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2718
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2719
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "android.process.media"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2720
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2721
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.voicedialer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2722
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.nfc3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2723
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2724
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "zte.com.cn.alarmclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2725
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.SmsService"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2726
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.cootek.smartinputv5"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2727
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.google.process.gapps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2728
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.smspush"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2729
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.launcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2730
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.qualcomm.wiper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2731
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.qualcomm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2732
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2733
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2734
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2735
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    const-string v1, "com.zte.okb.service:remote"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2736
    return-void
.end method

.method public static setDeletedAppFileSize(J)V
    .locals 5
    .parameter "pdeleted_app_file_size"

    .prologue
    .line 1442
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    monitor-enter v2

    .line 1443
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    .line 1444
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1445
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "deleted_app_file_size"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->deleted_app_file_size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1446
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1447
    monitor-exit v2

    .line 1448
    return-void

    .line 1447
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setDonotDisturbStart(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 3212
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart:Z

    .line 3213
    return-void
.end method

.method public static setDonotDisturbStartToastShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 3220
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow:Z

    .line 3221
    return-void
.end method

.method public static setErrorLoginTime(Ljava/util/Date;)V
    .locals 0
    .parameter "errorLoginTime"

    .prologue
    .line 2867
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->errorLoginTime:Ljava/util/Date;

    .line 2868
    return-void
.end method

.method public static setExamResult(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 2779
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2780
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "exam_result_level"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2781
    const-string v1, "exam_result_time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/zte/heartyservice/common/utils/TimeUtils;->getDateForString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2782
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2783
    return-void
.end method

.method public static setExamScore(I)V
    .locals 2
    .parameter "score"

    .prologue
    .line 2795
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2796
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "exam_result_score"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2797
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2798
    return-void
.end method

.method public static setExistAppFileSize(J)V
    .locals 5
    .parameter "pexist_app_file_size"

    .prologue
    .line 1427
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    monitor-enter v2

    .line 1428
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    .line 1429
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1430
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "exist_app_file_size"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_app_file_size:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1431
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1432
    monitor-exit v2

    .line 1433
    return-void

    .line 1432
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setExistCacheAppNum(I)V
    .locals 4
    .parameter "pexist_cache_app_num"

    .prologue
    .line 1397
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    monitor-enter v2

    .line 1398
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    .line 1399
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1400
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "exist_cache_app_num"

    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->exist_cache_app_num:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1401
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1402
    monitor-exit v2

    .line 1403
    return-void

    .line 1402
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setFilters(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 2759
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2760
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->readFilterFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2761
    .local v0, filterString:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2762
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDefaultFilters()V

    .line 2770
    :cond_0
    return-void

    .line 2765
    :cond_1
    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2766
    .local v1, filters:[Ljava/lang/String;
    array-length v3, v1

    .line 2767
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 2768
    sget-object v4, Lcom/zte/heartyservice/main/HeartyServiceApp;->process_filter:Ljava/util/HashSet;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2767
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static setFirstStart()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 1018
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_version_code"

    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v2}, Lcom/zte/heartyservice/update/Config;->getVerCode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1019
    const-wide/32 v0, 0x36ee80

    invoke-static {v3, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPeriod(IJ)V

    .line 1020
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {v0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingTimer(Landroid/content/Context;I)V

    .line 1021
    const-string v0, "hs_auto_sta"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 1022
    return-void
.end method

.method public static setFolderUuid(Ljava/lang/String;)V
    .locals 0
    .parameter "folderUuid"

    .prologue
    .line 674
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->folderUuid:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public static setInterceptadOpen(Z)Z
    .locals 6
    .parameter "open"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1029
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/data/com.zte.heartyservice/files/used.dat"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1030
    .local v0, used:Ljava/io/File;
    if-ne p0, v1, :cond_1

    .line 1031
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1032
    sget-object v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const v4, 0x7f060012

    const-string v5, "used.dat"

    invoke-static {v3, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->copyFileFromRaw(Landroid/content/Context;ILjava/lang/String;)V

    .line 1039
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1040
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "interceptad"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1044
    :goto_1
    return v1

    .line 1035
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1036
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1043
    :cond_2
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "interceptad"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v1, v2

    .line 1044
    goto :goto_1
.end method

.method private static setLastTimestamp(IJ)V
    .locals 6
    .parameter "id"
    .parameter "ts"

    .prologue
    .line 932
    const-string v2, "HeartyServiceApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "liuji ------ setLastTimestamp id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " last:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 934
    .local v1, key:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 935
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 936
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 938
    return-void
.end method

.method public static setNeedRefreshGrid(Z)V
    .locals 0
    .parameter "needRefreshGrid"

    .prologue
    .line 682
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshGrid:Z

    .line 683
    return-void
.end method

.method public static setNeedRefreshList(Z)V
    .locals 0
    .parameter "needRefreshList"

    .prologue
    .line 690
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->needRefreshList:Z

    .line 691
    return-void
.end method

.method public static setOption(Ljava/lang/String;Z)V
    .locals 1
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 829
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSpSettings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 830
    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 639
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->password:Ljava/lang/String;

    .line 640
    return-void
.end method

.method public static setPasswordType(I)V
    .locals 0
    .parameter "passwordType"

    .prologue
    .line 650
    sput p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->passwordType:I

    .line 651
    return-void
.end method

.method public static setPeriod(IJ)V
    .locals 3
    .parameter "id"
    .parameter "ts"

    .prologue
    .line 946
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    aget-object v1, v2, p0

    .line 947
    .local v1, key:Ljava/lang/String;
    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 948
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 949
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 950
    return-void
.end method

.method public static setPeriod(Ljava/lang/String;J)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 999
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1000
    return-void
.end method

.method public static setPresetCTFlag()V
    .locals 3

    .prologue
    .line 3235
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_preset_ct"

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3240
    return-void
.end method

.method public static setPrivateKey(Ljava/security/PrivateKey;)V
    .locals 0
    .parameter "privateKey"

    .prologue
    .line 666
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privateKey:Ljava/security/PrivateKey;

    .line 667
    return-void
.end method

.method public static setPublicKey(Ljava/security/PublicKey;)V
    .locals 0
    .parameter "publicKey"

    .prologue
    .line 658
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->publicKey:Ljava/security/PublicKey;

    .line 659
    return-void
.end method

.method public static setRunningProcessInfoList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1457
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/RunningProcessInfo;>;"
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mRunningProcessInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1458
    :try_start_0
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mRunningProcessInfoList:Ljava/util/List;

    .line 1459
    const-string v0, "HeartyServiceApp"

    const-string v2, "setRunningProcessInfoList"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    monitor-exit v1

    .line 1461
    return-void

    .line 1460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setSettingInt(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1003
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1004
    return-void
.end method

.method public static setSettingTimer(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "id"

    .prologue
    .line 913
    sget-object v9, Lcom/zte/heartyservice/main/HeartyServiceApp;->settingIdToKey:[Ljava/lang/String;

    aget-object v2, v9, p1

    .line 915
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v5

    .line 917
    .local v5, period:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 918
    .local v0, current:J
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getLastTimestamp(Ljava/lang/String;)J

    move-result-wide v3

    .line 919
    .local v3, last:J
    add-long v7, v3, v5

    .line 920
    .local v7, timeStamp:J
    cmp-long v9, v7, v0

    if-lez v9, :cond_0

    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-eqz v9, :cond_0

    cmp-long v9, v3, v0

    if-lez v9, :cond_1

    .line 921
    :cond_0
    invoke-static {p1, v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setLastTimestamp(IJ)V

    .line 922
    invoke-static {v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPeriod(Ljava/lang/String;)J

    move-result-wide v9

    add-long v7, v0, v9

    .line 925
    :cond_1
    const-string v9, "HeartyServiceApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "liuji ------ setSettingTimer id:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " current:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v0, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " last:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v3, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timeStamp:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    div-long v11, v7, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    invoke-static {p0, p1, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimer(Landroid/content/Context;IJ)V

    .line 928
    return-void
.end method

.method public static setShoppingSafe(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1287
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1288
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "shopping_safe"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1290
    return-void
.end method

.method public static setShowPermNotice(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 1277
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1278
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "perm_notice"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1280
    return-void
.end method

.method public static setShowPrivacyLoginActivity(Z)V
    .locals 0
    .parameter "showPrivacyLoginActivity"

    .prologue
    .line 718
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->showPrivacyLoginActivity:Z

    .line 719
    return-void
.end method

.method public static setShowTemp(Z)V
    .locals 0
    .parameter "showTemp"

    .prologue
    .line 698
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->showTemp:Z

    .line 699
    return-void
.end method

.method public static setSmartLowModeStart(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 3168
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart:Z

    .line 3169
    return-void
.end method

.method public static setSysGarbageFile(Lcom/zte/heartyservice/speedup/SysGarbageFile;)V
    .locals 2
    .parameter "mSysGarbage"

    .prologue
    .line 1516
    const-string v0, "HeartyServiceApp"

    const-string v1, "setSysGarbageFile ===================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSysGarbageFile:Lcom/zte/heartyservice/speedup/SysGarbageFile;

    .line 1518
    return-void
.end method

.method private static setTimer(Landroid/content/Context;IJ)V
    .locals 5
    .parameter "context"
    .parameter "id"
    .parameter "delay"

    .prologue
    .line 903
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.action.SETTINGS_TIMER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "key_settings_alarm"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    const-string v1, "HeartyServiceApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji ------ setTimer id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " delay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    const/high16 v3, 0x1000

    invoke-static {p0, p1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, p2, p3, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 910
    return-void
.end method

.method public static setTimingSaveElectricityStart(Z)V
    .locals 0
    .parameter "start"

    .prologue
    .line 3196
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart:Z

    .line 3197
    return-void
.end method

.method public static setTimingSaveElectricityStartToastShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 3204
    sput-boolean p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow:Z

    .line 3205
    return-void
.end method

.method public static setUmeDownloadId(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1309
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1310
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "ume_download_id"

    invoke-interface {v0, v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1312
    return-void
.end method

.method public static setUrlSafeDefault(Z)V
    .locals 5
    .parameter "default_enable"

    .prologue
    .line 1302
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v2

    const-string v3, "ume"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1303
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1304
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    const-string v2, "url_safe_default"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1306
    return-void
.end method

.method public static setWidgetEndID(I)V
    .locals 2
    .parameter "endIdNow"

    .prologue
    .line 3457
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3458
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_end_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3460
    return-void
.end method

.method public static setWidgetStartID(I)V
    .locals 2
    .parameter "startIdNow"

    .prologue
    .line 3451
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3452
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "widget_start_id"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3453
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3454
    return-void
.end method

.method private showAlertToday(I)V
    .locals 13
    .parameter "type"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x1400

    .line 1656
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1658
    .local v5, localCalendar:Ljava/util/Calendar;
    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1659
    .local v7, year:I
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 1660
    .local v6, month:I
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1662
    .local v0, day:I
    mul-int/lit16 v8, v7, 0x2710

    mul-int/lit8 v9, v6, 0x64

    add-int/2addr v8, v9

    add-int v1, v8, v0

    .line 1664
    .local v1, featureCode:I
    packed-switch p1, :pswitch_data_0

    .line 1714
    :goto_0
    return-void

    .line 1666
    :pswitch_0
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1668
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1669
    const-string v8, "msim_id"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    :cond_0
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1672
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_day"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1676
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 1678
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1679
    const-string v8, "msim_id"

    invoke-virtual {v2, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1681
    :cond_1
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1682
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_month"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1686
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/net/OverLimitAlert;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "msim_id"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1688
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_day_2"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1691
    :pswitch_3
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/zte/heartyservice/net/OverLimitMonthAlert;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "msim_id"

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1693
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_month_2"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1697
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;

    invoke-direct {v3, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1698
    .local v3, intent0:Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1699
    const-string v8, "currentSim"

    invoke-virtual {v3, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1700
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1701
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_idleHours_sim0"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1704
    .end local v3           #intent0:Landroid/content/Intent;
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-class v8, Lcom/zte/heartyservice/net/OverLimitIdleHoursAlert;

    invoke-direct {v4, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1705
    .local v4, intent1:Landroid/content/Intent;
    invoke-virtual {v4, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1706
    const-string v8, "currentSim"

    invoke-virtual {v4, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1707
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 1708
    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "overlimit_code_idleHours_sim1"

    invoke-interface {v8, v9, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 1664
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static showDataSpaceNearlyNotEnough()V
    .locals 2

    .prologue
    .line 730
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 731
    return-void
.end method

.method public static showDataSpaceNotEnough()V
    .locals 2

    .prologue
    .line 722
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 723
    return-void
.end method

.method public static showEnterShoppingRisk(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 3593
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3594
    const/4 v0, 0x2

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3595
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 3596
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 3598
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0, p0}, Lcom/zte/heartyservice/indicator/Notifier;->showShoppingNotification(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V

    .line 3599
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 3600
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3601
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3602
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipExit:Z

    .line 3603
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showRiskDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3604
    return-void
.end method

.method public static showEnterShoppingSafe(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3581
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3582
    const/4 v0, 0x1

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3583
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 3584
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 3586
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelShoppingNotification()V

    .line 3587
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 3588
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3589
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3590
    return-void
.end method

.method public static showExitShoppingRisk(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3618
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3619
    const/4 v0, 0x4

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3620
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 3621
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 3623
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 3624
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3625
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3626
    return-void
.end method

.method public static showExitShoppingSafe(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3607
    sput-object p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3608
    const/4 v0, 0x3

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3609
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 3610
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 3612
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 3613
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 3614
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    .line 3615
    return-void
.end method

.method public static showFeedbackFail()V
    .locals 3

    .prologue
    .line 3517
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3518
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3519
    return-void
.end method

.method public static showFeedbackSucess()V
    .locals 3

    .prologue
    .line 3512
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3513
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3514
    return-void
.end method

.method public static showFrontCover(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1049
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isFirstStart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1050
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1051
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/zte/heartyservice/main/FrontCover;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1052
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1054
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static showLowPowerSaveStart()V
    .locals 3

    .prologue
    .line 3529
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3530
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3531
    return-void
.end method

.method public static showLowPowerSaveStop()V
    .locals 3

    .prologue
    .line 3534
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3535
    .local v0, msg:Landroid/os/Message;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3536
    return-void
.end method

.method public static showPermissionDialog(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4
    .parameter "packageName"
    .parameter "permission"
    .parameter "enable"
    .parameter "slotId"

    .prologue
    .line 3408
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-class v3, Lcom/zte/heartyservice/main/PermissionAlert;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "packageName"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "permission"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enable"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "slotId"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startActivity(Landroid/content/Intent;)V

    .line 3414
    return-void
.end method

.method public static showRiskDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "appName"
    .parameter "packageName"

    .prologue
    .line 3647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3648
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "appName"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    const/4 v1, 0x0

    const-class v2, Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "realShowFailedDialog"

    invoke-static {v1, v2, v3, v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3654
    return-void
.end method

.method public static showSDSpaceNotEnough()V
    .locals 2

    .prologue
    .line 726
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->privacyHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    return-void
.end method

.method private showTrafficOverLimitAlert(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isAlertShownToday(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1604
    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showAlertToday(I)V

    goto :goto_0
.end method

.method public static simIsReady()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 2356
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    .line 2357
    .local v0, ms:Lcom/zte/heartyservice/msim/SimManager;
    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->hasSimReady()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2371
    :cond_0
    :goto_0
    return v2

    .line 2361
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2363
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 2365
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    if-nez v3, :cond_2

    .line 2366
    sget v3, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 2371
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startAutoStartAndPersistentForEver()V
    .locals 1

    .prologue
    .line 2539
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 2540
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 2542
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 2543
    return-void
.end method

.method public static switchingSaveSettingAfter5S()V
    .locals 4

    .prologue
    .line 3638
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->removeSwitchingSaveSettingMsg()V

    .line 3639
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3640
    return-void
.end method

.method public static unRegisterCallLogContentObserver()V
    .locals 2

    .prologue
    .line 2428
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    if-eqz v0, :cond_0

    .line 2429
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2430
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCallLogContentObserver:Lcom/zte/heartyservice/privacy/CallLogContentObserver;

    .line 2432
    :cond_0
    return-void
.end method

.method public static unRegisterSmsContentObserver()V
    .locals 2

    .prologue
    .line 2443
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    if-eqz v0, :cond_0

    .line 2444
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2445
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSmsContentObserver:Lcom/zte/heartyservice/privacy/SmsContentObserver;

    .line 2447
    :cond_0
    return-void
.end method

.method private unregisterAll()V
    .locals 1

    .prologue
    .line 2687
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2689
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPermissionEventReceiver:Lcom/zte/heartyservice/permission/PermissionEventReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2690
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mPackageAddReceiver:Lcom/zte/heartyservice/porting/All/PortingPackageAddReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2692
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mCloseFloaterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2694
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSoftwareUpdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2696
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->removeMonitor()V

    .line 2697
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->unregisterReceiver()V

    .line 2698
    invoke-static {}, Lcom/zte/heartyservice/common/utils/PackageManagerCache;->unregisterReceiver()V

    .line 2699
    invoke-static {}, Lcom/zte/heartyservice/power/LeftChargingTimeCalculator;->stopLeftChargingTimeCalculator()V

    .line 2700
    invoke-static {}, Lcom/zte/heartyservice/update/NetworkTool;->stopDownloadMonitor()V

    .line 2702
    invoke-static {}, Lcom/zte/heartyservice/intercept/Common/CallEventMonitor;->stopMonitor()V

    .line 2704
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unRegisterCallLogContentObserver()V

    .line 2705
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unRegisterSmsContentObserver()V

    .line 2707
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SMSContentObserver;->removeAllCallBack()V

    .line 2709
    return-void
.end method

.method public static updateShowShortCutItems(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/main/ShortCutItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3118
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/ShortCutItem;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3120
    .local v5, showShortcutAtions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 3121
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 3122
    .local v2, item:Lcom/zte/heartyservice/main/ShortCutItem;
    iget-object v6, v2, Lcom/zte/heartyservice/main/ShortCutItem;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3125
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/zte/heartyservice/main/ShortCutItem;
    :cond_0
    const/4 v3, 0x0

    .line 3127
    .local v3, os:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    sget-object v6, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v7, "short_cut_action_show"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3129
    .end local v3           #os:Ljava/io/ObjectOutputStream;
    .local v4, os:Ljava/io/ObjectOutputStream;
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3133
    if-eqz v4, :cond_3

    .line 3135
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 3141
    .end local v4           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #os:Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 3136
    .end local v3           #os:Ljava/io/ObjectOutputStream;
    .restart local v4       #os:Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v0

    .line 3137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 3138
    .end local v4           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #os:Ljava/io/ObjectOutputStream;
    goto :goto_1

    .line 3130
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3131
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3133
    if-eqz v3, :cond_1

    .line 3135
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 3136
    :catch_2
    move-exception v0

    .line 3137
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3133
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    .line 3135
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 3138
    :cond_2
    :goto_4
    throw v6

    .line 3136
    :catch_3
    move-exception v0

    .line 3137
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 3133
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #os:Ljava/io/ObjectOutputStream;
    .restart local v4       #os:Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #os:Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 3130
    .end local v3           #os:Ljava/io/ObjectOutputStream;
    .restart local v4       #os:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #os:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .end local v3           #os:Ljava/io/ObjectOutputStream;
    .restart local v4       #os:Ljava/io/ObjectOutputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #os:Ljava/io/ObjectOutputStream;
    .restart local v3       #os:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .parameter "base"

    .prologue
    .line 2123
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 2124
    invoke-static {}, Lcom/zte/heartyservice/main/CrashHandler;->getInstance()Lcom/zte/heartyservice/main/CrashHandler;

    move-result-object v0

    .line 2126
    .local v0, crashHandler:Lcom/zte/heartyservice/main/CrashHandler;
    sget-object v1, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/CrashHandler;->init(Landroid/content/Context;)V

    .line 2127
    invoke-virtual {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->initApplication()V

    .line 2128
    return-void
.end method

.method public check(I)V
    .locals 13
    .parameter "index"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 563
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, iN:Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    const-string v6, "Z2V0U2hhcmVkUHJlZmVyZW5jZXM="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-array v6, v9, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/String;

    const-string v8, "cGluZGV4"

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    aput-object v7, v6, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {p0, v5, v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 567
    .local v2, indexSettings:Ljava/lang/Object;
    new-instance v5, Ljava/lang/String;

    const-string v6, "Z2V0TG9uZw=="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v10

    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v2, v5, v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 569
    .local v3, value:J
    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 571
    new-instance v5, Ljava/lang/String;

    const-string v6, "ZWRpdA=="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2, v5, v12}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 573
    .local v0, edit:Ljava/lang/Object;
    new-instance v5, Ljava/lang/String;

    const-string v6, "cHV0TG9uZw=="

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v1, v6, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {v0, v5, v6}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    new-instance v5, Ljava/lang/String;

    const-string v6, "Y29tbWl0"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v9}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v5, v12}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method public checkAllTimer()V
    .locals 2

    .prologue
    .line 808
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 809
    invoke-static {p0, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    :cond_0
    return-void
.end method

.method public find(Ljava/lang/String;)J
    .locals 10
    .parameter "iN"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 606
    new-instance v3, Ljava/lang/String;

    const-string v4, "Z2V0U2hhcmVkUHJlZmVyZW5jZXM="

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/String;

    const-string v6, "cGluZGV4"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    aput-object v5, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {p0, v3, v4}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 607
    .local v0, indexSettings:Ljava/lang/Object;
    new-instance v3, Ljava/lang/String;

    const-string v4, "Z2V0TG9uZw=="

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v7}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v8

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0, v3, v4}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 608
    .local v1, value:J
    return-wide v1
.end method

.method public getDid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->did:Ljava/lang/String;

    return-object v0
.end method

.method public getMname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mname:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getWmParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter "name"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->wmParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public initApplication()V
    .locals 2

    .prologue
    .line 2131
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mTm:Landroid/telephony/TelephonyManager;

    .line 2132
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->did:Ljava/lang/String;

    .line 2133
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sid:Ljava/lang/String;

    .line 2134
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->did:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2135
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->did:Ljava/lang/String;

    .line 2137
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sid:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2138
    const-string v0, ""

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->sid:Ljava/lang/String;

    .line 2140
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mname:Ljava/lang/String;

    .line 2141
    iget-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mname:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2142
    const-string v0, "android"

    iput-object v0, p0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mname:Ljava/lang/String;

    .line 2144
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->init()V

    .line 2145
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->loadWhiteApps()V

    .line 2146
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 3522
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3523
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    if-eqz v0, :cond_0

    .line 3524
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mGlobalAppLockDialog:Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/ZTEPrivacyAppLockDialog;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3526
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 18

    .prologue
    .line 2150
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2151
    sget-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v14, "user_enter"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    move-result-object v13

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/zte/heartyservice/net/NetManagermentUtils;->setAppIpRule(IZ)V

    .line 2156
    const-wide/16 v13, 0x64

    :try_start_0
    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2164
    :cond_0
    :goto_0
    sget-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v14, "init_flag"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 2166
    sget-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v14, "init_flag"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v13, v14, v15}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2168
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2169
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 2171
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2172
    const-string v13, "virusdb_auto_update_enable"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2178
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/privacy/PrivacySetting;->loadLastDisguise()V

    .line 2179
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getSettingSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2180
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v13, "virusdb_auto_update_enable"

    invoke-interface {v10, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "autoupdate_on"

    invoke-interface {v10, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2181
    const-string v13, "virusdb_auto_update_enable"

    const-string v14, "autoupdate_on"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/zte/heartyservice/common/utils/SettingUtils;->putBooleanSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2184
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "autoupdate_on"

    invoke-interface {v13, v14}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2190
    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 2192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v13}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getScreenLockMonitor()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2194
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2201
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2203
    new-instance v7, Lcom/zte/heartyservice/main/MarketApi;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v7, v13}, Lcom/zte/heartyservice/main/MarketApi;-><init>(Landroid/content/Context;)V

    .line 2204
    .local v7, m:Lcom/zte/heartyservice/main/MarketApi;
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Lcom/zte/heartyservice/main/MarketApi;->sendTencentAction(Z)V

    .line 2207
    .end local v7           #m:Lcom/zte/heartyservice/main/MarketApi;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getAll()V

    .line 2208
    new-instance v13, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;

    invoke-direct {v13}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;-><init>()V

    sput-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->standardInterfaceUtils:Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;

    .line 2209
    new-instance v13, Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;

    sget-object v14, Lcom/zte/heartyservice/main/HeartyServiceApp;->sHeartyServiceApp:Lcom/zte/heartyservice/main/HeartyServiceApp;

    const-string v15, "virustable"

    const/16 v16, 0x0

    sget v17, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable_version:I

    invoke-direct/range {v13 .. v17}, Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    invoke-virtual {v13}, Lcom/zte/heartyservice/common/utils/AntivirusSQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    sput-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->virustable:Landroid/database/sqlite/SQLiteDatabase;

    .line 2212
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->doInterceptAdPrepare()V

    .line 2213
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerAll()V

    .line 2214
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setFilters(Landroid/content/Context;)V

    .line 2215
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->initFloater()V

    .line 2217
    const-string v13, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotificationManager:Landroid/app/NotificationManager;

    .line 2218
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->getInstance()Lcom/zte/heartyservice/indicator/Notifier;

    move-result-object v13

    sput-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    .line 2219
    sget-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v13}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 2225
    new-instance v8, Landroid/content/Intent;

    const-class v13, Lcom/zte/heartyservice/power/BatteryService;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2226
    .local v8, powerServiceIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2228
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isBestSoftwaresEnable()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2230
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mFileObserver:Landroid/os/FileObserver;

    if-nez v13, :cond_5

    .line 2231
    const-string v13, "HeartyServiceApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Environment.getExternalStorageDirectory().getPath()"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v13, Lcom/zte/heartyservice/main/HeartyServiceApp$SDCardFileObserver;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/qqplazaZte/Apk"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/zte/heartyservice/main/HeartyServiceApp$SDCardFileObserver;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mFileObserver:Landroid/os/FileObserver;

    .line 2233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v13}, Landroid/os/FileObserver;->startWatching()V

    .line 2237
    :cond_5
    const-string v1, "qqplaza.intent.action.GET_UPDATABLE_SUM"

    .line 2238
    .local v1, ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2239
    .local v12, updateintent:Landroid/content/Intent;
    invoke-virtual {v12, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2240
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2241
    const-string v13, "HeartyServiceApp"

    const-string v14, "send ==============xxx============="

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const-string v13, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 2259
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->registerNetStatsUpdate()V

    .line 2264
    const-string v13, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/AlarmManager;

    sput-object v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->mAlarmManager:Landroid/app/AlarmManager;

    .line 2265
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->initDefaultSettings()V

    .line 2266
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkAllTimerWhenAppStart()V

    .line 2269
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsMSIM()Z

    move-result v13

    sput-boolean v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMsim:Z

    .line 2270
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsMTKMsim()Z

    move-result v13

    sput-boolean v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->isMTKMsim:Z

    .line 2271
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkIsQualcommMsim()Z

    move-result v13

    sput-boolean v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->isQualcommMsim:Z

    .line 2273
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->checkAndroidID()V

    .line 2274
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v13

    invoke-static {v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPublicKey(Ljava/security/PublicKey;)V

    .line 2275
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getKeyType()I

    move-result v13

    invoke-static {v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPasswordType(I)V

    .line 2277
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getACHashSet()Ljava/util/HashSet;

    move-result-object v6

    .line 2279
    .local v6, localACHashSet:Ljava/util/HashSet;
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 2280
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMaxHandledCalllogId()I

    move-result v4

    .line 2281
    .local v4, lastHandledCalllogId:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v4, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveCallLog2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 2282
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 2284
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v13

    invoke-virtual {v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getMaxHandledSmsId()I

    move-result v5

    .line 2285
    .local v5, lastHandledSmsId:I
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v5, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->moveSms2PrivatySpace(Ljava/util/HashSet;ZILcom/zte/heartyservice/common/utils/StandardInterfaceUtils$MoveTaskUpdateCB;)Z

    .line 2286
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 2291
    .end local v4           #lastHandledCalllogId:I
    .end local v5           #lastHandledSmsId:I
    :cond_6
    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 2292
    .local v11, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_a

    .line 2293
    const/4 v13, 0x2

    sput v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    .line 2305
    :cond_7
    :goto_2
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v13

    new-instance v14, Lcom/zte/heartyservice/main/HeartyServiceApp$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp$6;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    invoke-virtual {v13, v14}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 2313
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/zte/heartyservice/net/NetManagermentUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetManagermentUtils;

    .line 2315
    new-instance v13, Ljava/lang/Thread;

    new-instance v14, Lcom/zte/heartyservice/main/HeartyServiceApp$7;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/zte/heartyservice/main/HeartyServiceApp$7;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;)V

    invoke-direct {v13, v14}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 2323
    const-string v13, "com.zte.retrieve"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 2324
    const-string v13, "com.zte.backup.mmi"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->setPackageStoppedState(Ljava/lang/String;Z)V

    .line 2326
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.zte.heartyservice.intent.broadcast.autorun.state"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2327
    .local v3, intent:Landroid/content/Intent;
    const-string v13, "state"

    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->isAutoRunOn(Landroid/content/Context;)Z

    move-result v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2328
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 2330
    const-string v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    new-instance v14, Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/zte/heartyservice/main/HeartyServiceApp$AntiEavesdropPhoneStateListener;-><init>(Lcom/zte/heartyservice/main/HeartyServiceApp;Lcom/zte/heartyservice/main/HeartyServiceApp$1;)V

    const/16 v15, 0x20

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2331
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isUpdateFromPresetCT()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2332
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->set()V

    .line 2333
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->removePresetCTShortCut()V

    .line 2334
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->addLaunchShortCut()V

    .line 2335
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPresetCTFlag()V

    .line 2338
    :cond_8
    return-void

    .line 2157
    .end local v1           #ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #localACHashSet:Ljava/util/HashSet;
    .end local v8           #powerServiceIntent:Landroid/content/Intent;
    .end local v10           #sp:Landroid/content/SharedPreferences;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    .end local v12           #updateintent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 2158
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 2198
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v10       #sp:Landroid/content/SharedPreferences;
    :cond_9
    new-instance v13, Landroid/content/Intent;

    const-class v14, Lcom/zte/heartyservice/floater/ScreenLockMonitorService;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/zte/heartyservice/main/HeartyServiceApp;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 2294
    .restart local v1       #ACTION_GET_UPDATABLE_SUM:Ljava/lang/String;
    .restart local v6       #localACHashSet:Ljava/util/HashSet;
    .restart local v8       #powerServiceIntent:Landroid/content/Intent;
    .restart local v11       #tm:Landroid/telephony/TelephonyManager;
    .restart local v12       #updateintent:Landroid/content/Intent;
    :cond_a
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    if-nez v13, :cond_7

    .line 2295
    const-string v13, "gsm.sim.state"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2297
    .local v9, simState:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 2298
    const-string v13, "HeartyServiceApp"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "gsm.sim.state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string v13, "READY"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2300
    const/4 v13, 0x2

    sput v13, Lcom/zte/heartyservice/main/HeartyServiceApp;->mSIMStatus:I

    goto/16 :goto_2
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 1264
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkMemoryAndRecycle()V

    .line 1265
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 1267
    const-string v0, "HeartyServiceApp"

    const-string v1, "liuji ****** onLowMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    return-void
.end method

.method public onTerminate()V
    .locals 1

    .prologue
    .line 2528
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    .line 2529
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterAll()V

    .line 2532
    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .locals 10
    .parameter "iN"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 590
    new-instance v2, Ljava/lang/String;

    const-string v3, "Z2V0U2hhcmVkUHJlZmVyZW5jZXM="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    const-string v5, "cGluZGV4"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 592
    .local v1, indexSettings:Ljava/lang/Object;
    new-instance v2, Ljava/lang/String;

    const-string v3, "ZWRpdA=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2, v9}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 594
    .local v0, edit:Ljava/lang/Object;
    new-instance v2, Ljava/lang/String;

    const-string v3, "cHV0TG9uZw=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v7

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tbWl0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v2, v9}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public set()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 551
    new-instance v2, Ljava/lang/String;

    const-string v3, "Z2V0U2hhcmVkUHJlZmVyZW5jZXM="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-array v3, v6, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/String;

    const-string v5, "cGluZGV4"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    aput-object v4, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {p0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 553
    .local v1, indexSettings:Ljava/lang/Object;
    new-instance v2, Ljava/lang/String;

    const-string v3, "ZWRpdA=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2, v9}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 555
    .local v0, edit:Ljava/lang/Object;
    new-instance v2, Ljava/lang/String;

    const-string v3, "cHV0TG9uZw=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "i6"

    aput-object v4, v3, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    new-instance v2, Ljava/lang/String;

    const-string v3, "cHV0TG9uZw=="

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "i7"

    aput-object v4, v3, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v0, v2, v3}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    new-instance v2, Ljava/lang/String;

    const-string v3, "Y29tbWl0"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v2, v9}, Lcom/zte/heartyservice/common/utils/LoadMethodEx;->invokeTargetMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void
.end method

.method public setNotifierShowingStatus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2547
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 2548
    invoke-direct {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->startAutoStartAndPersistentForEver()V

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 2550
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    if-eqz v0, :cond_0

    .line 2551
    sget-object v0, Lcom/zte/heartyservice/main/HeartyServiceApp;->mNotifier:Lcom/zte/heartyservice/indicator/Notifier;

    invoke-virtual {v0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    goto :goto_0
.end method

.method public test()Ljava/lang/String;
    .locals 2

    .prologue
    .line 526
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, su:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    const-string v1, "1"

    .line 530
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method
