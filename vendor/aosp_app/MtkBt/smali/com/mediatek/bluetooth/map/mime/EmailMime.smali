.class public Lcom/mediatek/bluetooth/map/mime/EmailMime;
.super Lcom/mediatek/bluetooth/map/mime/MimeBase;
.source "EmailMime.java"


# static fields
.field private static final ATTACHMENT_PROJECTION:[Ljava/lang/String; = null

.field private static final BODY_HTML_CONTENT_COLUMN:I = 0x0

.field private static final BODY_HTML_REPLY_COLUMN:I = 0x2

.field private static final BODY_INTRO_COLUMN:I = 0x4

.field private static final BODY_PROJECTION:[Ljava/lang/String; = null

.field private static final BODY_TEXT_CONTENT_COLUMN:I = 0x1

.field private static final BODY_TEXT_REPLY_COLUMN:I = 0x3

.field public static final CONTENT_CONTENT_BYTES_COLUMN:I = 0xb

.field public static final CONTENT_CONTENT_COLUMN:I = 0x9

.field public static final CONTENT_CONTENT_ID_COLUMN:I = 0x4

.field public static final CONTENT_CONTENT_URI_COLUMN:I = 0x5

.field public static final CONTENT_ENCODING_COLUMN:I = 0x8

.field public static final CONTENT_FILENAME_COLUMN:I = 0x1

.field public static final CONTENT_FLAGS_COLUMN:I = 0xa

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_LOCATION_COLUMN:I = 0x7

.field public static final CONTENT_MESSAGE_ID_COLUMN:I = 0x6

.field public static final CONTENT_MIME_TYPE_COLUMN:I = 0x2

.field public static final CONTENT_SIZE_COLUMN:I = 0x3

.field private static final MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final COLUMN_BCC:I

.field private final COLUMN_CC:I

.field private final COLUMN_FLAG_ATTACHMENT:I

.field private final COLUMN_FROM:I

.field private final COLUMN_ID:I

.field private final COLUMN_LOADED:I

.field private final COLUMN_MESSAGE_ID:I

.field private final COLUMN_READ:I

.field private final COLUMN_REPLAY:I

.field private final COLUMN_SUBJECT:I

.field private final COLUMN_TIMESTATP:I

.field private final COLUMN_TO:I

.field private mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "subject"

    aput-object v1, v0, v4

    const-string v1, "timeStamp"

    aput-object v1, v0, v5

    const-string v1, "fromList"

    aput-object v1, v0, v6

    const-string v1, "replyToList"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "toList"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "flagAttachment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "flagLoaded"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "flagRead"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "messageId"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bccList"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ccList"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "htmlContent"

    aput-object v1, v0, v3

    const-string v1, "textContent"

    aput-object v1, v0, v4

    const-string v1, "htmlReply"

    aput-object v1, v0, v5

    const-string v1, "textReply"

    aput-object v1, v0, v6

    const-string v1, "introText"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->BODY_PROJECTION:[Ljava/lang/String;

    .line 98
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "fileName"

    aput-object v1, v0, v4

    const-string v1, "mimeType"

    aput-object v1, v0, v5

    const-string v1, "size"

    aput-object v1, v0, v6

    const-string v1, "contentId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "content"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "content_bytes"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;J)V
    .locals 1
    .parameter "resolver"
    .parameter "id"

    .prologue
    .line 128
    sget v0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->MSG_TYPE_EMAIL:I

    invoke-direct {p0, p1, v0}, Lcom/mediatek/bluetooth/map/mime/MimeBase;-><init>(Landroid/content/ContentResolver;I)V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_ID:I

    .line 73
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_SUBJECT:I

    .line 74
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_TIMESTATP:I

    .line 75
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_FROM:I

    .line 76
    const/4 v0, 0x4

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_REPLAY:I

    .line 77
    const/4 v0, 0x5

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_TO:I

    .line 78
    const/4 v0, 0x6

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_FLAG_ATTACHMENT:I

    .line 79
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_LOADED:I

    .line 80
    const/16 v0, 0x8

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_READ:I

    .line 81
    const/16 v0, 0x9

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_MESSAGE_ID:I

    .line 82
    const/16 v0, 0xa

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_BCC:I

    .line 83
    const/16 v0, 0xb

    iput v0, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->COLUMN_CC:I

    .line 129
    iput-wide p2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    .line 130
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->loadHeaders()V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->loadBody()V

    .line 132
    invoke-direct {p0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->loadAttachment()V

    .line 133
    return-void
.end method

.method private loadAttachment()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 191
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v7, attaches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;>;"
    sget-object v0, Lcom/mediatek/bluetooth/map/Email;->ATTACHMENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/bluetooth/map/mime/EmailMime;->ATTACHMENT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 201
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no email attachment record for the id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->log(Ljava/lang/String;)V

    .line 229
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v9

    .line 198
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 205
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    new-instance v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-direct {v6, p0}, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;-><init>(Lcom/mediatek/bluetooth/map/mime/MimeBase;)V

    .line 207
    .local v6, attach:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    .line 208
    iget-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFileName:Ljava/lang/String;

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mName:Ljava/lang/String;

    .line 209
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMimeType:Ljava/lang/String;

    .line 210
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mSize:J

    .line 211
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentId:Ljava/lang/String;

    .line 212
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 213
    .local v10, uriStr:Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 214
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    .line 218
    :goto_2
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mMessageKey:J

    .line 221
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mEncoding:Ljava/lang/String;

    .line 222
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContent:Ljava/lang/String;

    .line 223
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mFlags:I

    .line 224
    const/16 v0, 0xb

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentBytes:[B

    .line 225
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 216
    :cond_1
    iput-object v11, v6, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;->mContentUri:Landroid/net/Uri;

    goto :goto_2

    .line 227
    .end local v6           #attach:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;
    .end local v10           #uriStr:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 228
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mAttachment:[Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeAttachment;

    goto :goto_0
.end method

.method private loadBody()V
    .locals 8

    .prologue
    .line 168
    sget-object v0, Lcom/mediatek/bluetooth/map/Email;->BODY_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/bluetooth/map/mime/EmailMime;->BODY_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 177
    .local v6, bodyCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no email body record for the id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->log(Ljava/lang/String;)V

    .line 188
    .end local v6           #bodyCursor:Landroid/database/Cursor;
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v7

    .line 174
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v6       #bodyCursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mTextContent:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mHtmlContent:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mTextReply:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mHtmlReply:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mBody:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;

    const/4 v2, 0x4

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeBody;->mIntroText:Ljava/lang/String;

    .line 187
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private loadHeaders()V
    .locals 8

    .prologue
    .line 136
    sget-object v0, Lcom/mediatek/bluetooth/map/Email;->MESSAGE_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 138
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "mContentResolver is null"

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->log(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 143
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/mediatek/bluetooth/map/mime/EmailMime;->MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 149
    .local v7, messageCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no email message record for the id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/bluetooth/map/mime/EmailMime;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v7           #messageCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 146
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #messageCursor:Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    iget-wide v2, p0, Lcom/mediatek/bluetooth/map/mime/EmailMime;->mId:J

    iput-wide v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mId:J

    .line 154
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/16 v2, 0xa

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mBcc:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/16 v2, 0xb

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mCc:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mSubject:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTo:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mTimeStamp:J

    .line 159
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/4 v2, 0x4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mReplyTo:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/4 v2, 0x3

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mFrom:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const-string v2, "1.0"

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mVersion:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/mediatek/bluetooth/map/mime/MimeBase;->mHeaders:Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;

    const/16 v2, 0x9

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/mediatek/bluetooth/map/mime/MimeBase$MimeHeaders;->mMsgId:Ljava/lang/String;

    .line 163
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 231
    if-eqz p1, :cond_0

    .line 232
    const-string v0, "MimeBase"

    invoke-static {v0, p1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method
