.class public Lcom/mediatek/mtklogger/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final ACTION_ADB_CMD:Ljava/lang/String; = "com.mediatek.mtklogger.ADB_CMD"

.field public static final ACTION_EXP_HAPPENED:Ljava/lang/String; = "com.mediatek.log2server.EXCEPTION_HAPPEND"

.field public static final ACTION_IPO_BOOT:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field public static final ACTION_IPO_SHUTDOWN:Ljava/lang/String; = "android.intent.action.ACTION_SHUTDOWN_IPO"

.field public static final ACTION_LOG_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

.field public static final ACTION_MDLOGGER_DUMP_BEGIN:Ljava/lang/String; = "com.mediatek.mdlogger.MEMORYDUMP_START"

.field public static final ACTION_MDLOGGER_DUMP_DONE:Ljava/lang/String; = "com.mediatek.mdlogger.MEMORYDUMP_DONE"

.field public static final ACTION_MDLOGGER_RESTART_DONE:Ljava/lang/String; = "com.mediatek.mdlogger.AUTOSTART_COMPLETE"

.field public static final ACTION_REMAINING_STORAGE_LOW:Ljava/lang/String; = "com.mediatek.mdlogger.REMAINING_STORAGE_LOW"

.field public static final ACTION_RUNNING_STAGE_CHANGED:Ljava/lang/String; = ""

.field public static final ACTION_START_SERVICE:Ljava/lang/String; = "com.mediatek.mtklogger.MTKLoggerService"

.field public static final ACTION_TAGLOG_TO_LOG2SERVER:Ljava/lang/String; = "com.mediatek.syslogger.taglog"

.field public static final ADB_COMMAND_SET_LOG_AUTO_START_PREFIX:Ljava/lang/String; = "set_auto_start_"

.field public static final ADB_COMMAND_START:Ljava/lang/String; = "start"

.field public static final ADB_COMMAND_STOP:Ljava/lang/String; = "stop"

.field public static final ADB_COMMAND_SWITCH_MODEM_LOG_MODE:Ljava/lang/String; = "switch_modem_log_mode"

.field public static final ADB_COMMAND_SWITCH_TAGLOG:Ljava/lang/String; = "switch_taglog"

.field public static final AEE_EXP_PATH:Ljava/lang/String; = "aee_exp"

#the value of this static final field might be set in the static constructor
.field public static final ANDROID_VERSION_NUMBER:F = 0.0f

.field public static final BROADCAST_KEY_MDLOG_PATH:Ljava/lang/String; = "ModemLogPath"

.field public static final BROADCAST_KEY_MOBILELOG_PATH:Ljava/lang/String; = "MobileLogPath"

.field public static final BROADCAST_KEY_NETLOG_PATH:Ljava/lang/String; = "NetLogPath"

.field public static final BROADCAST_KEY_TAGLOG_RESULT:Ljava/lang/String; = "TaglogResult"

.field public static final BROADCAST_VAL_LOGTOOL_STOPPED:Ljava/lang/String; = "LogToolStopped"

.field public static final BROADCAST_VAL_TAGLOG_CANCEL:Ljava/lang/String; = "Cancel"

.field public static final BROADCAST_VAL_TAGLOG_FAILED:Ljava/lang/String; = "Failed"

.field public static final BROADCAST_VAL_TAGLOG_SUCCESS:Ljava/lang/String; = "Successful"

.field public static final CHECK_CMD_DURATION:I = 0x2710

.field public static final CONFIG_FILE_NAME:Ljava/lang/String; = "log_settings"

.field public static final CUSTOMIZE_CONFIG_FILE:Ljava/lang/String; = "/system/etc/mtklog-config.prop"

.field public static final DEFAULT_ADB_CMD_TARGET:I = 0x0

.field public static final DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_LOG_PATH_TYPE:Ljava/lang/String; = "internal_sd"

.field public static final DEFAULT_LOG_SIZE:I = 0xc8

.field public static final DEFAULT_STORAGE_WATER_LEVEL:I = 0x1e

.field public static final DEFAULT_VALUE_NEED_RECOVER_RUNNING:Z = false

.field public static final DEFAULT_VALUE_SYSTME_TIME_CHANGE:I = 0x0

.field public static final DUAL_MODEM_LOG_PATH:Ljava/lang/String; = "dualmdlog"

.field public static final DURATION_CHECK_LOG_FOLDER:I = 0xea60

.field public static final DURATION_START_EACH_LOG:I = 0x12c

.field public static final DURATION_WAIT_LOG_INSTANCE_READY:I = 0x1f4

