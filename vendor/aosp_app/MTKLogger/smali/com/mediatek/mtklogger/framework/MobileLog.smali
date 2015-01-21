.class public Lcom/mediatek/mtklogger/framework/MobileLog;
.super Lcom/mediatek/mtklogger/framework/LogInstance;
.source "MobileLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogConnection;,
        Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogHandler;,
        Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;
    }
.end annotation


# static fields
.field private static final COMMAND_BOOT:Ljava/lang/String; = "copy"

.field private static final COMMAND_IPO_SHUTDOWN:Ljava/lang/String; = "IPO_SHUTDOWN"

.field private static final COMMAND_START:Ljava/lang/String; = "start"

.field private static final COMMAND_START_WITH_CONFIG:Ljava/lang/String; = "deep_start"

.field private static final COMMAND_STOP:Ljava/lang/String; = "stop"

.field private static final COMMAND_STOP_WITH_CONFIG:Ljava/lang/String; = "deep_stop"

.field public static final KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESPONSE_COMMAND_RESULT_FAIL:Ljava/lang/String; = "0"

.field private static final RESPONSE_COMMAND_RESULT_SUCCESS:Ljava/lang/String; = "1"

.field private static final RESPONSE_UPDATE_LOG_FOLDER_LOST:Ljava/lang/String; = "log_folder_lost"

.field private static final RESPONSE_UPDATE_LOG_RUNNING:Ljava/lang/String; = "mblog_running"

.field private static final RESPONSE_UPDATE_LOG_STOPPED:Ljava/lang/String; = "mblog_stopped"

.field private static final RESPONSE_UPDATE_STORAGE_FULL:Ljava/lang/String; = "storage_full"

.field public static final SOCKET_NAME:Ljava/lang/String; = "mobilelogd"

.field public static final SUB_LOG_TYPE_ANDROID:I = 0x1

.field public static final SUB_LOG_TYPE_BT:I = 0x3

.field public static final SUB_LOG_TYPE_KERNEL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MTKLogger/MobileLog"


# instance fields
.field private bConnected:Z

.field private mCmdResHandler:Landroid/os/Handler;

.field mobileLogLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/framework/MobileLog;->KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray;

    .line 49
    sget-object v0, Lcom/mediatek/mtklogger/framework/MobileLog;->KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "AndroidLog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    sget-object v0, Lcom/mediatek/mtklogger/framework/MobileLog;->KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "KernelLog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51
    sget-object v0, Lcom/mediatek/mtklogger/framework/MobileLog;->KEY_SUB_LOG_TYPE_MAP:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "BTLog"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/mediatek/mtklogger/framework/LogInstance;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z

    .line 58
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mCmdResHandler:Landroid/os/Handler;

    .line 65
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mobileLogLock:Ljava/lang/Object;

    .line 68
    new-instance v1, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;

    invoke-direct {v1, p0}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;-><init>(Lcom/mediatek/mtklogger/framework/MobileLog;)V

    .line 69
    .local v1, mobileLogThread:Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;
    invoke-virtual {v1}, Lcom/mediatek/mtklogger/framework/MobileLog$MobileLogThread;->start()V

    .line 70
    iget-object v3, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mobileLogLock:Ljava/lang/Object;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mobileLogLock:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    iput-object p2, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mCmdResHandler:Landroid/os/Handler;

    .line 79
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v2, "MTKLogger/MobileLog"

    const-string v4, "Wait modem log sub thread initialization, but was interrupted"

    invoke-static {v2, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lcom/mediatek/mtklogger/framework/MobileLog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mediatek/mtklogger/framework/MobileLog;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->bConnected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/mtklogger/framework/MobileLog;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/MobileLog;->notifyServiceStatus(ILjava/lang/String;)V

    return-void
.end method

.method private notifyServiceStatus(ILjava/lang/String;)V
    .locals 6
    .parameter "status"
    .parameter "reason"

    .prologue
    const v5, 0x7f070002

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 310
    const-string v0, "MTKLogger/MobileLog"

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

    .line 312
    if-ne v3, p1, :cond_1

    .line 313
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mobilelog_enable"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    :cond_0
    invoke-virtual {p0, v3, v5, v3}, Lcom/mediatek/mtklogger/framework/MobileLog;->updateStatusBar(IIZ)V

    .line 329
    :goto_0
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mCmdResHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 330
    return-void

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MobileLog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mobilelog_enable"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    :cond_2
    invoke-virtual {p0, v3, v5, v4}, Lcom/mediatek/mtklogger/framework/MobileLog;->updateStatusBar(IIZ)V

    goto :goto_0
.end method
