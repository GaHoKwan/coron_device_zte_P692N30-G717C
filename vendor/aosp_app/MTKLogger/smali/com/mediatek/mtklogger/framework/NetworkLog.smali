.class public Lcom/mediatek/mtklogger/framework/NetworkLog;
.super Lcom/mediatek/mtklogger/framework/LogInstance;
.source "NetworkLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogConnection;,
        Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogHandler;,
        Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;
    }
.end annotation


# static fields
.field private static final COMMAND_PHONE_START:Ljava/lang/String; = "tcpdump_data_start"

.field private static final COMMAND_PHONE_STOP:Ljava/lang/String; = "tcpdump_data_stop"

.field private static final COMMAND_PHONE_STOP_WITHOUT_PING:Ljava/lang/String; = "tcpdump_data_stop_noping"

.field private static final COMMAND_SD_CHECK:Ljava/lang/String; = "tcpdump_sdcard_check"

.field private static final COMMAND_SD_START:Ljava/lang/String; = "tcpdump_sdcard_start"

.field private static final COMMAND_SD_STOP:Ljava/lang/String; = "tcpdump_sdcard_stop"

.field private static final COMMAND_SD_STOP_WITHOUT_PING:Ljava/lang/String; = "tcpdump_sdcard_stop_noping"

.field private static final RESP_MSG_BASE:I = 0x20

.field private static final RESP_TYPE_CHECK:I = 0x4

.field private static final RESP_TYPE_MONITOR:I = 0x7

.field private static final RESP_TYPE_SHELL_START:I = 0x5

.field private static final RESP_TYPE_SHELL_STOP:I = 0x6

.field private static final RESP_TYPE_START:I = 0x1

.field private static final RESP_TYPE_STOP:I = 0x2

.field private static final RESP_TYPE_TAG:I = 0x3

.field private static final RESP_TYPE_UNKNOWN:I = 0x8

.field public static final SOCKET_NAME:Ljava/lang/String; = "netdiag"

.field private static final STOP_REASON_LOG_FOLDER_LOST:Ljava/lang/String; = "folder_lost"

.field private static final TAG:Ljava/lang/String; = "MTKLogger/NetworkLog"


# instance fields
.field private bConnected:Z

.field private mCmdResHandler:Landroid/os/Handler;

.field networLogLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z

    .line 52
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mCmdResHandler:Landroid/os/Handler;

    .line 59
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->networLogLock:Ljava/lang/Object;

    .line 62
    new-instance v1, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;-><init>(Lcom/mediatek/mtklogger/framework/NetworkLog;)V

    .line 63
    .local v1, networkLogThread:Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/NetworkLog$NetworkLogThread;->start()V

    .line 64
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->networLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->networLogLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    iput-object p2, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mCmdResHandler:Landroid/os/Handler;

    .line 72
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "MTKLogger/NetworkLog"

    const-string v4, "Wait network log sub thread initialization, but was interrupted"

    invoke-static {v2, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/framework/NetworkLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/mtklogger/framework/NetworkLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->bConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/framework/NetworkLog;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/NetworkLog;->notifyServiceStatus(ILjava/lang/String;)V

    return-void
.end method

.method private notifyServiceStatus(ILjava/lang/String;)V
    .locals 7
    .parameter "status"
    .parameter "reason"

    .prologue
    const v6, 0x7f070001

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 314
    const-string v0, "MTKLogger/NetworkLog"

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

    .line 318
    if-ne v3, p1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "networklog_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 323
    :cond_0
    invoke-virtual {p0, v4, v6, v3}, Lcom/mediatek/mtklogger/framework/NetworkLog;->updateStatusBar(IIZ)V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mCmdResHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 334
    return-void

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 326
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "networklog_enable"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    :cond_2
    invoke-virtual {p0, v4, v6, v5}, Lcom/mediatek/mtklogger/framework/NetworkLog;->updateStatusBar(IIZ)V

    goto :goto_0
.end method


# virtual methods
.method public checkLogFolder()V
    .locals 6

    .prologue
    .line 411
    invoke-super {p0}, Lcom/mediatek/mtklogger/framework/LogInstance;->checkLogFolder()V

    .line 412
    sget-object v3, Lcom/mediatek/mtklogger/utils/Utils;->KEY_SYSTEM_PROPERTY_NETLOG_SAVING_PATH:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, currentLogPathFromNative:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, currentLogFolder:Ljava/io/File;
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/NetworkLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "networklog_enable"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 416
    .local v2, runningStatus:I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 417
    const-string v3, "MTKLogger/NetworkLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NetworkLog is running, but could not found log folder("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from Java layer, just a remind."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_0
    return-void
.end method
