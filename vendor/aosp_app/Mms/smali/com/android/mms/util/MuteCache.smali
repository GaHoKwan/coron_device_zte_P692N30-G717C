.class public Lcom/android/mms/util/MuteCache;
.super Ljava/lang/Object;
.source "MuteCache.java"


# static fields
.field private static final SILENT_SELECTION:Ljava/lang/String; = "(notification_enable = 0) OR (mute > 0 AND mute_start > 0)"

.field private static final TAG:Ljava/lang/String; = "Mms/MuteCache"

.field private static final THREAD_SETTING_URI:Landroid/net/Uri;

.field private static mMuteCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/util/MuteEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/mms/util/MuteCache;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "content://mms-sms/thread_settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/MuteCache;->THREAD_SETTING_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/mms/util/MuteCache;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-static {p0}, Lcom/android/mms/util/MuteCache;->cacheMuteThreads(Landroid/content/Context;)V

    return-void
.end method

.method private static cacheMuteThreads(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 49
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    sput-object v11, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/MuteCache;->THREAD_SETTING_URI:Landroid/net/Uri;

    const/4 v11, 0x4

    new-array v2, v11, [Ljava/lang/String;

    const-string v11, "thread_id"

    aput-object v11, v2, v9

    const-string v11, "notification_enable"

    aput-object v11, v2, v10

    const-string v11, "mute"

    aput-object v11, v2, v12

    const-string v11, "mute_start"

    aput-object v11, v2, v13

    const-string v3, "(notification_enable = 0) OR (mute > 0 AND mute_start > 0)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 56
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 58
    const-wide/16 v7, 0x0

    .line 59
    .local v7, mthreadId:J
    const-wide/16 v1, 0x0

    .line 60
    .local v1, mthreadMute:J
    const-wide/16 v3, 0x0

    .line 61
    .local v3, mthreadMuteStart:J
    const/4 v5, 0x1

    .line 62
    .local v5, mthreadNotificationEnabled:Z
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 63
    const/4 v11, 0x0

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 64
    const/4 v11, 0x1

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 65
    const/4 v11, 0x2

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 66
    const/4 v11, 0x3

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_1

    move v5, v9

    .line 68
    :goto_1
    new-instance v0, Lcom/android/mms/util/MuteEntry;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/MuteEntry;-><init>(JJZ)V

    .line 69
    .local v0, mcache:Lcom/android/mms/util/MuteEntry;
    sget-object v11, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 73
    .end local v0           #mcache:Lcom/android/mms/util/MuteEntry;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_0

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v9

    :cond_1
    move v5, v10

    .line 66
    goto :goto_1

    .line 73
    .end local v1           #mthreadMute:J
    .end local v3           #mthreadMuteStart:J
    .end local v5           #mthreadNotificationEnabled:Z
    .end local v7           #mthreadId:J
    :cond_2
    if-eqz v6, :cond_3

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 77
    :cond_3
    return-void
.end method

.method public static getInstance()Lcom/android/mms/util/MuteCache;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/android/mms/util/MuteCache;->sInstance:Lcom/android/mms/util/MuteCache;

    return-object v0
.end method

.method public static getMuteEntry(J)Lcom/android/mms/util/MuteEntry;
    .locals 2
    .parameter "threadId"

    .prologue
    .line 84
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/MuteEntry;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    new-instance v1, Lcom/android/mms/util/MuteCache;

    invoke-direct {v1, p0}, Lcom/android/mms/util/MuteCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/mms/util/MuteCache;->sInstance:Lcom/android/mms/util/MuteCache;

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/MuteCache$1;

    invoke-direct {v1, p0}, Lcom/android/mms/util/MuteCache$1;-><init>(Landroid/content/Context;)V

    const-string v2, "FolderView.muteinit"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 39
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method public static needMute(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 80
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setMuteCache(JJJZ)V
    .locals 6
    .parameter "lthreadId"
    .parameter "lthreadMute"
    .parameter "lthreadMuteStart"
    .parameter "lthreadNotificationEnabled"

    .prologue
    const-wide/16 v2, 0x0

    .line 117
    if-eqz p6, :cond_0

    cmp-long v1, p2, v2

    if-lez v1, :cond_3

    cmp-long v1, p4, v2

    if-lez v1, :cond_3

    .line 118
    :cond_0
    const-string v1, "Mms/MuteCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteCache add lthreadId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    sget-object v1, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_1
    new-instance v0, Lcom/android/mms/util/MuteEntry;

    move-wide v1, p2

    move-wide v3, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/util/MuteEntry;-><init>(JJZ)V

    .line 123
    .local v0, mtcache:Lcom/android/mms/util/MuteEntry;
    sget-object v1, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v0           #mtcache:Lcom/android/mms/util/MuteEntry;
    :cond_2
    :goto_0
    return-void

    .line 125
    :cond_3
    const-string v1, "Mms/MuteCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMuteCache remove lthreadId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget-object v1, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    sget-object v1, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getMute(J)J
    .locals 2
    .parameter "threadId"

    .prologue
    .line 92
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/MuteEntry;

    iget-wide v0, v0, Lcom/android/mms/util/MuteEntry;->threadMute:J

    .line 95
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getMuteEnable(J)Z
    .locals 2
    .parameter "threadId"

    .prologue
    .line 108
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/MuteEntry;

    iget-boolean v0, v0, Lcom/android/mms/util/MuteEntry;->threadNotificationEnabled:Z

    .line 111
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMuteStart(J)J
    .locals 2
    .parameter "threadId"

    .prologue
    .line 100
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v0, Lcom/android/mms/util/MuteCache;->mMuteCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/MuteEntry;

    iget-wide v0, v0, Lcom/android/mms/util/MuteEntry;->threadMuteStart:J

    .line 103
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
