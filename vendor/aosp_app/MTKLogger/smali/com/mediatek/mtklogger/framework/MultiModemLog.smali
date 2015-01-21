.class public Lcom/mediatek/mtklogger/framework/MultiModemLog;
.super Lcom/mediatek/mtklogger/framework/LogInstance;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;,
        Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogConnection;,
        Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogHandler;,
        Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;
    }
.end annotation


# static fields
.field private static final ADB_COMMAND_AUTO_TEST_START_MDLOGGER:Ljava/lang/String; = "auto_test_start_mdlogger"

.field private static final ADB_COMMAND_EXIT:Ljava/lang/String; = "exit"

.field public static final ADB_COMMAND_FORCE_MODEM_ASSERT:Ljava/lang/String; = "force_modem_assert"

.field private static final ADB_COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final ADB_COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final COMMAND_ISPAUSED:Ljava/lang/String; = "ispaused"

.field private static final COMMAND_PAUSE:Ljava/lang/String; = "pause"

.field private static final COMMAND_PAUSE_WITH_CONFIG:Ljava/lang/String; = "deep_pause"

.field private static final COMMAND_POLLING:Ljava/lang/String; = "polling"

.field private static final COMMAND_RESET:Ljava/lang/String; = "resetmd"

.field private static final COMMAND_RESUME:Ljava/lang/String; = "resume"

.field private static final COMMAND_SETAUTO:Ljava/lang/String; = "setauto,"

.field private static final COMMAND_START:Ljava/lang/String; = "start,"

.field private static final COMMAND_START_WITH_CONFIG:Ljava/lang/String; = "deep_start,"

.field private static final COMMAND_STOP:Ljava/lang/String; = "stop"

.field public static final LOG_FOLDER_NAME_MD1:Ljava/lang/String; = "mdlog"

.field public static final LOG_FOLDER_NAME_MD2:Ljava/lang/String; = "dualmdlog"

.field private static final MSG_BEGIN_DUMP:I = 0x33

.field private static final MSG_BEGIN_RESET:I = 0x34

.field private static final MSG_DISMISS_RESET_DIALOG:I = 0x36

.field private static final MSG_MEMORY_DUMP_FINISH:I = 0x47

.field private static final MSG_MEMORY_DUMP_START:I = 0x46

.field private static final MSG_NO_LOGGING_FILE:I = 0x48

.field private static final MSG_QUERY_PAUSE_STATUS:I = 0x4c

.field private static final MSG_SDCARD_FULL:I = 0x4b

.field private static final MSG_SEND_FILTER_FAIL:I = 0x49

.field private static final MSG_SHOW_RESET_DIALOG:I = 0x35

.field private static final MSG_WRITE_FILE_FAIL:I = 0x4a

.field private static final RESPONSE_COMMAND_RESULT_FAIL:Ljava/lang/String; = "0"

.field private static final RESPONSE_COMMAND_RESULT_SUCCESS:Ljava/lang/String; = "1"

.field private static final RESPONSE_FAIL_SEND_FILTER:Ljava/lang/String; = "FAIL_SENDFILTER"

.field private static final RESPONSE_FAIL_WRITE_FILE:Ljava/lang/String; = "FAIL_WRITEFILE"

.field private static final RESPONSE_FINISH_MEMORY_DUMP:Ljava/lang/String; = "MEMORYDUMP_DONE"

.field private static final RESPONSE_LOGGING_FILE_NOTEXIST:Ljava/lang/String; = "LOGFILE_NOTEXIST"

.field private static final RESPONSE_SDCARD_FULL:Ljava/lang/String; = "SDCARD_FULL"

.field private static final RESPONSE_START_MEMORY_DUMP:Ljava/lang/String; = "MEMORYDUMP_START"

.field public static final SOCKET_NAME_MD1:Ljava/lang/String; = "com.mediatek.mdlogger.socket"

.field public static final SOCKET_NAME_MD2:Ljava/lang/String; = "com.mediatek.dualmdlogger.socket"

.field private static final TAG:Ljava/lang/String; = "MTKLogger/MultiModemLog"


# instance fields
.field private alertRingUri:Landroid/net/Uri;

.field private assertRingtone:Landroid/media/Ringtone;

.field private bConnected:Z

.field private isModemResetDialogShowing:Z

.field private mCmdResHandler:Landroid/os/Handler;

.field private mCurrentStage:I

.field private mCurrentStatus:I

.field private mDefaultSharedPreferences:Landroid/content/SharedPreferences;

.field private mMessageHandler:Landroid/os/Handler;

.field private mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

.field private volatile mMonitorThreadRunning:Z