.field public static final EXTRA_ADB_CMD_NAME:Ljava/lang/String; = "cmd_name"

.field public static final EXTRA_ADB_CMD_TARGET:Ljava/lang/String; = "cmd_target"

.field public static final EXTRA_AFFECTED_LOG_TYPE:Ljava/lang/String; = "affected_log_type"

.field public static final EXTRA_FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field public static final EXTRA_KEY_EXP_FROM_REBOOT:Ljava/lang/String; = "from_reboot"

.field public static final EXTRA_KEY_EXP_NAME:Ljava/lang/String; = "db_filename"

.field public static final EXTRA_KEY_EXP_PATH:Ljava/lang/String; = "path"

.field public static final EXTRA_KEY_EXP_ZZ:Ljava/lang/String; = "zz_filename"

.field public static final EXTRA_KEY_FROM_MAIN_ACTIVITY:Ljava/lang/String; = "extra_key_from_main_activity"

.field public static final EXTRA_KEY_FROM_TAGLOG:Ljava/lang/String; = "extra_key_from_taglog"

.field public static final EXTRA_LOG_NEW_STATE:Ljava/lang/String; = "log_new_state"

.field public static final EXTRA_MDLOGGER_DUMP_PATH:Ljava/lang/String; = "LogPath"

.field public static final EXTRA_MEDIA_ACTION:Ljava/lang/String; = "media_action"

.field public static final EXTRA_MEDIA_AFFECTED_PATH:Ljava/lang/String; = "media_affected_path"

.field public static final EXTRA_NEW_USER_ID:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static final EXTRA_REMAINING_STORAGE:Ljava/lang/String; = "remaining_storage"

.field public static final EXTRA_RUNNING_STAGE_CHANGE_EVENT:Ljava/lang/String; = "stage_event"

.field public static final EXTRA_SERVICE_STARTUP_TYPE:Ljava/lang/String; = "startup_type"

.field public static final EXTRA_VALUE_FROM_REBOOT:Ljava/lang/String; = "FROM_REBOOT"

.field public static final FAIL_REASON_DETAIL_MAP:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_FILE:Ljava/lang/String; = "catcher_filter.bin"

.field public static final FLAG_MDLOGGER_POLLING:Ljava/lang/String; = "polling"

.field public static final FLAG_REBOOT_ISSUE_SYSTEM_CARSH:Ljava/lang/String; = "2:"

.field public static final KEY_BEGIN_RECORDING_TIME:Ljava/lang/String; = "begin_recording_time"

.field public static final KEY_BOOT_TIME:Ljava/lang/String; = "boot_time"

.field public static final KEY_CONFIG_FILE_LOG_PATH_TYPE:Ljava/lang/String; = "mtklog_path"

.field public static final KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CONFIG_TAGLOG_ENABLED:Ljava/lang/String; = "com.mediatek.log.taglog.enabled"

.field public static final KEY_LOG2SERVER_SWITCH:Ljava/lang/String; = "log2server_dialog_show"

.field public static final KEY_LOG_INIT_FLAG:Ljava/lang/String; = "debug.mtklog.init.flag"

.field public static final KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LOG_SIZE_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_LOG_SIZE_NETWORK:Ljava/lang/String; = "networklog_logsize"

.field public static final KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_MODEM_ASSERT_FILE_PATH:Ljava/lang/String; = "md_assert_file_path"

.field public static final KEY_MODEM_EXCEPTION_PATH:Ljava/lang/String; = "modem_exception_path"

.field public static final KEY_MODEM_MODE:Ljava/lang/String; = "log_mode"

.field public static final KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_REBOOT_EXCEPTION_DB:Ljava/lang/String; = "debug.mtk.aee.db"

.field public static final KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_START_AUTOMATIC_MOBILE:Ljava/lang/String; = "mobilelog_autostart"

.field public static final KEY_START_AUTOMATIC_MODEM:Ljava/lang/String; = "modemlog_autostart"

.field public static final KEY_START_AUTOMATIC_NETWORK:Ljava/lang/String; = "networklog_autostart"

.field public static final KEY_START_UI_REASON:Ljava/lang/String; = "reason_start"

.field public static final KEY_STATUS_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_STATUS_MOBILE:Ljava/lang/String; = "mobilelog_enable"

.field public static final KEY_STATUS_MODEM:Ljava/lang/String; = "modemlog_enable"

.field public static final KEY_STATUS_NETWORK:Ljava/lang/String; = "networklog_enable"

.field public static final KEY_SYSTEM_PROPERTY_LOG_PATH_TYPE:Ljava/lang/String; = null

