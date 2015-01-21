.class public Lcom/mediatek/wappush/SiExpiredCheck;
.super Ljava/lang/Object;
.source "SiExpiredCheck.java"


# static fields
.field private static SLEEP_INTERVAL:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsPaused:Z

.field private mIsStarted:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "Mms/WapPush"

    sput-object v0, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    .line 53
    const/16 v0, 0x2710

    sput v0, Lcom/mediatek/wappush/SiExpiredCheck;->SLEEP_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsStarted:Z

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    .line 144
    new-instance v0, Lcom/mediatek/wappush/SiExpiredCheck$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wappush/SiExpiredCheck$1;-><init>(Lcom/mediatek/wappush/SiExpiredCheck;)V

    iput-object v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mThread:Ljava/lang/Thread;

    .line 60
    iput-object p1, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wappush/SiExpiredCheck;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsStarted:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/wappush/SiExpiredCheck;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/wappush/SiExpiredCheck;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/mediatek/wappush/SiExpiredCheck;->SLEEP_INTERVAL:I

    return v0
.end method

.method public static onTimeChanged(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 125
    sget-object v0, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    const-string v1, "onTimeChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/mediatek/wappush/SiExpiredCheck;->siExpiredCheck(Landroid/content/Context;I)V

    .line 127
    return-void
.end method

.method public static siExpiredCheck(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/wappush/SiExpiredCheck;->siExpiredCheck(Landroid/content/Context;I)V

    .line 119
    return-void
.end method

.method private static declared-synchronized siExpiredCheck(Landroid/content/Context;I)V
    .locals 17
    .parameter "context"
    .parameter "isExpired"

    .prologue
    .line 70
    const-class v14, Lcom/mediatek/wappush/SiExpiredCheck;

    monitor-enter v14

    if-nez p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    monitor-exit v14

    return-void

    .line 74
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v15, 0x3e8

    div-long/2addr v5, v15

    long-to-int v7, v5

    .line 77
    .local v7, currentTime:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, selection:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 80
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v2

    const/4 v2, 0x1

    const-string v5, "expiration"

    aput-object v5, v3, v2

    .line 82
    .local v3, projection:[Ljava/lang/String;
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 83
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v10, expiredValues:Landroid/content/ContentValues;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v13, noExpiredValues:Landroid/content/ContentValues;
    const-string v2, "error"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v2, "error"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v13, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-eqz v8, :cond_0

    .line 90
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 93
    .local v11, messageId:J
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 95
    .local v9, expiredTime:I
    if-lez v9, :cond_3

    if-ge v9, v7, :cond_3

    if-nez p1, :cond_3

    .line 96
    sget-object v2, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SiExpiredCheck: message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is expired!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v10, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 100
    :cond_3
    if-le v9, v7, :cond_4

    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 101
    sget-object v2, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SiExpiredCheck: message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is set noexpired!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI_SI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v13, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_2

    .line 108
    .end local v9           #expiredTime:I
    .end local v11           #messageId:J
    :cond_5
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 70
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v3           #projection:[Ljava/lang/String;
    .end local v4           #selection:Ljava/lang/String;
    .end local v7           #currentTime:I
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #expiredValues:Landroid/content/ContentValues;
    .end local v13           #noExpiredValues:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    .line 108
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v3       #projection:[Ljava/lang/String;
    .restart local v4       #selection:Ljava/lang/String;
    .restart local v7       #currentTime:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v10       #expiredValues:Landroid/content/ContentValues;
    .restart local v13       #noExpiredValues:Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method public startExpiredCheck()V
    .locals 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    const-string v1, "startExpiredCheck!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    .line 135
    :cond_0
    return-void
.end method

.method public startSiExpiredCheckThread()V
    .locals 3

    .prologue
    .line 162
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsStarted:Z

    .line 163
    iget-object v1, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    const-string v2, "SiExpiredCheck: thread start error!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopExpiredCheck()V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    const-string v1, "stopExpiredCheck!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsPaused:Z

    .line 142
    :cond_0
    return-void
.end method

.method public stopSiExpiredCheckThread()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 173
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/wappush/SiExpiredCheck;->mIsStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/mediatek/wappush/SiExpiredCheck;->TAG:Ljava/lang/String;

    const-string v2, "SiExpiredCheck: thread stop error!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
