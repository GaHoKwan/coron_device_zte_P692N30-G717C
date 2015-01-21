.class public Lcom/android/mms/ui/WPMessageItem;
.super Ljava/lang/Object;
.source "WPMessageItem.java"


# static fields
.field public static final UNREAD_PROJECTION:[Ljava/lang/String; = null

.field private static final UNREAD_SELECTION:Ljava/lang/String; = "(read=0 OR seen=0)"

.field private static final WP_TAG:Ljava/lang/String; = "Mms/WapPush"

.field private static sReadContentValues:Landroid/content/ContentValues;


# instance fields
.field mAction:I

.field mAddress:Ljava/lang/String;

.field mBody:Ljava/lang/String;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCreate:J

.field mDate:J

.field mExpiration:Ljava/lang/String;

.field mExpirationLong:J

.field mHighlight:Ljava/util/regex/Pattern;

.field private mIsChecked:Z

.field mIsExpired:I

.field private mIsUnread:Z

.field mLocked:Z

.field final mMsgId:J

.field mSimId:I

.field mText:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field final mType:I

.field mURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 240
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/WPMessageItem;->UNREAD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 8
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "wpColumnsMap"
    .parameter "highlight"

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageItem;->mContext:Landroid/content/Context;

    .line 106
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/WPMessageItem;->mMsgId:J

    .line 107
    iput-object p5, p0, Lcom/android/mms/ui/WPMessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 108
    iput p2, p0, Lcom/android/mms/ui/WPMessageItem;->mType:I

    .line 110
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsDate:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/WPMessageItem;->mDate:J

    .line 111
    iget-wide v4, p0, Lcom/android/mms/ui/WPMessageItem;->mDate:J

    invoke-static {p1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mTimestamp:Ljava/lang/String;

    .line 112
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAddr:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 114
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mContact:Ljava/lang/String;

    .line 119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .local v0, sBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsText:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v4, p0, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsURL:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v4, p0, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mBody:Ljava/lang/String;

    .line 136
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsCreate:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/mms/ui/WPMessageItem;->mCreate:J

    .line 138
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsExpiration:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/mms/ui/WPMessageItem;->mExpirationLong:J

    .line 139
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/android/mms/ui/WPMessageItem;->mExpirationLong:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 140
    const v1, 0x7f0b0027

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/mms/ui/WPMessageItem;->mExpirationLong:J

    invoke-static {p1, v5, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mExpiration:Ljava/lang/String;

    .line 144
    :cond_2
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsError:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageItem;->mIsExpired:I

    .line 145
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsAction:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAction:I

    .line 149
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsSimId:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/WPMessageItem;->mSimId:I

    .line 151
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsLocked:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/mms/ui/WPMessageItem;->mLocked:Z

    .line 156
    iget v1, p4, Lcom/android/mms/ui/WPMessageListAdapter$WPColumnsMap;->mColumnWpmsRead:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_5

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/WPMessageItem;->setIsUnread(Z)V

    .line 157
    return-void

    .line 116
    .end local v0           #sBuilder:Ljava/lang/StringBuilder;
    :cond_3
    const-string v1, ""

    iput-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0       #sBuilder:Ljava/lang/StringBuilder;
    :cond_4
    move v1, v3

    .line 151
    goto :goto_1

    :cond_5
    move v2, v3

    .line 156
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/mms/ui/WPMessageItem;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/WPMessageItem;->buildReadContentValues()V

    return-void
.end method

.method static synthetic access$100()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/android/mms/ui/WPMessageItem;->sReadContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/WPMessageItem;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/mms/ui/WPMessageItem;->mIsUnread:Z

    return p1
.end method

.method private buildReadContentValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 245
    sget-object v0, Lcom/android/mms/ui/WPMessageItem;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/WPMessageItem;->sReadContentValues:Landroid/content/ContentValues;

    .line 247
    sget-object v0, Lcom/android/mms/ui/WPMessageItem;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 248
    sget-object v0, Lcom/android/mms/ui/WPMessageItem;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public getSimId()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/mms/ui/WPMessageItem;->mSimId:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/mms/ui/WPMessageItem;->mIsChecked:Z

    return v0
.end method

.method public isUnread()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/mms/ui/WPMessageItem;->mIsUnread:Z

    return v0
.end method

.method public markAsRead()V
    .locals 4

    .prologue
    .line 202
    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$WapPush;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/WPMessageItem;->mMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 204
    .local v0, wpMsgUri:Landroid/net/Uri;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/WPMessageItem$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/WPMessageItem$1;-><init>(Lcom/android/mms/ui/WPMessageItem;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 236
    return-void
.end method

.method public setIsChecked(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/mms/ui/WPMessageItem;->mIsChecked:Z

    .line 191
    return-void
.end method

.method public setIsUnread(Z)V
    .locals 0
    .parameter "isUnread"

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/mms/ui/WPMessageItem;->mIsUnread:Z

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/WPMessageItem;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/WPMessageItem;->mSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " url: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mTimestamp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " create: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/mms/ui/WPMessageItem;->mCreate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expiration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/WPMessageItem;->mExpiration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/WPMessageItem;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
