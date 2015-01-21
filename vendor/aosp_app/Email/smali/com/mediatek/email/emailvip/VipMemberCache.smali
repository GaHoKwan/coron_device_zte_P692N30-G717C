.class public Lcom/mediatek/email/emailvip/VipMemberCache;
.super Ljava/lang/Object;
.source "VipMemberCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/VipMemberCache$1;,
        Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;,
        Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VIP_Settings"

.field private static sInstance:Lcom/mediatek/email/emailvip/VipMemberCache;

.field public static sVipAddresses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentObserver:Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;

.field private mContext:Landroid/content/Context;

.field private mUpdateRunnable:Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, "VIP_Settings"

    const-string v1, "VipMemberCache init..."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;-><init>(Lcom/mediatek/email/emailvip/VipMemberCache;Lcom/mediatek/email/emailvip/VipMemberCache$1;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mUpdateRunnable:Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;

    .line 44
    new-instance v0, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iget-object v2, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mUpdateRunnable:Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;-><init>(Lcom/mediatek/email/emailvip/VipMemberCache;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mContentObserver:Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;

    .line 46
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mContentObserver:Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/VipMemberCache$VipContentObserver;->register(Landroid/net/Uri;)V

    .line 47
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mUpdateRunnable:Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/email/emailvip/VipMemberCache;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mediatek/email/emailvip/VipMemberCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static addMessageRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V
    .locals 6
    .parameter "targetCursor"
    .parameter "sourceCursor"

    .prologue
    .line 269
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 271
    .local v2, row:Landroid/database/MatrixCursor$RowBuilder;
    const/4 v3, 0x0

    .line 272
    .local v3, type:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 273
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    .line 274
    packed-switch v3, :pswitch_data_0

    .line 286
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 272
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :pswitch_1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 279
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 282
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 290
    :cond_0
    return-void

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static filterVipMessages(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4
    .parameter "messages"

    .prologue
    .line 254
    const-string v3, "fromList"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, fromListIndex:I
    new-instance v2, Lcom/android/email/data/ClosingMatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 256
    .local v2, matrixCursor:Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->hasVipMembers()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 265
    :cond_0
    return-object v2

    .line 259
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 260
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, fromList:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    invoke-static {v2, p0}, Lcom/mediatek/email/emailvip/VipMemberCache;->addMessageRow(Landroid/database/MatrixCursor;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static getVipMembersCount()I
    .locals 2

    .prologue
    .line 71
    sget-object v1, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getVipMessagesCount(Landroid/content/Context;J)I
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesCount(Landroid/content/Context;JZ)I

    move-result v0

    return v0
.end method

.method public static getVipMessagesCount(Landroid/content/Context;JZ)I
    .locals 2
    .parameter "context"
    .parameter "accountId"
    .parameter "onlyUnread"

    .prologue
    .line 110
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesIds(Landroid/content/Context;JZ)Landroid/database/Cursor;

    move-result-object v1

    .line 111
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_0

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 115
    .local v0, count:I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getVipMessagesIds(Landroid/content/Context;J)Landroid/database/Cursor;
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesIds(Landroid/content/Context;JZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getVipMessagesIds(Landroid/content/Context;JZ)Landroid/database/Cursor;
    .locals 12
    .parameter "context"
    .parameter "accountId"
    .parameter "onlyUnread"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 137
    invoke-static {}, Lcom/mediatek/email/emailvip/VipMemberCache;->hasVipMembers()Z

    move-result v0

    if-nez v0, :cond_1

    .line 138
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-object v8

    .line 140
    :cond_1
    const-string v3, "mailboxKey NOT IN (SELECT _id FROM Mailbox WHERE type = 6 OR type = 8) AND flagLoaded IN (2,1,4)"

    .line 141
    .local v3, vipSelection:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flagRead=0 AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_3

    const-wide/high16 v0, 0x1000

    cmp-long v0, p1, v0

    if-eqz v0, :cond_3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accountKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v10

    const-string v4, "fromList"

    aput-object v4, v2, v11

    const/4 v4, 0x0

    const-string v5, "timeStamp DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 150
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_4

    .line 151
    const-string v0, "VIP_Settings"

    const-string v1, "getVipMessagesIds return empty cursor because cursor is null"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v8, Landroid/database/MatrixCursor;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_4
    new-instance v8, Lcom/android/email/data/ClosingMatrixCursor;

    sget-object v0, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v8, v0, v6}, Lcom/android/email/data/ClosingMatrixCursor;-><init>([Ljava/lang/String;Landroid/database/Cursor;)V

    .line 156
    .local v8, matrixCursor:Lcom/android/email/data/ClosingMatrixCursor;
    :cond_5
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    .local v7, fromList:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 160
    .local v9, row:Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1
.end method

.method public static hasVipMembers()Z
    .locals 2

    .prologue
    .line 65
    sget-object v1, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sInstance:Lcom/mediatek/email/emailvip/VipMemberCache;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/mediatek/email/emailvip/VipMemberCache;

    invoke-direct {v0, p0}, Lcom/mediatek/email/emailvip/VipMemberCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sInstance:Lcom/mediatek/email/emailvip/VipMemberCache;

    .line 58
    :cond_0
    return-void
.end method

.method public static isVIP(Ljava/lang/String;)Z
    .locals 4
    .parameter "fromList"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->getFirstMailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, emailAddress:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x0

    .line 88
    :goto_0
    return v1

    .line 87
    :cond_0
    sget-object v2, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    monitor-enter v2

    .line 88
    :try_start_0
    sget-object v1, Lcom/mediatek/email/emailvip/VipMemberCache;->sVipAddresses:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static updateVipMemberCache()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sInstance:Lcom/mediatek/email/emailvip/VipMemberCache;

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/mediatek/email/emailvip/VipMemberCache;->sInstance:Lcom/mediatek/email/emailvip/VipMemberCache;

    iget-object v0, v0, Lcom/mediatek/email/emailvip/VipMemberCache;->mUpdateRunnable:Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/VipMemberCache$UpdateRunnable;->run()V

    .line 173
    :cond_0
    return-void
.end method
