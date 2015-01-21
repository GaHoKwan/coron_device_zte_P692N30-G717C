.class public Lcom/mediatek/mtklogger/framework/LogInstance;
.super Ljava/lang/Object;
.source "LogInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;
    }
.end annotation


# static fields
.field private static final INTERNAL_UPDATE_DURATION:I = 0x3e8

.field public static final MSG_ADB_CMD:I = 0x8

.field public static final MSG_ALIVE:I = 0x17

.field public static final MSG_CHECK:I = 0x4

.field public static final MSG_CONFIG:I = 0x7

.field public static final MSG_CONN_FAIL:I = 0x15

.field public static final MSG_DIE:I = 0x16

.field public static final MSG_INIT:I = 0x1

.field public static final MSG_RESTORE_CONN:I = 0x9

.field public static final MSG_SD_ALMOST_FULL:I = 0x18

.field public static final MSG_SPECIAL_BASE:I = 0x32

.field public static final MSG_START:I = 0x2

.field public static final MSG_START_SHELL_CMD:I = 0x5

.field public static final MSG_STATUS_UPDATE:I = 0x19

.field public static final MSG_STOP:I = 0x3

.field public static final MSG_STOP_SHELL_CMD:I = 0x6

.field public static final MSG_UNKNOWN:I = 0x0

.field private static final PENDING_OFF_NOTIFICATION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PENDING_ON_NOTIFICATION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PREFIX_CONFIG_AUTO_START:Ljava/lang/String; = "autostart="

.field public static final PREFIX_CONFIG_LOG_SIZE:Ljava/lang/String; = "logsize="

.field public static final PREFIX_CONFIG_SUB_LOG:Ljava/lang/String; = "sublog_"

.field public static final PREFIX_CONFIG_TOTAL_LOG_SIZE:Ljava/lang/String; = "totallogsize="

.field protected static final RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MTKLogger/LogInstance"

.field protected static mContext:Landroid/content/Context;

.field private static mNM:Landroid/app/NotificationManager;

.field private static notificationHandler:Landroid/os/Handler;


# instance fields
.field protected mHandler:Lcom/mediatek/mtklogger/framework/LogInstance$LogHandler;

.field protected mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_ON_NOTIFICATION_MAP:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_OFF_NOTIFICATION_MAP:Ljava/util/HashMap;

    .line 265
    new-instance v0, Lcom/mediatek/mtklogger/framework/LogInstance$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/mtklogger/framework/LogInstance$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->notificationHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    sput-object p1, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    .line 105
    const-string v0, "log_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mtklogger/framework/LogInstance;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 107
    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 28
    invoke-static {p0, p1, p2}, Lcom/mediatek/mtklogger/framework/LogInstance;->getLogStateDescStr(Ljava/util/Map;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_ON_NOTIFICATION_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_OFF_NOTIFICATION_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method private getAvailableLogMemorySize()I
    .locals 6

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, logPathType:Ljava/lang/String;
    const-string v3, "internal_sd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "external_sd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 217
    :cond_0
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentLogPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v1}, Lcom/mediatek/mtklogger/utils/Utils;->getAvailableStorageSize(Ljava/lang/String;)I

    move-result v3

    .line 224
    :goto_0
    return v3

    .line 219
    :cond_1
    const-string v3, "/data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 221
    .local v2, path_file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->getAvailableStorageSize(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 223
    .end local v2           #path_file:Ljava/io/File;
    :cond_2
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown log path type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInstance(ILandroid/content/Context;Landroid/os/Handler;)Lcom/mediatek/mtklogger/framework/LogInstance;
    .locals 4
    .parameter "type"
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    packed-switch p0, :pswitch_data_0

    .line 130
    :pswitch_0
    const-string v1, "MTKLogger/LogInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsported tag instance type["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] till now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-object v0

    .line 120
    :pswitch_1
    new-instance v0, Lcom/mediatek/mtklogger/framework/NetworkLog;

    .end local v0           #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    invoke-direct {v0, p1, p2}, Lcom/mediatek/mtklogger/framework/NetworkLog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 121
    .restart local v0       #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    goto :goto_0

    .line 123
    :pswitch_2
    new-instance v0, Lcom/mediatek/mtklogger/framework/MobileLog;

    .end local v0           #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    invoke-direct {v0, p1, p2}, Lcom/mediatek/mtklogger/framework/MobileLog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 124
    .restart local v0       #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    goto :goto_0

    .line 127
    :pswitch_3
    new-instance v0, Lcom/mediatek/mtklogger/framework/MultiModemLog;

    .end local v0           #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    invoke-direct {v0, p1, p2}, Lcom/mediatek/mtklogger/framework/MultiModemLog;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 128
    .restart local v0       #instance:Lcom/mediatek/mtklogger/framework/LogInstance;
    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getLogStateDescStr(Ljava/util/Map;II)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter "singleRes"
    .parameter "multiRes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 307
    .local p0, logStateMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 308
    :cond_0
    const-string v0, ""

    .line 326
    :goto_0
    return-object v0

    .line 310
    :cond_1
    const-string v1, ""

    .line 311
    .local v1, descSuffix:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 312
    sget-object v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    :goto_1
    const-string v0, ""

    .line 318
    .local v0, descStr:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 319
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 320
    .local v3, key:Ljava/lang/Integer;
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 314
    .end local v0           #descStr:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/Integer;
    .end local v4           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    sget-object v5, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 325
    .restart local v0       #descStr:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    goto/16 :goto_0