.field public static final KEY_SYSTEM_PROPERTY_NETLOG_RUNNING_FLAG:Ljava/lang/String; = null

.field public static final KEY_SYSTEM_PROPERTY_NETLOG_SAVING_PATH:Ljava/lang/String; = null

.field public static final KEY_SYSTME_TIME_CHANGE_FLAG:Ljava/lang/String; = "system_time_reset"

.field public static final KEY_TAGGING_DB:Ljava/lang/String; = "tagging_db"

.field public static final KEY_TAGGING_DEST:Ljava/lang/String; = "tagging_dest"

.field public static final KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_TAGGING_MOBILE:Ljava/lang/String; = "tagging_mobile"

.field public static final KEY_TAGGING_MODEM:Ljava/lang/String; = "tagging_modem"

.field public static final KEY_TAGGING_NETWORK:Ljava/lang/String; = "tagging_network"

.field public static final KEY_TAG_LOG_COMPRESSING:Ljava/lang/String; = "tag_log_compressing"

.field public static final KEY_TAG_LOG_ONGOING:Ljava/lang/String; = "tag_log_ongoing"

.field public static final KEY_WAITING_SD_READY_REASON:Ljava/lang/String; = "waiting_sd_ready_reason"

.field public static final LOG_NAME_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_PATH_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOG_PATH_TYPE_EXTERNAL_SD:Ljava/lang/String; = "external_sd"

.field public static final LOG_PATH_TYPE_INTERNAL_SD:Ljava/lang/String; = "internal_sd"

.field public static final LOG_PATH_TYPE_PHONE:Ljava/lang/String; = "/data"

.field public static final LOG_PHONE_STORAGE:I = 0x7f07001c

.field public static final LOG_PHONE_STORAGE_CMD:Ljava/lang/String; = "Log2emmc"

.field public static final LOG_PHONE_STORAGE_KEY:Ljava/lang/String; = "1"

.field public static final LOG_RUNNING_STATUS_MD1:I = 0x1

.field public static final LOG_RUNNING_STATUS_MD1_MD2:I = 0x3

.field public static final LOG_RUNNING_STATUS_MD2:I = 0x2

.field public static final LOG_RUNNING_STATUS_STOPPED:I = 0x0

.field public static final LOG_RUNNING_STATUS_UNKNOWN:I = -0x1

.field public static final LOG_SD_CARD:I = 0x7f07001b

.field public static final LOG_SD_CARD_CMD:Ljava/lang/String; = "Log2sd"

.field public static final LOG_SD_CARD_KEY:Ljava/lang/String; = "2"

.field public static final LOG_SIZE_MODE1_SIZE:I = 0x3e8

.field public static final LOG_START_STOP_REASON_FROM_UI:Ljava/lang/String; = "from_ui"

.field public static final LOG_TREE_FILE:Ljava/lang/String; = "file_tree.txt"

.field public static final LOG_TYPE_MOBILE:I = 0x1

.field public static final LOG_TYPE_MODEM:I = 0x2

.field public static final LOG_TYPE_NETWORK:I = 0x4

.field public static final LOG_TYPE_SET:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MANUAL_SAVE_LOG:Ljava/lang/String; = "SaveLogManually"

.field public static final MOBILE_LOG_PATH:Ljava/lang/String; = "mobilelog"

.field public static final MODEM_LOG_PATH:Ljava/lang/String; = "mdlog"

.field public static final MODEM_MODE_IDLE:Ljava/lang/String; = "0"

.field public static final MODEM_MODE_SD:Ljava/lang/String; = "2"

.field public static final MODEM_MODE_USB:Ljava/lang/String; = "1"

.field public static final MSG_CMD_TIMEOUT_BASE:I = 0x3e8

.field public static final MSG_LOG_STATE_CHANGED:I = 0x1

.field public static final MSG_RUNNING_STAGE_CHANGE:I = 0x3

.field public static final MSG_SD_TIMEOUT:I = 0x2

.field public static final MTKLOG_PATH:Ljava/lang/String; = "/mtklog/"

.field public static final NETWORK_LOG_PATH:Ljava/lang/String; = "netlog"

.field public static final NETWORK_STATE:Ljava/lang/String; = "state"

.field public static final NETWORK_STATE_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NETWORK_STATE_NONE:Ljava/lang/String; = "none"

.field public static final NETWORK_STATE_WIFI:Ljava/lang/String; = "wifi"

.field public static final PROP_MONKEY:Ljava/lang/String; = "ro.monkey"

