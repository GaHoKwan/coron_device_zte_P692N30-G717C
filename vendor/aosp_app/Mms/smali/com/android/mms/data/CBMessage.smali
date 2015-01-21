.class public Lcom/android/mms/data/CBMessage;
.super Ljava/lang/Object;
.source "CBMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/CBMessage$Cache;
    }
.end annotation


# static fields
.field private static final ALL_CHANNEL_PROJECTION:[Ljava/lang/String; = null

.field private static final ALL_MESSAGE_PROJECTION:[Ljava/lang/String; = null

.field private static final ALL_MESSAGE_URI:Landroid/net/Uri; = null

.field private static final BODY:I = 0x3

.field private static final CHANNEL_ID:I = 0x2

.field private static final CHANNEL_URI_SLOT_0:Landroid/net/Uri; = null

.field private static final CHANNEL_URI_SLOT_1:Landroid/net/Uri; = null

.field private static final CHANNEL_URI_SLOT_2:Landroid/net/Uri; = null

.field private static final CHANNEL_URI_SLOT_3:Landroid/net/Uri; = null

.field private static final DATE:I = 0x5

.field private static final DEBUG:Z = false

.field private static final ID:I = 0x0

.field private static final MESSAGE_URI:Landroid/net/Uri; = null

.field private static final READ:I = 0x4

.field private static final SIM_ID:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CB/message"

.field private static final THREAD_ID:I = 0x6

.field public static final THREAD_MESSAGE_URI:Landroid/net/Uri;

.field private static sLoadingMessages:Z

.field private static sReadContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAddressId:I

.field private mBody:Ljava/lang/String;

.field private mChannelId:I

.field private mChannelName:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mId:J

.field private mRead:I

.field private mSimId:I

.field private mThreadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/CBMessage;->MESSAGE_URI:Landroid/net/Uri;

    .line 69
    sget-object v0, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$SmsCb;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://cb/messages/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/CBMessage;->THREAD_MESSAGE_URI:Landroid/net/Uri;

    .line 78
    const-string v0, "content://cb/channel"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_0:Landroid/net/Uri;

    .line 79
    const-string v0, "content://cb/channel1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_1:Landroid/net/Uri;

    .line 80
    const-string v0, "content://cb/channel2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_2:Landroid/net/Uri;

    .line 81
    const-string v0, "content://cb/channel3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_3:Landroid/net/Uri;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sim_id"

    aput-object v1, v0, v4

    const-string v1, "channel_id"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 87
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "number"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/data/CBMessage;->ALL_CHANNEL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    .line 124
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/CBMessage;->mId:J

    .line 125
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "allowQuery"

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    .line 129
    invoke-direct {p0, p2, p3, p4}, Lcom/android/mms/data/CBMessage;->loadFromId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/CBMessage;->mId:J

    .line 132
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .parameter "context"
    .parameter "cursor"
    .parameter "allowQuery"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    .line 136
    invoke-static {p1, p0, p2, p3}, Lcom/android/mms/data/CBMessage;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/CBMessage;Landroid/database/Cursor;Z)V

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/CBMessage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mThreadId:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/android/mms/data/CBMessage;->cacheAllMessages(Landroid/content/Context;)V

    return-void
.end method

.method private buildReadContentValues()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    sget-object v0, Lcom/android/mms/data/CBMessage;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/data/CBMessage;->sReadContentValues:Landroid/content/ContentValues;

    .line 163
    sget-object v0, Lcom/android/mms/data/CBMessage;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    :cond_0
    return-void
.end method

.method private static cacheAllMessages(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 543
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    const-string v0, "[CBMessages] cacheAllThreads"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    :cond_0
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/CBMessage;->sLoadingMessages:Z

    if-eqz v0, :cond_1

    .line 548
    monitor-exit v1

    .line 609
    :goto_0
    return-void

    .line 550
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/data/CBMessage;->sLoadingMessages:Z

    .line 551
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 557
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 560
    .local v11, messagesOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 563
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 564
    const-wide/16 v9, 0x0

    .line 565
    .local v9, messageId:J
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 566
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 567
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 572
    :try_start_2
    invoke-static {v9, v10}, Lcom/android/mms/data/CBMessage$Cache;->get(J)Lcom/android/mms/data/CBMessage;

    move-result-object v8

    .line 573
    .local v8, message:Lcom/android/mms/data/CBMessage;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 575
    if-nez v8, :cond_3

    .line 580
    :try_start_3
    new-instance v8, Lcom/android/mms/data/CBMessage;

    .end local v8           #message:Lcom/android/mms/data/CBMessage;
    const/4 v0, 0x1

    invoke-direct {v8, p0, v6, v0}, Lcom/android/mms/data/CBMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 582
    .restart local v8       #message:Lcom/android/mms/data/CBMessage;
    :try_start_4
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 583
    :try_start_5
    invoke-static {v8}, Lcom/android/mms/data/CBMessage$Cache;->put(Lcom/android/mms/data/CBMessage;)V

    .line 584
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0

    .line 585
    :catch_0
    move-exception v7

    .line 586
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_7
    const-string v0, "Tried to add duplicate CBMessages to Cache"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 599
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #message:Lcom/android/mms/data/CBMessage;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_2

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_2
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1

    .line 603
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/android/mms/data/CBMessage;->sLoadingMessages:Z

    .line 604
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 551
    .end local v6           #c:Landroid/database/Cursor;
    .end local v9           #messageId:J
    .end local v11           #messagesOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 573
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #messageId:J
    .restart local v11       #messagesOnDisk:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    .line 594
    .restart local v8       #message:Lcom/android/mms/data/CBMessage;
    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, v8, v6, v0}, Lcom/android/mms/data/CBMessage;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/CBMessage;Landroid/database/Cursor;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 599
    .end local v8           #message:Lcom/android/mms/data/CBMessage;
    .end local v9           #messageId:J
    :cond_4
    if-eqz v6, :cond_5

    .line 600
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 602
    :cond_5
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1

    .line 603
    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lcom/android/mms/data/CBMessage;->sLoadingMessages:Z

    .line 604
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 608
    invoke-static {v11}, Lcom/android/mms/data/CBMessage$Cache;->keepOnly(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 604
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .restart local v9       #messageId:J
    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public static cleanup(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 333
    return-void
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/data/CBMessage;
    .locals 1
    .parameter "context"

    .prologue
    .line 145
    new-instance v0, Lcom/android/mms/data/CBMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/CBMessage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/CBMessage;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter "context"
    .parameter "message"
    .parameter "c"
    .parameter "allowQuery"

    .prologue
    .line 402
    monitor-enter p1

    .line 403
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/mms/data/CBMessage;->mId:J

    .line 404
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/mms/data/CBMessage;->mSimId:I

    .line 405
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/mms/data/CBMessage;->mChannelId:I

    .line 406
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/mms/data/CBMessage;->mBody:Ljava/lang/String;

    .line 407
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/mms/data/CBMessage;->mRead:I

    .line 408
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/mms/data/CBMessage;->mDate:J

    .line 409
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p1, Lcom/android/mms/data/CBMessage;->mThreadId:I

    .line 410
    invoke-virtual {p1}, Lcom/android/mms/data/CBMessage;->getChannelName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/mms/data/CBMessage;->mChannelName:Ljava/lang/String;

    .line 411
    monitor-exit p1

    .line 412
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/CBMessage;
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 157
    new-instance v0, Lcom/android/mms/data/CBMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/mms/data/CBMessage;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-object v0
.end method

.method public static declared-synchronized getCBChannelName(I)Ljava/lang/String;
    .locals 2
    .parameter "channelId"

    .prologue
    .line 233
    const-class v0, Lcom/android/mms/data/CBMessage;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getCBChannelNameGemini(II)Ljava/lang/String;
    .locals 10
    .parameter "channelId"
    .parameter "simId"

    .prologue
    .line 237
    const-class v8, Lcom/android/mms/data/CBMessage;

    monitor-enter v8

    const/4 v1, 0x0

    .line 238
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_2

    .line 239
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v7

    .line 240
    .local v7, slotId:I
    packed-switch v7, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid soltId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 275
    .end local v7           #slotId:I
    :cond_0
    :goto_0
    monitor-exit v8

    return-object v0

    .line 242
    .restart local v7       #slotId:I
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_0:Landroid/net/Uri;

    .line 261
    .end local v7           #slotId:I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/data/CBMessage;->ALL_CHANNEL_PROJECTION:[Ljava/lang/String;

    const-string v3, "number = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 267
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 268
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0062

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 274
    if-eqz v6, :cond_0

    .line 275
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 237
    .end local v6           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    .line 245
    .restart local v7       #slotId:I
    :pswitch_1
    :try_start_4
    sget-object v1, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_1:Landroid/net/Uri;

    .line 246
    goto :goto_1

    .line 248
    :pswitch_2
    sget-object v1, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_2:Landroid/net/Uri;

    .line 249
    goto :goto_1

    .line 251
    :pswitch_3
    sget-object v1, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_3:Landroid/net/Uri;

    .line 252
    goto :goto_1

    .line 258
    .end local v7           #slotId:I
    :cond_2
    sget-object v1, Lcom/android/mms/data/CBMessage;->CHANNEL_URI_SLOT_0:Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 270
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_3
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v0

    .line 274
    if-eqz v6, :cond_0

    .line 275
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 274
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 275
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 1
    .parameter "threadId"

    .prologue
    .line 189
    sget-object v0, Lcom/android/mms/data/CBMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 526
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/CBMessage$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/CBMessage$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 531
    return-void
.end method

.method private loadFromId(JZ)Z
    .locals 8
    .parameter "messageId"
    .parameter "allowQuery"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 612
    iget-object v0, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 616
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 617
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/android/mms/data/CBMessage;->fillFromCursor(Landroid/content/Context;Lcom/android/mms/data/CBMessage;Landroid/database/Cursor;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    :cond_0
    if-eqz v6, :cond_1

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 630
    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 620
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    if-eqz v6, :cond_3

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v7

    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 627
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static loadingMessages()Z
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Lcom/android/mms/data/CBMessage$Cache;->getInstance()Lcom/android/mms/data/CBMessage$Cache;

    move-result-object v1

    monitor-enter v1

    .line 538
    :try_start_0
    sget-boolean v0, Lcom/android/mms/data/CBMessage;->sLoadingMessages:Z

    monitor-exit v1

    return v0

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startDelete(Landroid/content/AsyncQueryHandler;IZJ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"
    .parameter "threadId"

    .prologue
    const/4 v2, 0x0

    .line 374
    sget-object v0, Lcom/android/mms/data/CBMessage;->MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v0, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    .line 375
    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public static startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V
    .locals 6
    .parameter "handler"
    .parameter "token"
    .parameter "deleteAll"

    .prologue
    const/4 v2, 0x0

    .line 391
    sget-object v3, Lcom/android/mms/data/CBMessage;->MESSAGE_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 8
    .parameter "handler"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 347
    sget-object v3, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public static startQueryForThreadId(Landroid/content/AsyncQueryHandler;JI)V
    .locals 8
    .parameter "handler"
    .parameter "threadId"
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0, p3}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 354
    sget-object v0, Lcom/android/mms/data/CBMessage;->THREAD_MESSAGE_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/mms/data/CBMessage;->ALL_MESSAGE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move v1, p3

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    return-void
.end method


# virtual methods
.method public declared-synchronized clearThreadId()V
    .locals 3

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/CBMessage;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/data/CBMessage;->mId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/CBMessage$Cache;->remove(J)V

    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/CBMessage;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "obj"

    .prologue
    const/4 v3, 0x0

    .line 313
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/data/CBMessage;

    move-object v2, v0

    .line 314
    .local v2, other:Lcom/android/mms/data/CBMessage;
    iget v4, p0, Lcom/android/mms/data/CBMessage;->mChannelId:I

    iget v5, v2, Lcom/android/mms/data/CBMessage;->mChannelId:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/CBMessage;->mBody:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/mms/data/CBMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/mms/data/CBMessage;->mDate:J

    iget-wide v6, v2, Lcom/android/mms/data/CBMessage;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    const/4 v3, 0x1

    .line 317
    .end local v2           #other:Lcom/android/mms/data/CBMessage;
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 313
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/CBMessage;->mBody:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChannelId()I
    .locals 1

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mChannelId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/CBMessage;->mChannelName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 216
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mChannelId:I

    iget v1, p0, Lcom/android/mms/data/CBMessage;->mSimId:I

    invoke-static {v0, v1}, Lcom/android/mms/data/CBMessage;->getCBChannelNameGemini(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/CBMessage;->mChannelName:Ljava/lang/String;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/CBMessage;->mChannelName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/CBMessage;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/data/CBMessage;->getChannelName()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, displayName:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/CBMessage;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0062

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/data/CBMessage;->getChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 229
    :cond_0
    monitor-exit p0

    return-object v0

    .line 225
    .end local v0           #displayName:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getMessageId()J
    .locals 2

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/CBMessage;->mId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mSimId:I

    return v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mThreadId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/data/CBMessage;->mThreadId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 176
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/mms/data/CBMessage;->MESSAGE_URI:Landroid/net/Uri;

    iget v1, p0, Lcom/android/mms/data/CBMessage;->mThreadId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 3

    .prologue
    .line 323
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/data/CBMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/data/CBMessage;->mDate:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/data/CBMessage;->mChannelId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setChannelName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/data/CBMessage;->mChannelName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