.end method

.method public static initLogConnection(Lcom/mediatek/mtklogger/framework/LogConnection;)Z
    .locals 6
    .parameter "logConnection"

    .prologue
    .line 149
    const-string v3, "MTKLogger/LogInstance"

    const-string v4, "-->initLogConnection() with parameter"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, bConnected:Z
    if-nez p0, :cond_0

    .line 152
    const-string v3, "MTKLogger/LogInstance"

    const-string v4, "LogConnection is null"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const/4 v3, 0x0

    .line 173
    :goto_0
    return v3

    .line 155
    :cond_0
    const/4 v2, 0x5

    .line 157
    .local v2, retrynum:I
    :goto_1
    if-eqz v2, :cond_1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mtklogger/framework/LogConnection;->connect()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 170
    :cond_1
    if-lez v2, :cond_2

    .line 171
    const/4 v0, 0x1

    :cond_2
    move v3, v0

    .line 173
    goto :goto_0

    .line 161
    :cond_3
    const-wide/16 v3, 0xc8

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 162
    const-string v3, "MTKLogger/LogInstance"

    const-string v4, "Connection retry"

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    .line 168
    goto :goto_0
.end method

.method public static showLogStatusInNotificationBar(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "enable"
    .parameter "title"
    .parameter "summary"
    .parameter "icon"
    .parameter "tickerText"

    .prologue
    const/4 v6, 0x0

    .line 339
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->showLogStatusInNotificationBar(), enable?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", title="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", summary="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tickerText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    .line 342
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    .line 345
    :cond_0
    if-eqz p0, :cond_3

    .line 346
    new-instance v2, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p3, p4, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 349
    .local v2, notification:Landroid/app/Notification;
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, contentIntent:Landroid/app/PendingIntent;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 352
    .local v0, backIntent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.mediatek.mtklogger"

    const-string v5, "com.mediatek.mtklogger.MainActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 353
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 356
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static {v3, v6, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 361
    :goto_0
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 362
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    if-eqz v3, :cond_1

    .line 363
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, p3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 369
    .end local v0           #backIntent:Landroid/content/Intent;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notification:Landroid/app/Notification;
    :cond_1
    :goto_1
    return-void

    .line 358
    .restart local v0       #backIntent:Landroid/content/Intent;
    .restart local v1       #contentIntent:Landroid/app/PendingIntent;
    .restart local v2       #notification:Landroid/app/Notification;
    :cond_2
    const-string v3, "MTKLogger/LogInstance"

    const-string v4, "Could not find MTKLogger settings page."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 365
    .end local v0           #backIntent:Landroid/content/Intent;
    .end local v1           #contentIntent:Landroid/app/PendingIntent;
    .end local v2           #notification:Landroid/app/Notification;
    :cond_3
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    if-eqz v3, :cond_1

    .line 366
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v3, p3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method


# virtual methods
.method public checkLogFolder()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public getGlobalRunningStage()I
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method public getLogRunningStatus()I
    .locals 1

    .prologue
    .line 421
    const/4 v0, -0x1

    return v0
.end method

.method public getLogStorageState()I
    .locals 6

    .prologue
    .line 185
    invoke-static {}, Lcom/mediatek/mtklogger/utils/Utils;->getLogPathType()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, currentLogPathType:Ljava/lang/String;
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->getStorageState(), currentLogPathType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v3, "internal_sd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "external_sd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    :cond_0
    sget-object v3, Lcom/mediatek/mtklogger/framework/LogInstance;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/mtklogger/utils/Utils;->getCurrentVolumeState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, status:Ljava/lang/String;
    const-string v3, "mounted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 191
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Log storage is not ready yet, state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v3, -0x1

    .line 204
    .end local v2           #status:Ljava/lang/String;
    :goto_0
    return v3

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/mtklogger/framework/LogInstance;->getAvailableLogMemorySize()I

    move-result v0

    .line 197
    .local v0, availableLogStorageSize:I
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 198
    const-string v3, "MTKLogger/LogInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not enough storage for log, current available value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v3, -0x2

    goto :goto_0

    .line 202
    :cond_2
    const-string v3, "MTKLogger/LogInstance"

    const-string v4, "<--getStorageState(), storage is ready for log capture."

    invoke-static {v3, v4}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public initLogConnection()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/LogInstance;->mLogConnection:Lcom/mediatek/mtklogger/framework/LogConnection;

    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/LogInstance;->initLogConnection(Lcom/mediatek/mtklogger/framework/LogConnection;)Z

    move-result v0

    return v0
.end method

.method public updateStatusBar(IIZ)V
    .locals 5
    .parameter "logType"
    .parameter "titleRes"
    .parameter "enable"

    .prologue
    .line 235
    const-string v1, "MTKLogger/LogInstance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->updateStatusBar(), logType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", titleRes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v2, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    monitor-enter v2

    .line 237
    if-eqz p3, :cond_1

    .line 238
    :try_start_0
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_ON_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_OFF_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    const v0, 0x7f02000d

    .line 249
    .local v0, icon:I
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->notificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string v1, "MTKLogger/LogInstance"

    const-string v2, "Too frequent status bar update request, slow down."

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->notificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    :cond_0
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->notificationHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 255
    return-void

    .line 242
    .end local v0           #icon:I
    :cond_1
    :try_start_1
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->RUNNING_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_OFF_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v1, Lcom/mediatek/mtklogger/framework/LogInstance;->PENDING_ON_NOTIFICATION_MAP:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