.field public static final REASON_CMD_TIMEOUT:Ljava/lang/String; = "9"

.field public static final REASON_COMMON:Ljava/lang/String; = "12"

.field public static final REASON_DAEMON_DIE:Ljava/lang/String; = "5"

.field public static final REASON_DAEMON_UNKNOWN:Ljava/lang/String; = "1"

.field public static final REASON_LOG_FOLDER_CREATE_FAIL:Ljava/lang/String; = "10"

.field public static final REASON_LOG_FOLDER_DELETED:Ljava/lang/String; = "8"

.field public static final REASON_SEND_CMD_FAIL:Ljava/lang/String; = "4"

.field public static final REASON_STORAGE_FULL:Ljava/lang/String; = "3"

.field public static final REASON_STORAGE_NOT_READY:Ljava/lang/String; = "2"

.field public static final REASON_STORAGE_UNAVAILABLE:Ljava/lang/String; = "7"

.field public static final REASON_UNSUPPORTED_LOG:Ljava/lang/String; = "6"

.field public static final REASON_WAIT_SD_TIMEOUT:Ljava/lang/String; = "11"

.field public static final RESERVED_STORAGE_SIZE:I = 0xa

.field public static final RUNNING_STAGE_IDLE:I = 0x0

.field public static final RUNNING_STAGE_POLLING_LOG:I = 0x3

.field public static final RUNNING_STAGE_STARTING_LOG:I = 0x1

.field public static final RUNNING_STAGE_STOPPING_LOG:I = 0x2

.field public static final SDCARD_SIZE:Ljava/lang/String; = "sdcardSize"

.field public static final SD_LACK_OF_SPACE:I = 0x192

.field public static final SD_NORMAL:I = 0x191

.field public static final SD_NOT_EXIST:I = 0x193

.field public static final SD_NOT_WRITABLE:I = 0x194

.field public static final SD_TIMEOUT:I = 0x9c40

.field public static final SERVICE_SHUTDOWN_TYPE_BAD_STORAGE:Ljava/lang/String; = "storage_full_or_lost"

.field public static final SERVICE_SHUTDOWN_TYPE_IPO:Ljava/lang/String; = "ipo_shutdown"

.field public static final SERVICE_SHUTDOWN_TYPE_SD_TIMEOUT:Ljava/lang/String; = "sd_timeout"

.field public static final SERVICE_STARTUP_TYPE_ADB:Ljava/lang/String; = "adb"

.field public static final SERVICE_STARTUP_TYPE_BOOT:Ljava/lang/String; = "boot"

.field public static final SERVICE_STARTUP_TYPE_EXCEPTION_HAPPEN:Ljava/lang/String; = "exception_happen"

.field public static final SERVICE_STARTUP_TYPE_IPO:Ljava/lang/String; = "ipo"

.field public static final SERVICE_STARTUP_TYPE_STORAGE_CHANGE:Ljava/lang/String; = "storage_changed"

.field public static final SERVICE_STARTUP_TYPE_STORAGE_RECOVERY:Ljava/lang/String; = "storage_recovery"

.field public static final SERVICE_STARTUP_TYPE_UPDATE:Ljava/lang/String; = "update"

.field public static final SERVICE_STARTUP_TYPE_USER:Ljava/lang/String; = "user"

.field public static final SETTINGS_HAS_STARTED_DEBUG_MODE:Ljava/lang/String; = "hasStartedDebugMode"

.field public static final SETTINGS_IS_SWITCH_CHECKED:Ljava/lang/String; = "isSwitchChecked"

.field public static final STAGE_EVENT_POLLING_DONE:I = 0x4

.field public static final STAGE_EVENT_START_LOG:I = 0x1

.field public static final STAGE_EVENT_START_POLLING:I = 0x3

.field public static final STAGE_EVENT_STOP_LOG:I = 0x2

.field public static final START_CMD_PREFIX:Ljava/lang/String; = "runshell_command_start_"

.field public static final START_UI_REASON_LOW_STORAGE:Ljava/lang/String; = "low_storage"

.field public static final STOP_CMD_PREFIX:Ljava/lang/String; = "runshell_command_stop_"

.field public static final STORAGE_STATE_FULL:I = -0x2

.field public static final STORAGE_STATE_NOT_READY:I = -0x1

.field public static final STORAGE_STATE_OK:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MTKLogger"

.field public static final TAGLOG_CONFIG_VALUE_DISABLE:I = 0x0

.field public static final TAGLOG_CONFIG_VALUE_ENABLE:I = 0x1