.field private volatile mMonitorThreadStop:Z

.field private mResetModemDialog:Landroid/app/ProgressDialog;

.field private mResetTimeout:I

.field private mTimer:Ljava/util/Timer;

.field modemLogLock:Ljava/lang/Object;

.field waitNextClearLogCheck:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance;-><init>(Landroid/content/Context;)V

    .line 163
    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    .line 165
    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->alertRingUri:Landroid/net/Uri;

    .line 169
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadRunning:Z

    .line 171
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z

    .line 173
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z

    .line 179
    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;

    .line 181
    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    .line 183
    iput v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I

    .line 189
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    .line 194
    iput-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z

    .line 198
    iput v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    .line 205
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->modemLogLock:Ljava/lang/Object;

    .line 689
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->waitNextClearLogCheck:Ljava/lang/Object;

    .line 815
    new-instance v2, Lcom/mediatek/mtklogger/framework/MultiModemLog$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/mediatek/mtklogger/framework/MultiModemLog$4;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMessageHandler:Landroid/os/Handler;

    .line 208
    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    .line 209
    .local v1, modemLogThread:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemLogThread;->start()V

    .line 210
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->modemLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->modemLogLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    iput-object p2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;

    .line 218
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    .line 219
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "MTKLogger/MultiModemLog"

    const-string v4, "Wait modem log sub thread initialization, but was interrupted"

    invoke-static {v2, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/mtklogger/framework/MultiModemLog;Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;)Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/mtklogger/framework/MultiModemLog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->dealWithADBCommand(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->showResetModemDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I

    return v0
.end method

.method static synthetic access$1502(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadRunning:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/media/Ringtone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->dismissResetModemDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMessageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    return p1
.end method

.method static synthetic access$376(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$380(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    xor-int/2addr v0, p1

    iput v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->showMemoryDumpDoneDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/mtklogger/framework/MultiModemLog;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->getCurrentMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/mtklogger/framework/MultiModemLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->runMonitoringLogSizeThread()V

    return-void
.end method

.method private dealWithADBCommand(Ljava/lang/String;)V
    .locals 5
    .parameter "cmd"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 628
    const-string v1, "exit"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 629
    iget-boolean v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->bConnected:Z

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    const-string v2, "stop"

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "modemlog_enable"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 633
    const-string v1, ""

    invoke-direct {p0, v3, v1}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->notifyServiceStatus(ILjava/lang/String;)V

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    const-string v1, "pause"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 637
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 638
    :cond_2
    const-string v1, "resume"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 639
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 640
    :cond_3
    const-string v1, "force_modem_assert"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 641
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 642
    :cond_4
    const-string v1, "auto_test_start_mdlogger"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 643
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

    invoke-virtual {v1, v4}, Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 646
    :cond_5
    const-string v1, "switch_modem_log_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 647
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, tmpArray:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 649
    aget-object v1, v0, v4

    invoke-direct {p0, v1}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->setCurrentMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->getAutoStartValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 650
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mModemManager:Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setauto,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->sendCmd(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;->access$700(Lcom/mediatek/mtklogger/framework/MultiModemLog$ModemManager;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 653
    :cond_6
    const-string v1, "MTKLogger/MultiModemLog"

    const-string v2, "Invalid configuration from adb command"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private dismissResetModemDialog()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 852
    iget v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    add-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    .line 853
    iget v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_2

    .line 854
    const-string v2, "MTKLogger/MultiModemLog"

    const-string v3, "Reset modem timeout!"

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iput v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    .line 856
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 857
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 858
    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    .line 860
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 862
    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    .line 880
    :cond_1
    :goto_0
    return-void

    .line 866
    :cond_2
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "modemlog_enable"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 868
    .local v0, isResetDone:Z
    :goto_1
    const-string v2, "MTKLogger/MultiModemLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismissResetModemDialog()-> isResetDone ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    if-eqz v0, :cond_1

    .line 870
    iput v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetTimeout:I

    .line 871
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    if-eqz v1, :cond_3

    .line 872
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 873
    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    .line 875
    :cond_3
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 877
    iput-object v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .end local v0           #isResetDone:Z
    :cond_4
    move v0, v1

    .line 866
    goto :goto_1
.end method

.method private getAutoStartValue()Z
    .locals 4

    .prologue
    .line 253
    sget-object v1, Lcom/mediatek/mtklogger/utils/Utils;->DEFAULT_CONFIG_LOG_AUTO_START_MAP:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 254
    .local v0, defaultValue:Z
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "modemlog_autostart"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 257
    :cond_0
    const-string v1, "MTKLogger/MultiModemLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getAutoStartValue(), value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return v0
.end method

.method private getCurrentMode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    const-string v0, "2"

    .line 263
    .local v0, mode:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "log_mode"

    const-string v3, "2"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    :cond_0
    return-object v0
.end method

.method private notifyServiceStatus(ILjava/lang/String;)V
    .locals 7
    .parameter "status"
    .parameter "reason"

    .prologue
    const v6, 0x7f070003

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 665
    const-string v0, "MTKLogger/MultiModemLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->notifyServiceStatus(), status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  reason=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    if-ne v3, p1, :cond_1

    .line 668
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modemlog_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    :cond_0
    invoke-virtual {p0, v5, v6, v3}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->updateStatusBar(IIZ)V

    .line 684
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCmdResHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v5, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 686
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "modemlog_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 678
    iput v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    .line 680
    :cond_2
    invoke-virtual {p0, v5, v6, v4}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->updateStatusBar(IIZ)V

    goto :goto_0
.end method

.method private runMonitoringLogSizeThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "-->runMonitoringLogSizeThread()"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadRunning:Z

    if-eqz v0, :cond_0

    .line 694
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z

    .line 695
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Already running, just return."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    :goto_0
    return-void

    .line 699
    :cond_0
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Initialize running flag for clear log checking thread."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iput-boolean v2, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadStop:Z

    .line 701
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMonitorThreadRunning:Z

    .line 703
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog$1;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private setCurrentMode(Ljava/lang/String;)Z
    .locals 3
    .parameter "newMode"

    .prologue
    .line 270
    const-string v0, "MTKLogger/MultiModemLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->setCurrentMode(), newMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 275
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Persist new modem log mode"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mDefaultSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "log_mode"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    .line 279
    :cond_1
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "mDefaultSharedPreferences is null"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 282
    :cond_2
    const-string v0, "MTKLogger/MultiModemLog"

    const-string v1, "Unsupported log mode"

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showMemoryDumpDoneDialog(ILjava/lang/String;)V
    .locals 6
    .parameter "instanceIndex"
    .parameter "logFolderPath"

    .prologue
    .line 758
    const-string v3, "MTKLogger/MultiModemLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->showMemoryDumpDone(), logFolderPath="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isModemResetDialogShowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z

    if-eqz v3, :cond_0

    .line 761
    const-string v3, "MTKLogger/MultiModemLog"

    const-string v4, "Modem reset dialog is already showing, just return"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->alertRingUri:Landroid/net/Uri;

    if-nez v3, :cond_1

    .line 766
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->alertRingUri:Landroid/net/Uri;

    .line 768
    :cond_1
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->alertRingUri:Landroid/net/Uri;

    if-eqz v3, :cond_3

    .line 769
    const-string v3, "MTKLogger/MultiModemLog"

    const-string v4, "Play the ringtone"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    if-nez v3, :cond_2

    .line 771
    sget-object v3, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->alertRingUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    .line 773
    :cond_2
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    if-eqz v3, :cond_3

    .line 774
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->assertRingtone:Landroid/media/Ringtone;

    invoke-virtual {v3}, Landroid/media/Ringtone;->play()V

    .line 777
    :cond_3
    const-string v3, "MTKLogger/MultiModemLog"

    const-string v4, "Show memory dump done dialog."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    const v5, 0x7f070080

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 779
    .local v2, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    const v5, 0x7f070081

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;

    invoke-direct {v5, p0, p1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$2;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 795
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 796
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 797
    new-instance v3, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;

    invoke-direct {v3, p0, p1}, Lcom/mediatek/mtklogger/framework/MultiModemLog$3;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;I)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 810
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->isModemResetDialogShowing:Z

    .line 811
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method private showResetModemDialog()V
    .locals 7

    .prologue
    const-wide/16 v2, 0x3e8

    .line 830
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    .line 831
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    const v4, 0x7f070082

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    sget-object v1, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mContext:Landroid/content/Context;

    const v4, 0x7f070083

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 833
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 834
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 835
    .local v6, win:Landroid/view/Window;
    const/16 v0, 0x7d3

    invoke-virtual {v6, v0}, Landroid/view/Window;->setType(I)V

    .line 836
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mResetModemDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 838
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 840
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    .line 842
    :cond_0
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    .line 843
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/mtklogger/framework/MultiModemLog$5;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/MultiModemLog$5;-><init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 849
    return-void
.end method


# virtual methods
.method public getGlobalRunningStage()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStage:I

    return v0
.end method

.method public getLogRunningStatus()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog;->mCurrentStatus:I

    return v0
.end method
