.class public Lcom/android/exchange/ExchangePreferences;
.super Ljava/lang/Object;
.source "ExchangePreferences.java"


# static fields
.field private static final BAD_SYNC_KEY_MAILBOX_ID:Ljava/lang/String; = "badSyncKeyMailboxId"

.field private static final LOW_STORAGE:Ljava/lang/String; = "isLowStorage"

.field private static final MAX_LOW_STORAGE_THRESHOLD:J = 0x3200000L

.field public static final PREFERENCES_FILE:Ljava/lang/String; = "AndroidExchange.Main"

.field private static final REMOVE_STALE_MAILS:Ljava/lang/String; = "isRemovedStaleMails"

.field private static sPreferences:Lcom/android/exchange/ExchangePreferences;

.field private static sStorageOkSize:J


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/exchange/ExchangePreferences;->sStorageOkSize:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "AndroidExchange.Main"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 61
    return-void
.end method

.method public static declared-synchronized getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 70
    const-class v1, Lcom/android/exchange/ExchangePreferences;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/exchange/ExchangePreferences;->sPreferences:Lcom/android/exchange/ExchangePreferences;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/exchange/ExchangePreferences;

    invoke-direct {v0, p0}, Lcom/android/exchange/ExchangePreferences;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/exchange/ExchangePreferences;->sPreferences:Lcom/android/exchange/ExchangePreferences;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/exchange/ExchangePreferences;->sPreferences:Lcom/android/exchange/ExchangePreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/exchange/ExchangePreferences;->getPreferences(Landroid/content/Context;)Lcom/android/exchange/ExchangePreferences;

    move-result-object v0

    iget-object v0, v0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public checkLowStorage()V
    .locals 17

    .prologue
    .line 94
    sget-boolean v13, Lcom/android/emailcommon/Configuration;->IS_TEST:Z

    if-eqz v13, :cond_0

    .line 124
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    .line 100
    .local v12, storageDirectory:Ljava/lang/String;
    new-instance v11, Landroid/os/StatFs;

    invoke-direct {v11, v12}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 101
    .local v11, stat:Landroid/os/StatFs;
    invoke-virtual {v11}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v1, v13

    .line 102
    .local v1, availableBlocks:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v5, v13

    .line 103
    .local v5, blockSize:J
    invoke-virtual {v11}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v3, v13

    .line 104
    .local v3, blockCount:J
    mul-long v9, v1, v5

    .line 112
    .local v9, remaining:J
    const-wide/16 v13, 0x0

    sget-wide v15, Lcom/android/exchange/ExchangePreferences;->sStorageOkSize:J

    cmp-long v13, v13, v15

    if-nez v13, :cond_2

    .line 113
    mul-long v13, v3, v5

    const-wide/16 v15, 0xa

    div-long v7, v13, v15

    .line 114
    .local v7, minStorageSize:J
    const-wide/32 v13, 0x3200000

    cmp-long v13, v7, v13

    if-lez v13, :cond_1

    const-wide/32 v7, 0x3200000

    .end local v7           #minStorageSize:J
    :cond_1
    sput-wide v7, Lcom/android/exchange/ExchangePreferences;->sStorageOkSize:J

    .line 118
    :cond_2
    sget-wide v13, Lcom/android/exchange/ExchangePreferences;->sStorageOkSize:J

    cmp-long v13, v9, v13

    if-lez v13, :cond_3

    .line 119
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/ExchangePreferences;->setLowStorage(Z)V

    goto :goto_0

    .line 121
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/exchange/ExchangePreferences;->setLowStorage(Z)V

    goto :goto_0
.end method

.method public getBadSyncKeyMailboxId()J
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "badSyncKeyMailboxId"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLowStorage()Z
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isLowStorage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getRemovedStaleMails()Z
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "isRemovedStaleMails"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setBadSyncKeyMailboxId(J)V
    .locals 2
    .parameter "value"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "badSyncKeyMailboxId"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public setLowStorage(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isLowStorage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 82
    return-void
.end method

.method public setRemovedStaleMails(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/exchange/ExchangePreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isRemovedStaleMails"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    return-void
.end method