.field public static final TAGLOG_CONFIG_VALUE_INVALID:I = -0x1

.field public static final TAG_ASTL1:Ljava/lang/String; = "MDLog_ASTL1"

.field public static final TAG_DAK:Ljava/lang/String; = "MDLog_DAK"

.field public static final TAG_DMDSPMLT:Ljava/lang/String; = "MDLog_DMDSPMLT"

.field public static final TAG_L1:Ljava/lang/String; = "MDLog_L1"

.field public static final TAG_LOG_ENABLE:Ljava/lang/String; = "tagLogEnable"

.field public static final TAG_LOG_PATH:Ljava/lang/String; = "taglog"

.field public static final TAG_MD2GMLT:Ljava/lang/String; = "MDLog_MD2GMLT"

.field public static final TAG_PS:Ljava/lang/String; = "MDLog_PS"

.field public static final TIMEOUT_CMD:I = 0x4e20

#the value of this static final field might be set in the static constructor
.field public static final USER_ID:I = 0x0

.field public static final USER_ID_OWNER:I = 0x0

.field public static final USER_ID_UNDEFINED:I = -0x1

.field public static final VALUE_BEGIN_RECORDING_TIME_DEFAULT:J = 0x0L

.field public static final VALUE_LOG_RUNNING_STATUS_IN_SYSPROP_OFF:Ljava/lang/String; = "0"

.field public static final VALUE_LOG_RUNNING_STATUS_IN_SYSPROP_ON:Ljava/lang/String; = "1"

.field public static final VALUE_START_AUTOMATIC_DEFAULT:Z = false

.field public static final VALUE_START_AUTOMATIC_OFF:Z = false

.field public static final VALUE_START_AUTOMATIC_ON:Z = true

.field public static final VALUE_STATUS_DEFAULT:I = 0x0

.field public static final VALUE_STATUS_RUNNING:I = 0x1

.field public static final VALUE_STATUS_STOPPED:I = 0x0

