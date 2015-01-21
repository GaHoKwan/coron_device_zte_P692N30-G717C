.class public abstract Lcom/android/mms/util/Recycler;
.super Ljava/lang/Object;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/Recycler$WapPushRecycler;,
        Lcom/android/mms/util/Recycler$MmsRecycler;,
        Lcom/android/mms/util/Recycler$SmsRecycler;
    }
.end annotation


# static fields
.field private static final DEFAULT_AUTO_DELETE:Z = false

.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Recycler"

.field private static sAutoDeleteRun:Z

.field private static sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

.field private static sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

.field private static sWapPushRecycler:Lcom/android/mms/util/Recycler$WapPushRecycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/util/Recycler;->sAutoDeleteRun:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    return-void
.end method

.method public static checkForThreadsOverLimit(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 78
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    .line 79
    .local v1, smsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v0

    .line 81
    .local v0, mmsRecycler:Lcom/android/mms/util/Recycler;
    invoke-static {}, Lcom/android/mms/util/Recycler;->getWapPushRecycler()Lcom/android/mms/util/Recycler$WapPushRecycler;

    move-result-object v2

    .line 83
    .local v2, wappushRecycler:Lcom/android/mms/util/Recycler;
    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler$SmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/Recycler$MmsRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, p0}, Lcom/android/mms/util/Recycler$WapPushRecycler;->anyThreadOverLimit(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/android/mms/util/Recycler$MmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$MmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sMmsRecycler:Lcom/android/mms/util/Recycler$MmsRecycler;

    return-object v0
.end method

.method public static getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/mms/util/Recycler$SmsRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$SmsRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    .line 67
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sSmsRecycler:Lcom/android/mms/util/Recycler$SmsRecycler;

    return-object v0
.end method

.method public static getWapPushRecycler()Lcom/android/mms/util/Recycler$WapPushRecycler;
    .locals 1

    .prologue
    .line 763
    sget-object v0, Lcom/android/mms/util/Recycler;->sWapPushRecycler:Lcom/android/mms/util/Recycler$WapPushRecycler;

    if-nez v0, :cond_0

    .line 764
    new-instance v0, Lcom/android/mms/util/Recycler$WapPushRecycler;

    invoke-direct {v0}, Lcom/android/mms/util/Recycler$WapPushRecycler;-><init>()V

    sput-object v0, Lcom/android/mms/util/Recycler;->sWapPushRecycler:Lcom/android/mms/util/Recycler$WapPushRecycler;

    .line 766
    :cond_0
    sget-object v0, Lcom/android/mms/util/Recycler;->sWapPushRecycler:Lcom/android/mms/util/Recycler$WapPushRecycler;

    return-object v0
.end method

.method public static isAutoDeleteEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 136
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_auto_delete"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected abstract anyThreadOverLimit(Landroid/content/Context;)Z
.end method

.method protected abstract deleteMessagesForThread(Landroid/content/Context;JI)V
.end method

.method public deleteOldMessages(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    const-string v4, "Recycler"

    const-string v5, "Recycler.deleteOldMessages this: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-boolean v4, Lcom/android/mms/util/Recycler;->sAutoDeleteRun:Z

    if-nez v4, :cond_0

    .line 99
    const-string v4, "Recycler"

    const-string v5, "Recycler.deleteOldMessages this 1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 103
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v1

    .line 104
    .local v1, limit:I
    const-string v4, "Recycler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "limit is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/mms/util/Recycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 108
    .local v2, threadId:J
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/util/Recycler;->sAutoDeleteRun:Z

    .line 110
    invoke-virtual {p0, p1, v2, v3, v1}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 114
    .end local v1           #limit:I
    .end local v2           #threadId:J
    :catchall_0
    move-exception v4

    sput-boolean v7, Lcom/android/mms/util/Recycler;->sAutoDeleteRun:Z

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v4

    .line 114
    .restart local v1       #limit:I
    :cond_2
    sput-boolean v7, Lcom/android/mms/util/Recycler;->sAutoDeleteRun:Z

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 127
    invoke-static {p1}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/mms/util/Recycler;->deleteMessagesForThread(Landroid/content/Context;JI)V

    goto :goto_0
.end method

.method protected abstract dumpMessage(Landroid/database/Cursor;Landroid/content/Context;)V
.end method

.method protected abstract getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
.end method

.method public abstract getMessageLimit(Landroid/content/Context;)I
.end method

.method public getMessageMaxLimit()I
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method public getMessageMinLimit()I
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinMessageCountPerThread()I

    move-result v0

    return v0
.end method

.method protected abstract getThreadId(Landroid/database/Cursor;)J
.end method

.method public abstract setMessageLimit(Landroid/content/Context;I)V
.end method
