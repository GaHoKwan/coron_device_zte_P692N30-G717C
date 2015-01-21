.class public Lcom/mediatek/exchange/smartpush/SmartPushService;
.super Landroid/app/Service;
.source "SmartPushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DAY:I = 0x5265c00

.field private static final HOUR:I = 0x36ee80

.field protected static INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService; = null

.field private static final MINUTE:I = 0xea60

.field private static final SECOND:I = 0x3e8

.field public static final SYNC_FREQUENCY_HIGH:I = 0x2

.field public static final SYNC_FREQUENCY_LOW:I = 0x0

.field public static final SYNC_FREQUENCY_MEDIUM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SmartPushService"

.field private static final WEEK:I = 0x240c8400

.field private static final WHERE_PROTOCOL_EAS:Ljava/lang/String; = "protocol=\"eas\""

.field private static sServiceThread:Ljava/lang/Thread;

.field private static volatile sStartingUp:Z

.field private static volatile sStop:Z

.field private static final sSyncLock:Ljava/lang/Object;

.field private static sTodayStartTime:J


# instance fields
.field private mAccountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKicked:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    .line 79
    sput-boolean v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    .line 80
    sput-boolean v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sSyncLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 72
    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 50
    sget-boolean v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    sput-boolean p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    return p0
.end method