.field public static final ZZ_INTERNAL_LENGTH:I = 0xa

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 37
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 38
    .local v3, version:Ljava/lang/String;
    const-string v5, "MTKLogger/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Andriod version string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/high16 v4, 0x4080

    .line 40
    .local v4, versionNum:F
    const-string v5, "."

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 41
    .local v1, firstPointIndex:I
    if-lez v1, :cond_0

    .line 42
    const-string v5, "."

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 43
    .local v2, secondPointIndex:I
    if-lez v2, :cond_0

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v5, "MTKLogger/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Formated version number = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v2           #secondPointIndex:I
    :cond_0
    :try_start_0
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 58
    :goto_0
    sput v4, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    .line 59
    const-string v5, "MTKLogger/Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Android version number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget v5, Lcom/mediatek/mtklogger/utils/Utils;->ANDROID_VERSION_NUMBER:F

    float-to-double v5, v5

    const-wide v7, 0x4010cbc6a7ef9db2L

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_2

    .line 81
    const-string v5, "persist.mtklog.log2sd.path"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_LOG_PATH_TYPE:Ljava/lang/String;

    .line 82
    const-string v5, "debug.netlog.writtingpath"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_SAVING_PATH:Ljava/lang/String;

    .line 83
    const-string v5, "debug.mtklog.netlog.Running"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_RUNNING_FLAG:Ljava/lang/String;

    .line 285
    :goto_1
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    .line 287
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    .line 294
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    const v6, 0x7f07000c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 295
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    const v6, 0x7f07000d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 296
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_NAME_MAP:Landroid/util/SparseArray;

    const v6, 0x7f07000b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    .line 307
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    const-string v6, "networklog_enable"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 308
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    const-string v6, "mobilelog_enable"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 309
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    const-string v6, "modemlog_enable"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    .line 323
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    const-string v6, "mobilelog_autostart"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    const-string v6, "modemlog_autostart"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 325
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_START_AUTOMATIC_MAP:Landroid/util/SparseArray;

    const-string v6, "networklog_autostart"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 330
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    .line 332
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "mobilelog_logsize"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 333
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "modemlog_logsize"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 334
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "networklog_logsize"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 341
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    .line 343
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_RUNNING_FLAG:Ljava/lang/String;

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    const-string v6, "debug.MB.running"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_RUNNING_STATUS_IN_SYSPROP_MAP:Landroid/util/SparseArray;

    const-string v6, "debug.mdlogger.Running"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    .line 355
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    const v6, 0x7f070001

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    const v6, 0x7f070002

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_LOG_TITLE_RES_IN_STSTUSBAR_MAP:Landroid/util/SparseArray;

    const v6, 0x7f070003

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    .line 370
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    const-string v6, "need_recovery_mobile"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    const-string v6, "need_recovery_modem"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_NEED_RECOVER_RUNNING_MAP:Landroid/util/SparseArray;

    const-string v6, "need_recovery_network"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    .line 401
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    const-string v6, "netlog"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 402
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    const-string v6, "mobilelog"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 403
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->LOG_PATH_MAP:Landroid/util/SparseArray;

    const-string v6, "mdlog"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    .line 445
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "1"

    const v7, 0x7f070063

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "2"

    const v7, 0x7f070064

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "3"

    const v7, 0x7f070065

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "4"

    const v7, 0x7f070066

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "5"

    const v7, 0x7f070067

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "6"

    const v7, 0x7f070068

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "7"

    const v7, 0x7f070069

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "8"

    const v7, 0x7f07006a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "9"

    const v7, 0x7f07006b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "10"

    const v7, 0x7f07006c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "11"

    const v7, 0x7f07006d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->FAIL_REASON_DETAIL_MAP:Ljava/util/Map;

    const-string v6, "12"

    const v7, 0x7f07006e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    .line 535
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.mobile.enabled"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 536
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.modem.enabled"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 537
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.net.enabled"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 539
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    .line 541
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.mobile.maxsize"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 542
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.modem.maxsize"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 543
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const-string v6, "com.mediatek.log.net.maxsize"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 545
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    .line 547
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 548
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 549
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 551
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    .line 553
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const/16 v6, 0x12c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 554
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const/16 v6, 0x258

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 555
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_SIZE_MAP:Landroid/util/SparseArray;

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 627
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    .line 629
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    const-string v6, "tagging_mobile"

    invoke-virtual {v5, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 630
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    const-string v6, "tagging_modem"

    invoke-virtual {v5, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    sget-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_TAGGING_LOG_MAP:Landroid/util/SparseArray;

    const-string v6, "tagging_network"

    invoke-virtual {v5, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 675
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    sput v5, Lcom/mediatek/mtklogger/utils/Utils;->USER_ID:I

    .line 730
    const/4 v5, 0x0

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v5, "MTKLogger/Utils"

    const-string v6, "Fail to parse version number directly, just use the first character"

    invoke-static {v5, v6}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v5, "4."

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    const/high16 v4, 0x4080

    goto/16 :goto_0

    .line 55
    :cond_1
    const v4, 0x40133333

    goto/16 :goto_0

    .line 88
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, "persist.radio.log2sd.path"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_LOG_PATH_TYPE:Ljava/lang/String;

    .line 89
    const-string v5, "persist.radio.writtingpath"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_SAVING_PATH:Ljava/lang/String;

    .line 90
    const-string v5, "persist.radio.netlog.Running"

    sput-object v5, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_RUNNING_FLAG:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLogStarted(Landroid/content/SharedPreferences;)Z
    .locals 6
    .parameter "sharedPreferences"

    .prologue
    .line 867
    const/4 v1, 0x0

    .line 868
    .local v1, isStart:Z
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->LOG_TYPE_SET:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 869
    .local v2, logType:Ljava/lang/Integer;
    const/4 v4, 0x1

    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_STATUS_MAP:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {p0, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 871
    const/4 v1, 0x1

    .line 875
    .end local v2           #logType:Ljava/lang/Integer;
    :cond_1
    return v1
.end method

.method public static deleteFolder(Ljava/io/File;)V
    .locals 5
    .parameter "file"

    .prologue
    .line 851
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 853
    .local v0, files:[Ljava/io/File;
    if-nez v0, :cond_2

    .line 855
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 856
    const-string v2, "MTKLogger/Utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete file :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 864
    .end local v0           #files:[Ljava/io/File;
    :cond_1
    return-void

    .line 858
    .restart local v0       #files:[Ljava/io/File;
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 859
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/mediatek/mtklogger/utils/Utils;->deleteFolder(Ljava/io/File;)V

    .line 858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getAvailableStorageSize(Ljava/lang/String;)I
    .locals 13
    .parameter "storagePath"

    .prologue
    .line 885
    const/4 v7, 0x1

    .line 886
    .local v7, retryNum:I
    :goto_0
    const/4 v9, 0x3

    if-gt v7, v9, :cond_0

    .line 888
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-direct {v8, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 889
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v3, v9

    .line 890
    .local v3, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 891
    .local v0, availableBlocks:J
    mul-long v9, v0, v3

    const-wide/32 v11, 0x100000

    div-long/2addr v9, v11

    long-to-int v2, v9

    .line 892
    .local v2, availableSize:I
    const-string v9, "MTKLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "-->getAvailableStorageSize(), path="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", size="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MB"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    .end local v0           #availableBlocks:J
    .end local v2           #availableSize:I
    .end local v3           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    :goto_1
    return v2

    .line 895
    :catch_0
    move-exception v5

    .line 896
    .local v5, e:Ljava/lang/Exception;
    const-string v9, "MTKLogger"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Fail to get storage info from ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] by StatFs, try again(index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 899
    const-wide/16 v9, 0xc8

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 904
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 900
    :catch_1
    move-exception v6

    .line 901
    .local v6, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 906
    .end local v5           #e:Ljava/lang/Exception;
    .end local v6           #e1:Ljava/lang/InterruptedException;
    :cond_0
    const-string v9, "MTKLogger"

    const-string v10, "-->getAvailableStorageSize(), fail to get it by StatFs, unknown exception happen."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 732
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v0

    .line 733
    .local v0, logPathType:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentVolumeState(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 770
    sget-object v1, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 771
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sput-object v1, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 773
    :cond_0
    invoke-static {p0}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 774
    .local v0, currentLogPath:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/mediatek/mtklogger/utils/Utils;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileSize(Ljava/lang/String;)J
    .locals 13
    .parameter "filePath"

    .prologue
    const-wide/16 v8, 0x0

    .line 820
    const-wide/16 v6, 0x0

    .line 821
    .local v6, size:J
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v2, fileRoot:Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-wide v8

    .line 825
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_3

    .line 826
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    :cond_2
    move-wide v8, v6

    .line 841
    goto :goto_0

    .line 828
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 830
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_4

    array-length v10, v3

    if-nez v10, :cond_5

    .line 831
    :cond_4
    const-string v10, "MTKLogger"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loop folder ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] get a null/empty list"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 834
    :cond_5
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 835
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_6

    .line 834
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 838
    :cond_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/mediatek/mtklogger/utils/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v8

    add-long/2addr v6, v8

    goto :goto_2
.end method

.method public static getLogPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "logPathType"

    .prologue
    .line 744
    sget-object v1, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 745
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    sput-object v1, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 748
    :cond_0
    const/4 v0, 0x0

    .line 749
    .local v0, logPathStr:Ljava/lang/String;
    const-string v1, "internal_sd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 750
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getInternalStoragePathForLogger()Ljava/lang/String;

    move-result-object v0

    .line 759
    :goto_0
    if-nez v0, :cond_1

    .line 760
    const-string v1, "MTKLogger/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to get detail log path string for type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return empty to avoid NullPointerException."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v0, ""

    .line 766
    :cond_1
    return-object v0

    .line 751
    :cond_2
    const-string v1, "external_sd"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 752
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_3
    const-string v1, "/data"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 754
    const-string v0, "/data"

    goto :goto_0

    .line 756
    :cond_4
    const-string v1, "MTKLogger/Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported log path type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLogPathType()Ljava/lang/String;
    .locals 9

    .prologue
    .line 683
    sget-object v6, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_LOG_PATH_TYPE:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 684
    .local v5, logPathType:Ljava/lang/String;
    const-string v6, "MTKLogger/Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->getLogPathType(), key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_LOG_PATH_TYPE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 687
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 688
    .local v2, customizeProp:Ljava/util/Properties;
    const/4 v0, 0x0

    .line 690
    .local v0, customizeInputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v6, "/system/etc/mtklog-config.prop"

    invoke-direct {v1, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 691
    .end local v0           #customizeInputStream:Ljava/io/FileInputStream;
    .local v1, customizeInputStream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 692
    const-string v6, "mtklog_path"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v5

    .line 697
    if-eqz v1, :cond_0

    .line 699
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 706
    .end local v1           #customizeInputStream:Ljava/io/FileInputStream;
    .end local v2           #customizeProp:Ljava/util/Properties;
    :cond_0
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 707
    const-string v5, "internal_sd"

    .line 710
    :cond_1
    return-object v5

    .line 700
    .restart local v1       #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v2       #customizeProp:Ljava/util/Properties;
    :catch_0
    move-exception v4

    .line 701
    .local v4, e2:Ljava/io/IOException;
    const-string v6, "MTKLogger/Utils"

    const-string v7, "Fail to close opened customization file."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 693
    .end local v1           #customizeInputStream:Ljava/io/FileInputStream;
    .end local v4           #e2:Ljava/io/IOException;
    .restart local v0       #customizeInputStream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 694
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v6, "MTKLogger/Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Try to initial default log path, but read customize config file error!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 697
    if-eqz v0, :cond_0

    .line 699
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 700
    :catch_2
    move-exception v4

    .line 701
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v6, "MTKLogger/Utils"

    const-string v7, "Fail to close opened customization file."

    invoke-static {v6, v7}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 697
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #e2:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v0, :cond_2

    .line 699
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 702
    :cond_2
    :goto_3
    throw v6

    .line 700
    :catch_3
    move-exception v4

    .line 701
    .restart local v4       #e2:Ljava/io/IOException;
    const-string v7, "MTKLogger/Utils"

    const-string v8, "Fail to close opened customization file."

    invoke-static {v7, v8}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 697
    .end local v0           #customizeInputStream:Ljava/io/FileInputStream;
    .end local v4           #e2:Ljava/io/IOException;
    .restart local v1       #customizeInputStream:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v0       #customizeInputStream:Ljava/io/FileInputStream;
    goto :goto_2

    .line 693
    .end local v0           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v1       #customizeInputStream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #customizeInputStream:Ljava/io/FileInputStream;
    .restart local v0       #customizeInputStream:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getLogPathTypeLabelRes()I
    .locals 3

    .prologue
    .line 718
    const v1, 0x7f07001a

    .line 719
    .local v1, labelRes:I
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, currentLogPathType:Ljava/lang/String;
    const-string v2, "external_sd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    const v1, 0x7f07001b

    .line 727
    :cond_0
    :goto_0
    return v1

    .line 722
    :cond_1
    const-string v2, "internal_sd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 723
    const v1, 0x7f07001c

    goto :goto_0

    .line 724
    :cond_2
    const-string v2, "/data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    const v1, 0x7f07001d

    goto :goto_0
.end method

.method public static getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "pathStr"

    .prologue
    .line 779
    const-string v5, "Unknown"

    .line 781
    .local v5, status:Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 782
    const-string v8, "MTKLogger/Utils"

    const-string v9, "Empty pathString when cal getVolumnState"

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 812
    .end local v5           #status:Ljava/lang/String;
    .local v6, status:Ljava/lang/String;
    :goto_0
    return-object v6

    .line 786
    .end local v6           #status:Ljava/lang/String;
    .restart local v5       #status:Ljava/lang/String;
    :cond_0
    :try_start_0
    const-class v7, Landroid/os/storage/StorageManager;

    .line 787
    .local v7, storageManagerFromJB:Ljava/lang/Class;
    const-string v8, "getVolumeState"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 788
    .local v4, getVolumeStateMethod:Ljava/lang/reflect/Method;
    if-eqz v4, :cond_2

    .line 790
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v8, :cond_1

    .line 791
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageManager;

    sput-object v8, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 793
    :cond_1
    sget-object v8, Lcom/mediatek/mtklogger/utils/Utils;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v4, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 794
    .end local v5           #status:Ljava/lang/String;
    .restart local v6       #status:Ljava/lang/String;
    goto :goto_0

    .line 796
    .end local v4           #getVolumeStateMethod:Ljava/lang/reflect/Method;
    .end local v6           #status:Ljava/lang/String;
    .end local v7           #storageManagerFromJB:Ljava/lang/Class;
    .restart local v5       #status:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 797
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "MTKLogger/Utils"

    const-string v9, "Fail to access StorageManager.getVolumnState(). No such method."

    invoke-static {v8, v9}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-class v2, Landroid/os/Environment;

    .line 802
    .local v2, environmentClsssFromGB:Ljava/lang/Class;
    const-string v8, "getStorageState"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v2, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 803
    .local v3, getStorageStateMethod:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_3

    .line 805
    const/4 v8, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v3, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v5

    .line 806
    .end local v5           #status:Ljava/lang/String;
    .restart local v6       #status:Ljava/lang/String;
    goto :goto_0

    .line 808
    .end local v2           #environmentClsssFromGB:Ljava/lang/Class;
    .end local v3           #getStorageStateMethod:Ljava/lang/reflect/Method;
    .end local v6           #status:Ljava/lang/String;
    .restart local v5       #status:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 809
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v8, "MTKLogger/Utils"

    const-string v9, "Fail to access Environment.getStorageState(). No such method."

    invoke-static {v8, v9, v1}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    move-object v6, v5

    .line 812
    .end local v5           #status:Ljava/lang/String;
    .restart local v6       #status:Ljava/lang/String;
    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 988
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 997
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 1000
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 991
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void
.end method

.method public static logv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 985
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 994
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void
.end method
