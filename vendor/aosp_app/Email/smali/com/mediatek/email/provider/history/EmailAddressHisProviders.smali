.class public Lcom/mediatek/email/provider/history/EmailAddressHisProviders;
.super Landroid/content/ContentProvider;
.source "EmailAddressHisProviders.java"


# static fields
.field private static final ADDRESS:I = 0x0

.field private static final ADDRESS_BASE:I = 0x0

.field private static final ADDRESS_FILTER:I = 0x1

.field private static final ADDRESS_ID:I = 0x2

.field private static final BASE_SHIFT:I = 0xc

.field private static final CONTACT_FILTER:I = 0x3

.field protected static final DATABASE_NAME:Ljava/lang/String; = "EmailAddressHisProviders.db"

.field private static final DEFAULT_LOOKUP_LIMIT:Ljava/lang/String; = "50"

.field private static final DIRECTORIES:I = 0x5

.field private static final EMAIL_FILTER:I = 0x4

.field private static final MAIL_ADDRESS_SPLIT_PATTERN:Ljava/lang/String; = ",|;"

.field public static final MIME_ADDRESS:Ljava/lang/String; = "vnd.android.cursor.dir/eah-address"

.field private static final TABLE_NAMES:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EmailAddressHisProvider"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDb:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "Address"

    aput-object v2, v1, v3

    sput-object v1, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    .line 50
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->sURIMatcher:Landroid/content/UriMatcher;

    .line 55
    sget-object v0, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->sURIMatcher:Landroid/content/UriMatcher;

    .line 57
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "address"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 59
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "address/filter/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "address/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    const-string v1, "com.mediatek.email.provider.history"

    const-string v2, "directories"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static findExistingAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 9
    .parameter "context"
    .parameter "allowAddress"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 335
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 336
    .local v7, isExsit:Ljava/lang/Boolean;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 337
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 339
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 340
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 352
    :goto_0
    return-object v1

    .line 343
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 350
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v1, v7

    .line 352
    goto :goto_0

    .line 350
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private static findMatch(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "methodName"

    .prologue
    .line 322
    sget-object v1, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 323
    .local v0, match:I
    if-gez v0, :cond_0

    .line 324
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    :cond_0
    const-string v1, "EmailAddressHisProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", match is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return v0
.end method

.method private whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "selection"

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 287
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    if-eqz p2, :cond_0

    .line 290
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method buildResultCursor([Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 15
    .parameter "projection"
    .parameter "addressCursor"

    .prologue
    .line 238
    const/4 v4, -0x1

    .line 239
    .local v4, displayNameIndex:I
    const/4 v6, -0x1

    .line 240
    .local v6, emailIndex:I
    const/4 v10, -0x1

    .line 241
    .local v10, idIndex:I
    const/4 v11, -0x1

    .line 242
    .local v11, lookupIndex:I
    const/4 v5, -0x1

    .line 244
    .local v5, displayNameSource:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v13, v0

    if-ge v7, v13, :cond_6

    .line 245
    aget-object v2, p1, v7

    .line 246
    .local v2, column:Ljava/lang/String;
    const-string v13, "display_name"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "display_name"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 248
    :cond_0
    move v4, v7

    .line 244
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const-string v13, "data1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 250
    move v6, v7

    goto :goto_1

    .line 251
    :cond_3
    const-string v13, "_id"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 252
    move v10, v7

    goto :goto_1

    .line 253
    :cond_4
    const-string v13, "lookup"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 254
    move v11, v7

    goto :goto_1

    .line 255
    :cond_5
    const-string v13, "display_name_source"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 256
    move v5, v7

    goto :goto_1

    .line 260
    .end local v2           #column:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p1

    array-length v13, v0

    new-array v12, v13, [Ljava/lang/Object;

    .line 261
    .local v12, row:[Ljava/lang/Object;
    new-instance v3, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 262
    .local v3, cursor:Landroid/database/MatrixCursor;
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 263
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 264
    .local v8, id:J
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, address:Ljava/lang/String;
    const/4 v13, -0x1

    if-eq v4, v13, :cond_7

    .line 266
    const-string v13, "@"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v12, v4

    .line 268
    :cond_7
    const/4 v13, -0x1

    if-eq v6, v13, :cond_8

    .line 269
    aput-object v1, v12, v6

    .line 271
    :cond_8
    const/4 v13, -0x1

    if-eq v10, v13, :cond_9

    .line 272
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v12, v10

    .line 274
    :cond_9
    const/4 v13, -0x1

    if-eq v11, v13, :cond_a

    .line 275
    sget-object v13, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    aput-object v13, v12, v11

    .line 277
    :cond_a
    const/4 v13, -0x1

    if-eq v5, v13, :cond_b

    .line 278
    const/16 v13, 0x28

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v5

    .line 280
    :cond_b
    invoke-virtual {v3, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 282
    .end local v1           #address:Ljava/lang/String;
    .end local v8           #id:J
    :cond_c
    return-object v3
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 299
    const-string v6, "delete"

    invoke-static {p1, v6}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v3

    .line 300
    .local v3, match:I
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, v0}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 302
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v5, v3, 0xc

    .line 303
    .local v5, table:I
    const/4 v4, -0x1

    .line 304
    .local v4, result:I
    const-string v2, "0"

    .line 305
    .local v2, id:Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 311
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 307
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #id:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 308
    .restart local v2       #id:Ljava/lang/String;
    sget-object v6, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, v2, p2}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 313
    return v4

    .line 305
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3
    .parameter "context"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v1

    .line 71
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mediatek/email/provider/history/DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EmailAddressHisProviders.db"

    invoke-direct {v0, v1, v2}, Lcom/mediatek/email/provider/history/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    .local v0, DbHelper:Lcom/mediatek/email/provider/history/DatabaseHelper;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 73
    iget-object v1, p0, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0           #DbHelper:Lcom/mediatek/email/provider/history/DatabaseHelper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 78
    const-string v1, "getType"

    invoke-static {p1, v1}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 83
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 81
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/eah-address"

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 89
    const-string v17, "insert"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v14

    .line 90
    .local v14, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 91
    .local v4, context:Landroid/content/Context;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 92
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v16, v14, 0xc

    .line 93
    .local v16, table:I
    const/4 v15, 0x0

    .line 94
    .local v15, resultUri:Landroid/net/Uri;
    const-string v17, "emailAddress"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, emailAddress:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 96
    const/16 v17, 0x0

    .line 128
    :goto_0
    return-object v17

    .line 98
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 99
    const-string v17, ",|;"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, emailPart:[Ljava/lang/String;
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v12, v3

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v12, :cond_3

    aget-object v7, v3, v11

    .line 102
    .local v7, dis_emailAddress:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/utility/Utility;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 103
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v7}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->findExistingAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_1

    .line 105
    :try_start_0
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 106
    .local v5, cv:Landroid/content/ContentValues;
    const-string v17, "emailAddress"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    packed-switch v14, :pswitch_data_0

    .line 113
    new-instance v17, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unknown URL "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v5           #cv:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 117
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    throw v8

    .line 109
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v5       #cv:Landroid/content/ContentValues;
    :pswitch_0
    :try_start_1
    sget-object v17, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v17, v17, v16

    const-string v18, "emailAddress"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 110
    .local v13, longId:Ljava/lang/Long;
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v15

    .line 100
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v13           #longId:Ljava/lang/Long;
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 120
    :cond_1
    const/4 v15, 0x0

    goto :goto_2

    .line 124
    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .end local v7           #dis_emailAddress:Ljava/lang/String;
    :cond_3
    move-object/from16 v17, v15

    .line 128
    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 30
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 139
    const/16 v19, 0x0

    .line 140
    .local v19, c:Landroid/database/Cursor;
    const-string v4, "query"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->findMatch(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v27

    .line 141
    .local v27, match:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 142
    .local v21, context:Landroid/content/Context;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->getDatabase(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 143
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    shr-int/lit8 v29, v27, 0xc

    .line 147
    .local v29, table:I
    packed-switch v27, :pswitch_data_0

    .line 224
    :try_start_0
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :catch_0
    move-exception v23

    .line 227
    .local v23, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    throw v23
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v23           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-nez v19, :cond_0

    .line 230
    const-string v5, "EmailAddressHisProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Query returning null for uri: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", selection: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    throw v4

    .line 149
    :pswitch_0
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    .line 150
    .local v24, filter:Ljava/lang/String;
    if-eqz v24, :cond_1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_3

    .line 151
    :cond_1
    const/16 v22, 0x0

    .line 229
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v24           #filter:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v22

    .line 153
    .restart local v24       #filter:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string p3, "emailAddress like ? escape \'\\\'"

    .line 154
    const-string v4, "_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 155
    const-string v4, "_"

    const-string v5, "\\_"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 159
    :cond_4
    :goto_1
    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v4

    .line 160
    .local v7, selectionArg:[Ljava/lang/String;
    sget-object v4, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v4, v4, v29

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v19

    .line 229
    .end local v7           #selectionArg:[Ljava/lang/String;
    .end local v24           #filter:Ljava/lang/String;
    :goto_2
    if-nez v19, :cond_5

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v22, v19

    .line 234
    goto :goto_0

    .line 156
    .restart local v24       #filter:Ljava/lang/String;
    :cond_6
    :try_start_4
    const-string v4, "%"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 157
    const-string v4, "%"

    const-string v5, "\\%"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    goto :goto_1

    .line 164
    .end local v24           #filter:Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 165
    .local v26, id:Ljava/lang/String;
    sget-object v4, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v4, v29

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->whereWithId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v3

    move-object/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 167
    goto :goto_2

    .line 169
    .end local v26           #id:Ljava/lang/String;
    :pswitch_2
    sget-object v4, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v4, v29

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v8, v3

    move-object/from16 v10, p2

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v19

    .line 171
    goto :goto_2

    .line 173
    :pswitch_3
    const/16 v22, 0x0

    .line 229
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :pswitch_4
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v24

    .line 176
    .restart local v24       #filter:Ljava/lang/String;
    if-eqz v24, :cond_7

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_8

    .line 177
    :cond_7
    const/16 v22, 0x0

    .line 229
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_8
    :try_start_6
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 181
    .local v16, limitString:Ljava/lang/String;
    if-nez v16, :cond_9

    .line 182
    const-string v16, "50"

    .line 184
    :cond_9
    const-string v11, "emailAddress like ?"

    .line 185
    .local v11, dbSelection:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    .line 186
    .local v12, dbSelectionArgs:[Ljava/lang/String;
    sget-object v4, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v9, v4, v29

    sget-object v10, Lcom/mediatek/email/provider/history/EmailAddress;->CONTENT_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 188
    if-nez v19, :cond_a

    .line 189
    const-string v4, "EmailAddressHisProvider"

    const-string v5, "EMAIL_FILTER return null becausse c is null."

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 190
    const/16 v22, 0x0

    .line 229
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 193
    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/email/provider/history/EmailAddressHisProviders;->buildResultCursor([Ljava/lang/String;Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v22

    .line 195
    :try_start_8
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_0

    .line 229
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :catchall_1
    move-exception v4

    :try_start_9
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    throw v4

    .line 198
    .end local v11           #dbSelection:Ljava/lang/String;
    .end local v12           #dbSelectionArgs:[Ljava/lang/String;
    .end local v16           #limitString:Ljava/lang/String;
    .end local v24           #filter:Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v18

    .line 199
    .local v18, accounts:[Landroid/accounts/Account;
    new-instance v22, Landroid/database/MatrixCursor;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 200
    .local v22, cursor:Landroid/database/MatrixCursor;
    if-eqz v18, :cond_12

    move-object/from16 v0, v18

    array-length v4, v0

    if-lez v4, :cond_12

    .line 201
    const/4 v4, 0x0

    aget-object v17, v18, v4

    .line 202
    .local v17, account:Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v4, v0

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v28, v0

    .line 203
    .local v28, row:[Ljava/lang/Object;
    const/16 v25, 0x0

    .local v25, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v4, v0

    move/from16 v0, v25

    if-ge v0, v4, :cond_11

    .line 204
    aget-object v20, p2, v25

    .line 205
    .local v20, column:Ljava/lang/String;
    const-string v4, "accountName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 206
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v28, v25

    .line 203
    :cond_b
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 207
    :cond_c
    const-string v4, "accountType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 208
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v28, v25

    goto :goto_4

    .line 209
    :cond_d
    const-string v4, "typeResourceId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 210
    const v4, 0x7f080074

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v28, v25

    goto :goto_4

    .line 211
    :cond_e
    const-string v4, "displayName"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 212
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v28, v25

    goto :goto_4

    .line 213
    :cond_f
    const-string v4, "exportSupport"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 214
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v28, v25

    goto :goto_4

    .line 215
    :cond_10
    const-string v4, "shortcutSupport"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 216
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v28, v25

    goto :goto_4

    .line 219
    .end local v20           #column:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 229
    .end local v17           #account:Landroid/accounts/Account;
    .end local v25           #i:I
    .end local v28           #row:[Ljava/lang/Object;
    :cond_12
    if-nez v19, :cond_2

    .line 230
    const-string v4, "EmailAddressHisProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Query returning null for uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