.method static synthetic access$300()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    .prologue
    .line 502
    iget-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 503
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 504
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "SMARTPUSH_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    iget-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 506
    const-string v1, "SmartPushService"

    const-string v2, "+SMARTPUSH_SERVICE WAKE LOCK ACQUIRED"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method public static alarmSmartPushService(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 457
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 458
    .local v0, smartPushService:Lcom/mediatek/exchange/smartpush/SmartPushService;
    if-eqz v0, :cond_0

    .line 459
    monitor-enter v0

    .line 460
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    .line 461
    const-string v1, "SmartPushService"

    const-string v2, "Alarm received: Kick"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 463
    monitor-exit v0

    .line 468
    :goto_0
    return-void

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 465
    :cond_0
    const-string v1, "SmartPushService"

    const-string v2, "Alarm received: start smartpush service"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-static {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->startSmartPushService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private calculate()V
    .locals 15

    .prologue
    .line 241
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 242
    const-string v0, "SmartPushService"

    const-string v1, "startCalculate..."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 245
    .local v12, startTime:J
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v6, v0, [Landroid/database/Cursor;

    .line 246
    .local v6, cursors:[Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 248
    .local v8, i:I
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    move v9, v8

    .end local v8           #i:I
    .local v9, i:I
    :goto_0
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 249
    .local v7, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    add-int/lit8 v8, v9, 0x1

    .end local v9           #i:I
    .restart local v8       #i:I
    :try_start_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/SmartPush;->HABIT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey =?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    aput-object v0, v6, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v9, v8

    .end local v8           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .line 253
    .end local v7           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/mediatek/protect/exchange/SmartPushCalculator;->getCalculator()Lcom/mediatek/protect/exchange/SmartPushCalculator;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v1, v6}, Lcom/mediatek/protect/exchange/SmartPushCalculator;->startCalculate(Landroid/content/Context;Ljava/util/HashMap;[Landroid/database/Cursor;)V

    .line 254
    const-string v0, "SmartPushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculate end!!! cost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 257
    const/4 v8, 0x0

    .end local v9           #i:I
    .restart local v8       #i:I
    :goto_1
    array-length v0, v6

    if-ge v8, v0, :cond_3

    .line 258
    aget-object v0, v6, v8

    if-eqz v0, :cond_1

    .line 259
    aget-object v0, v6, v8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v10           #i$:Ljava/util/Iterator;
    :cond_2
    throw v0

    .line 266
    .end local v6           #cursors:[Landroid/database/Cursor;
    .end local v8           #i:I
    .end local v12           #startTime:J
    :cond_3
    invoke-static {p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v11

    .line 267
    .local v11, prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->settLastCalculateTime(J)V

    .line 268
    return-void

    .line 257
    .end local v11           #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    .restart local v6       #cursors:[Landroid/database/Cursor;
    .restart local v8       #i:I
    .restart local v12       #startTime:J
    :catchall_0
    move-exception v0

    :goto_2
    const/4 v8, 0x0

    :goto_3
    array-length v1, v6

    if-ge v8, v1, :cond_2

    .line 258
    aget-object v1, v6, v8

    if-eqz v1, :cond_4

    .line 259
    aget-object v1, v6, v8

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 257
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v8           #i:I
    .restart local v9       #i:I
    .restart local v10       #i$:Ljava/util/Iterator;
    :catchall_1
    move-exception v0

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_2
.end method

.method private changeSyncFrequency(IJ)V
    .locals 11
    .parameter "syncFrequency"
    .parameter "accountId"

    .prologue
    .line 334
    const/4 v6, -0x2

    .line 335
    .local v6, syncInterval:I
    packed-switch p1, :pswitch_data_0

    .line 350
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 352
    .local v0, cv:Landroid/content/ContentValues;
    const-string v7, "syncInterval"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-static {p0, p2, p3}, Lcom/android/emailcommon/provider/Account;->getInboxId(Landroid/content/Context;J)J

    move-result-wide v3

    .line 355
    .local v3, mailboxId:J
    invoke-static {p0, v3, v4}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v2

    .line 356
    .local v2, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const/16 v7, 0x42

    invoke-static {p0, p2, p3, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 359
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    const/16 v7, 0x41

    invoke-static {p0, p2, p3, v7}, Lcom/android/emailcommon/provider/Mailbox;->findMailboxOfType(Landroid/content/Context;JI)J

    move-result-wide v3

    .line 362
    sget-object v7, Lcom/android/emailcommon/provider/Mailbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.email.provider"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    :goto_1
    const-string v7, "SmartPushService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "changeSyncFrequency from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/emailcommon/provider/Mailbox;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") of account "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, v2, Lcom/android/emailcommon/provider/Mailbox;->mAccountKey:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 337
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v3           #mailboxId:J
    .end local v5           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :pswitch_0
    const/4 v6, -0x2

    .line 338
    goto/16 :goto_0

    .line 340
    :pswitch_1
    const/16 v6, 0x3c

    .line 341
    goto/16 :goto_0

    .line 343
    :pswitch_2
    const/4 v6, -0x1

    .line 344
    goto/16 :goto_0

    .line 368
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v2       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v3       #mailboxId:J
    .restart local v5       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "SmartPushService"

    const-string v8, "RemoteException when updating mailboxes sync interval"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 371
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 373
    .local v1, e:Landroid/content/OperationApplicationException;
    const-string v7, "SmartPushService"

    const-string v8, "OperationApplicationException when updating mailboxes sync interval"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkNextCalculateWait()J
    .locals 10

    .prologue
    const-wide/32 v8, 0x5265c00

    .line 225
    invoke-static {p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v2

    .line 226
    .local v2, prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-virtual {v2}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getLastCalculateTime()J

    move-result-wide v0

    .line 228
    .local v0, lastCalculateTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v3, v5, v0

    .line 229
    .local v3, sinceLastTime:J
    const-string v5, "SmartPushService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "since the last calculate time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    cmp-long v5, v3, v8

    if-ltz v5, :cond_0

    .line 231
    const-wide/16 v5, 0x0

    .line 233
    :goto_0
    return-wide v5

    :cond_0
    sub-long v5, v8, v3

    goto :goto_0
.end method

.method private clearAlarm()V
    .locals 3

    .prologue
    .line 519
    iget-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 520
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 521
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v1, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 522
    const-string v1, "SmartPushService"

    const-string v2, "-Alarm cleared"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    :cond_0
    return-void
.end method

.method private deleteStaleData()V
    .locals 9

    .prologue
    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x48190801

    sub-long v1, v3, v5

    .line 538
    .local v1, timeAfter:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "timestamp < ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 540
    .local v0, deleted:I
    const-string v3, "SmartPushService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows stale habit data were deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method public static kick(Ljava/lang/String;)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 544
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 545
    .local v0, smartPushService:Lcom/mediatek/exchange/smartpush/SmartPushService;
    if-eqz v0, :cond_1

    .line 546
    monitor-enter v0

    .line 547
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    .line 548
    const-string v1, "SmartPushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Kick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 550
    monitor-exit v0

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 550
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 551
    :cond_1
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-eqz v1, :cond_0

    .line 552
    const-string v1, "SmartPushService"

    const-string v2, "Start smartpushservice when kick"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    invoke-static {v1}, Lcom/mediatek/exchange/smartpush/SmartPushService;->startSmartPushService(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private makeAdjustments()J
    .locals 23

    .prologue
    .line 276
    sget-boolean v17, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    if-eqz v17, :cond_0

    .line 277
    const-wide/16 v8, 0x0

    .line 330
    :goto_0
    return-wide v8

    .line 279
    :cond_0
    const-string v17, "SmartPushService"

    const-string v18, "makeAdjustments..."

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sget-wide v19, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    sub-long v17, v17, v19

    const-wide/32 v19, 0x6ddd00

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->intValue()I

    move-result v16

    .line 282
    .local v16, scale:I
    const-string v17, "SmartPushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "current time scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-wide/32 v17, 0x6ddd00

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sget-wide v21, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    sub-long v19, v19, v21

    const-wide/32 v21, 0x6ddd00

    rem-long v19, v19, v21

    sub-long v12, v17, v19

    .line 285
    .local v12, nextTimeLeast:J
    const-string v17, "SmartPushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The time remaining to the next time scale: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-wide v8, 0x7fffffffffffffffL

    .line 289
    .local v8, minNextTime:J
    sget-object v17, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    if-nez v17, :cond_1

    .line 290
    const-wide/32 v8, 0xea60

    goto :goto_0

    .line 297
    :cond_1
    sget-object v17, Lcom/android/exchange/ExchangeService;->INSTANCE:Lcom/android/exchange/ExchangeService;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/exchange/ExchangeService;->mAccountList:Lcom/android/exchange/ExchangeService$AccountList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 298
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 299
    .local v5, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 300
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    move-wide v10, v12

    .line 302
    .local v10, nextTime:J
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Long;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 303
    .local v2, accountId:J
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/SmartPush;->isSmartPushAccount(Landroid/content/Context;J)Z

    move-result v17

    if-nez v17, :cond_2

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 327
    .end local v2           #accountId:J
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v5           #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #nextTime:J
    :catchall_0
    move-exception v17

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v17

    .line 307
    .restart local v2       #accountId:J
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .restart local v5       #entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #nextTime:J
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/mediatek/protect/exchange/SmartPushCalculator;->getCalculator()Lcom/mediatek/protect/exchange/SmartPushCalculator;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/protect/exchange/SmartPushCalculator;->getResult(J)[I

    move-result-object v15

    .line 311
    .local v15, result:[I
    if-nez v15, :cond_3

    .line 312
    invoke-static/range {p0 .. p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v14

    .line 313
    .local v14, prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-virtual {v14}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->removeLastCalculateTime()V

    .line 314
    const-wide/16 v17, 0x0

    monitor-exit v19

    move-wide/from16 v8, v17

    goto/16 :goto_0

    .line 317
    .end local v14           #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    :cond_3
    aget v17, v15, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/exchange/smartpush/SmartPushService;->changeSyncFrequency(IJ)V

    .line 321
    move/from16 v6, v16

    .line 322
    .local v6, i:I
    :goto_2
    invoke-static {}, Lcom/mediatek/protect/exchange/SmartPushCalculator;->getScaleNum()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    aget v17, v15, v6

    add-int/lit8 v6, v6, 0x1

    aget v18, v15, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 323
    const-wide/32 v17, 0x6ddd00

    add-long v10, v10, v17

    goto :goto_2

    .line 325
    :cond_4
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 326
    goto :goto_1

    .line 327
    .end local v2           #accountId:J
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Integer;>;"
    .end local v6           #i:I
    .end local v10           #nextTime:J
    .end local v15           #result:[I
    :cond_5
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    const-string v17, "SmartPushService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "The time remaining to the next adjustments: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 514
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 515
    const-string v0, "SmartPushService"

    const-string v1, "-SMARTPUSH_SERVICE WAKE LOCK RELEASED"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public static runAsleep(J)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 479
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 480
    .local v0, smartPushService:Lcom/mediatek/exchange/smartpush/SmartPushService;
    if-eqz v0, :cond_0

    .line 481
    invoke-direct {v0, p0, p1}, Lcom/mediatek/exchange/smartpush/SmartPushService;->setAlarm(J)V

    .line 482
    invoke-direct {v0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->releaseWakeLock()V

    .line 484
    :cond_0
    return-void
.end method

.method public static runAwake()V
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 472
    .local v0, smartPushService:Lcom/mediatek/exchange/smartpush/SmartPushService;
    if-eqz v0, :cond_0

    .line 473
    invoke-direct {v0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->acquireWakeLock()V

    .line 474
    invoke-direct {v0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->clearAlarm()V

    .line 476
    :cond_0
    return-void
.end method

.method private setAlarm(J)V
    .locals 6
    .parameter "millis"

    .prologue
    const/4 v5, 0x0

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/exchange/smartpush/SmartPushAlarmReceiver;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 528
    .local v1, i:Landroid/content/Intent;
    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mPendingIntent:Landroid/app/PendingIntent;

    .line 529
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 530
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 532
    const-string v2, "SmartPushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+Alarm set for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    return-void
.end method

.method private shouldRunSmartPushService()J
    .locals 29

    .prologue
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 173
    .local v14, current:J
    const-wide/32 v4, 0x5265c00

    div-long v18, v14, v4

    .line 175
    .local v18, days:J
    const-wide/32 v4, 0x5265c00

    mul-long v4, v4, v18

    sput-wide v4, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    .line 176
    const-string v4, "SmartPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Today start time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 178
    const-wide/32 v20, 0x5265c00

    .line 180
    .local v20, nextCheckTime:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const-string v7, "syncInterval =?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x5

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 183
    .local v13, c:Landroid/database/Cursor;
    if-eqz v13, :cond_4

    .line 185
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 186
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 188
    .local v11, accountId:J
    sget-object v5, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "timestamp"

    aput-object v7, v6, v4

    const-string v7, "accountKey=? AND eventType !=?"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v10}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object v22

    .line 192
    .local v22, recordTimestamp:Ljava/lang/Long;
    if-eqz v22, :cond_2

    .line 193
    sget-wide v4, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v23, v4, v6

    .line 194
    .local v23, timeSpan:J
    const-string v4, "SmartPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms habit data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-wide/32 v4, 0xa4cb800

    cmp-long v4, v23, v4

    if-ltz v4, :cond_0

    .line 197
    const-wide/32 v4, 0x5265c00

    div-long v16, v23, v4

    .line 198
    .local v16, day:J
    const-string v4, "SmartPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " days habit data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mAccountMap:Ljava/util/HashMap;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-wide/16 v20, 0x0

    .line 201
    goto/16 :goto_0

    .line 202
    .end local v16           #day:J
    :cond_0
    sget-wide v6, Lcom/mediatek/exchange/smartpush/SmartPushService;->sTodayStartTime:J

    const-wide/32 v8, 0x5265c00

    const-wide/16 v27, 0x2

    const-wide/16 v4, 0x0

    cmp-long v4, v23, v4

    if-gez v4, :cond_1

    const-wide/16 v4, -0x1

    :goto_1
    sub-long v4, v27, v4

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    sub-long v25, v4, v14

    .line 204
    .local v25, timeToEnough:J
    move-wide/from16 v0, v20

    move-wide/from16 v2, v25

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    goto/16 :goto_0

    .line 202
    .end local v25           #timeToEnough:J
    :cond_1
    const-wide/32 v4, 0x5265c00

    div-long v4, v23, v4

    goto :goto_1

    .line 207
    .end local v23           #timeSpan:J
    :cond_2
    const-string v4, "SmartPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No habit data record for account "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 211
    .end local v11           #accountId:J
    .end local v22           #recordTimestamp:Ljava/lang/Long;
    :catchall_0
    move-exception v4

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_4
    const-string v4, "SmartPushService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The habit data will be enough after "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-wide v20
.end method

.method private shutdown()V
    .locals 3

    .prologue
    .line 487
    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 488
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    .line 489
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 490
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    .line 493
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 495
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    :cond_0
    const-string v0, "SmartPushService"

    const-string v2, "Goodbye"

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    monitor-exit v1

    .line 499
    return-void

    .line 498
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static startSmartPushService(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 91
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 420
    new-instance v0, Lcom/mediatek/exchange/smartpush/SmartPushService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/exchange/smartpush/SmartPushService$1;-><init>(Lcom/mediatek/exchange/smartpush/SmartPushService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 435
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 439
    const-string v0, "SmartPushService"

    const-string v1, "SmartPushService onDestroy"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v0, Lcom/mediatek/exchange/smartpush/SmartPushService$2;

    invoke-direct {v0, p0}, Lcom/mediatek/exchange/smartpush/SmartPushService$2;-><init>(Lcom/mediatek/exchange/smartpush/SmartPushService;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 454
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 388
    sget-boolean v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    if-nez v1, :cond_3

    .line 389
    sput-boolean v6, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    .line 391
    :try_start_0
    sget-object v2, Lcom/mediatek/exchange/smartpush/SmartPushService;->sSyncLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :try_start_1
    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/emailcommon/provider/HostAuth;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "protocol=\"eas\""

    const/4 v4, 0x0

    invoke-static {p0, v1, v3, v4}, Lcom/android/emailcommon/provider/EmailContent;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 396
    new-instance v1, Ljava/lang/Thread;

    const-string v3, "SmartPushService"

    invoke-direct {v1, p0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    sput-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    .line 397
    sput-object p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->INSTANCE:Lcom/mediatek/exchange/smartpush/SmartPushService;

    .line 401
    invoke-static {p0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->getPreferences(Landroid/content/Context;)Lcom/mediatek/exchange/smartpush/SmartPushPreferences;

    move-result-object v0

    .line 402
    .local v0, prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    invoke-virtual {v0}, Lcom/mediatek/exchange/smartpush/SmartPushPreferences;->removeLastCalculateTime()V

    .line 403
    const-string v1, "SmartPushService"

    const-string v3, "SmartPushService thread start to run"

    invoke-static {v1, v3}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 407
    .end local v0           #prefs:Lcom/mediatek/exchange/smartpush/SmartPushPreferences;
    :cond_1
    sget-object v1, Lcom/mediatek/exchange/smartpush/SmartPushService;->sServiceThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    .line 408
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 410
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    sput-boolean v5, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    .line 415
    :cond_3
    return v6

    .line 410
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 412
    :catchall_1
    move-exception v1

    sput-boolean v5, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStartingUp:Z

    throw v1
.end method

.method public run()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x2710

    const-wide/16 v11, 0x0

    const/4 v9, 0x0

    .line 95
    sput-boolean v9, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    .line 98
    :goto_0
    :try_start_0
    sget-boolean v9, Lcom/mediatek/exchange/smartpush/SmartPushService;->sStop:Z

    if-nez v9, :cond_6

    .line 99
    const-string v9, "SmartPushService"

    const-string v10, "SmartPushService loop one time"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/mediatek/exchange/smartpush/SmartPushService;->runAwake()V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->deleteStaleData()V

    .line 104
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->shouldRunSmartPushService()J

    move-result-wide v5

    .line 105
    .local v5, nextCheckTime:J
    cmp-long v9, v5, v11

    if-lez v9, :cond_0

    .line 106
    const-string v9, "SmartPushService"

    const-string v10, "No eligible smart push account found"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    add-long v9, v5, v13

    invoke-static {v9, v10}, Lcom/mediatek/exchange/smartpush/SmartPushService;->runAsleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 110
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    const-wide/16 v9, 0x1388

    add-long/2addr v9, v5

    :try_start_2
    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 113
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 114
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    const-string v9, "SmartPushService"

    const-string v10, "SmartPushService interrupted"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 154
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v5           #nextCheckTime:J
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_5
    const-string v9, "SmartPushService"

    const-string v10, "RuntimeException in SmartPushService"

    invoke-static {v9, v10, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 162
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v9

    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->shutdown()V

    throw v9

    .line 121
    .restart local v5       #nextCheckTime:J
    :cond_0
    :try_start_6
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->checkNextCalculateWait()J

    move-result-wide v3

    .line 122
    .local v3, nextCalculateWait:J
    const-wide/32 v9, 0x927c0

    cmp-long v9, v3, v9

    if-gez v9, :cond_1

    .line 123
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->calculate()V

    .line 124
    const-wide/32 v3, 0x5265c00

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->makeAdjustments()J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result-wide v1

    .line 128
    .local v1, nextActionWait:J
    cmp-long v9, v1, v3

    if-gez v9, :cond_7

    move-wide v7, v1

    .line 131
    .local v7, nextWait:J
    :goto_1
    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 132
    :try_start_8
    iget-boolean v9, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    if-nez v9, :cond_4

    .line 133
    cmp-long v9, v7, v11

    if-gez v9, :cond_2

    .line 134
    const-wide/16 v7, 0x3e8

    .line 136
    :cond_2
    cmp-long v9, v7, v13

    if-lez v9, :cond_3

    .line 137
    const-wide/16 v9, 0xbb8

    add-long/2addr v9, v7

    invoke-static {v9, v10}, Lcom/mediatek/exchange/smartpush/SmartPushService;->runAsleep(J)V

    .line 139
    :cond_3
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V

    .line 141
    :cond_4
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 146
    :try_start_9
    monitor-enter p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 147
    :try_start_a
    iget-boolean v9, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    if-eqz v9, :cond_5

    .line 148
    const-string v9, "SmartPushService"

    const-string v10, "Wait deferred due to kick"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    .line 151
    :cond_5
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v9

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 158
    .end local v1           #nextActionWait:J
    .end local v3           #nextCalculateWait:J
    .end local v5           #nextCheckTime:J
    .end local v7           #nextWait:J
    :catch_2
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    :try_start_c
    const-string v9, "SmartPushService"

    const-string v10, "SmartPushService Exception occured"

    invoke-static {v9, v10, v0}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/mediatek/exchange/smartpush/SmartPushService;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/exchange/smartpush/SmartPushService;->shutdown()V

    .line 164
    return-void

    .restart local v1       #nextActionWait:J
    .restart local v3       #nextCalculateWait:J
    .restart local v5       #nextCheckTime:J
    :cond_7
    move-wide v7, v3

    .line 128
    goto :goto_1

    .line 141
    .restart local v7       #nextWait:J
    :catchall_3
    move-exception v9

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_3

    .line 142
    :catch_3
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_f
    const-string v9, "SmartPushService"

    const-string v10, "SmartPushService interrupted"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 146
    :try_start_10
    monitor-enter p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    .line 147
    :try_start_11
    iget-boolean v9, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    if-eqz v9, :cond_8

    .line 148
    const-string v9, "SmartPushService"

    const-string v10, "Wait deferred due to kick"

    invoke-static {v9, v10}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    .line 151
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw v9

    .line 146
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_5
    move-exception v9

    monitor-enter p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2

    .line 147
    :try_start_13
    iget-boolean v10, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    if-eqz v10, :cond_9

    .line 148
    const-string v10, "SmartPushService"

    const-string v11, "Wait deferred due to kick"

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/mediatek/exchange/smartpush/SmartPushService;->mKicked:Z

    .line 151
    :cond_9
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 146
    :try_start_14
    throw v9
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2

    .line 151
    :catchall_6
    move-exception v9

    :try_start_15
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v9
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_2
.end method
