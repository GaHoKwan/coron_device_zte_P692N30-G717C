.class public Lcom/android/emailcommon/provider/SmartPush;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "SmartPush.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/mediatek/protect/emailcommon/provider/SmartPushContent;


# static fields
.field private static final ACCOUNT_ID_SELECTION:Ljava/lang/String; = "_id =?"

.field private static final ACCOUNT_KEY_COLUMN:I = 0x1

.field private static final ACCOUNT_SYNCINTERVAL_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final EVENT_TYPE_COLUMN:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "SmartPush"

.field private static final TIMESTAMP_COLUMN:I = 0x3

.field private static final VALUE_COLUMN:I = 0x4


# instance fields
.field public mAccountKey:J

.field public mEventType:I

.field public mTimestamp:J

.field public mValue:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/smartpush"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "syncInterval"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/SmartPush;->ACCOUNT_SYNCINTERVAL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 41
    sget-object v0, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 42
    return-void
.end method

.method public static addEvent(Landroid/content/Context;JJIJ)Lcom/android/emailcommon/provider/SmartPush;
    .locals 3
    .parameter "context"
    .parameter "timeStamp"
    .parameter "accountId"
    .parameter "eventType"
    .parameter "value"

    .prologue
    .line 118
    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lcom/android/emailcommon/provider/SmartPush;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/SmartPush;-><init>()V

    .line 123
    .local v0, sp:Lcom/android/emailcommon/provider/SmartPush;
    iput-wide p3, v0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    .line 124
    iput p5, v0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    .line 125
    iput-wide p1, v0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    .line 126
    iput-wide p6, v0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    goto :goto_0
.end method

.method public static deleteHabitData(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, deleted:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows hait data deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static isSmartPushAccount(Landroid/content/Context;J)Z
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/SmartPush;->ACCOUNT_SYNCINTERVAL_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id =?"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 139
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 141
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 148
    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 97
    instance-of v2, p1, Lcom/android/emailcommon/provider/SmartPush;

    if-nez v2, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 100
    check-cast v0, Lcom/android/emailcommon/provider/SmartPush;

    .line 101
    .local v0, thatObject:Lcom/android/emailcommon/provider/SmartPush;
    iget-wide v2, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    iget-wide v4, v0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    iget v3, v0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 46
    sget-object v0, Lcom/android/emailcommon/provider/SmartPush;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 48
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    .line 49
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    .line 50
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    .line 51
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    .line 52
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    const-string v1, "eventType"

    iget v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 59
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 60
    const-string v1, "value"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 61
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-wide v1, p0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget v1, p0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-wide v1, p0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 89
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-wide v1, p0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 72
    iget-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 73
    iget v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-wide v0, p0, Lcom/android/emailcommon/provider/SmartPush;->mValue:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 76
    return-void
.end method
