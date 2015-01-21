.class public Lcom/android/exchange/provider/ExchangeDirectoryProvider;
.super Landroid/content/ContentProvider;
.source "ExchangeDirectoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;,
        Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTACT_ID:I = 0x1

.field private static final DEFAULT_LOOKUP_LIMIT:I = 0x32

.field public static final EXCHANGE_GAL_AUTHORITY:Ljava/lang/String; = "com.android.exchange.directory.provider"

.field private static final GAL_BASE:I = 0x0

.field private static final GAL_CONTACT:I = 0x2

.field private static final GAL_CONTACT_WITH_ID:I = 0x3

.field private static final GAL_DIRECTORIES:I = 0x0

.field private static final GAL_EMAIL_FILTER:I = 0x4

.field private static final GAL_FILTER:I = 0x1

.field static final sAccountIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sAccountIdMap:Ljava/util/HashMap;

    .line 80
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "directories"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/filter/*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/entities"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "contacts/lookup/*/#/entities"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.exchange.directory.provider"

    const-string v2, "data/emails/filter/*"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 105
    return-void
.end method

.method public static removeCache(J)V
    .locals 5
    .parameter "accountId"

    .prologue
    .line 206
    sget-object v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 207
    .local v1, entrySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    .local v0, en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-nez v3, :cond_0

    .line 209
    sget-object v3, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sAccountIdMap:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v0           #en:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;
    .locals 18
    .parameter "projection"
    .parameter "galResult"

    .prologue
    .line 364
    const/4 v6, -0x1

    .line 365
    .local v6, displayNameIndex:I
    const/4 v1, -0x1

    .line 366
    .local v1, alternateDisplayNameIndex:I
    const/4 v8, -0x1

    .line 367
    .local v8, emailIndex:I
    const/4 v12, -0x1

    .line 368
    .local v12, idIndex:I
    const/4 v14, -0x1

    .line 371
    .local v14, lookupIndex:I
    const/4 v7, -0x1

    .line 373
    .local v7, displayNameSource:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_7

    .line 374
    aget-object v2, p1, v11

    .line 375
    .local v2, column:Ljava/lang/String;
    const-string v16, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    const-string v16, "display_name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 377
    :cond_0
    move v6, v11

    .line 373
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 378
    :cond_2
    const-string v16, "display_name_alt"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 379
    move v1, v11

    goto :goto_1

    .line 380
    :cond_3
    const-string v16, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 381
    move v8, v11

    goto :goto_1

    .line 382
    :cond_4
    const-string v16, "_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 383
    move v12, v11

    goto :goto_1

    .line 384
    :cond_5
    const-string v16, "lookup"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 385
    move v14, v11

    goto :goto_1

    .line 386
    :cond_6
    const-string v16, "display_name_source"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 387
    move v7, v11

    goto :goto_1

    .line 391
    .end local v2           #column:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/Object;

    .line 396
    .local v15, row:[Ljava/lang/Object;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 397
    .local v4, cursor:Landroid/database/MatrixCursor;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 398
    .local v3, count:I
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_12

    .line 399
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/exchange/provider/GalResult;->galData:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/exchange/provider/GalResult$GalData;

    .line 400
    .local v10, galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    const-string v16, "firstName"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, firstName:Ljava/lang/String;
    const-string v16, "lastName"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 402
    .local v13, lastName:Ljava/lang/String;
    const-string v16, "displayName"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, displayName:Ljava/lang/String;
    if-nez v5, :cond_8

    .line 405
    if-eqz v9, :cond_f

    if-eqz v13, :cond_f

    .line 406
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 413
    :cond_8
    :goto_3
    const-string v16, "displayName"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v5}, Lcom/android/exchange/provider/GalResult$GalData;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v6, v0, :cond_9

    .line 416
    aput-object v5, v15, v6

    .line 418
    :cond_9
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v1, v0, :cond_a

    .line 421
    if-eqz v9, :cond_11

    if-eqz v13, :cond_11

    .line 422
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v1

    .line 427
    :cond_a
    :goto_4
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v8, v0, :cond_b

    .line 428
    const-string v16, "emailAddress"

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/android/exchange/provider/GalResult$GalData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v8

    .line 430
    :cond_b
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v12, v0, :cond_c

    .line 431
    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v12

    .line 433
    :cond_c
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v14, v0, :cond_d

    .line 436
    invoke-virtual {v10}, Lcom/android/exchange/provider/GalResult$GalData;->toPackedString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    .line 438
    :cond_d
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v7, v0, :cond_e

    .line 439
    const/16 v16, 0x28

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v15, v7

    .line 441
    :cond_e
    invoke-virtual {v4, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 398
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .line 407
    :cond_f
    if-eqz v9, :cond_10

    .line 408
    move-object v5, v9

    goto :goto_3

    .line 409
    :cond_10
    if-eqz v13, :cond_8

    .line 410
    move-object v5, v13

    goto :goto_3

    .line 424
    :cond_11
    aput-object v5, v15, v1

    goto :goto_4

    .line 443
    .end local v5           #displayName:Ljava/lang/String;
    .end local v9           #firstName:Ljava/lang/String;
    .end local v10           #galDataRow:Lcom/android/exchange/provider/GalResult$GalData;
    .end local v13           #lastName:Ljava/lang/String;
    :cond_12
    return-object v4
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "accountName"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v6, 0x0

    .line 189
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 190
    .local v8, accountId:Ljava/lang/Long;
    if-nez v8, :cond_0

    .line 191
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "emailAddress=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v6

    const/4 v5, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    .line 194
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sAccountIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_0
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 448
    sget-object v1, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 449
    .local v0, match:I
    packed-switch v0, :pswitch_data_0

    .line 453
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 451
    :pswitch_0
    const-string v1, "vnd.android.cursor.item/contact"

    goto :goto_0

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 463
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 45
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 218
    sget-object v11, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v41

    .line 224
    .local v41, match:I
    packed-switch v41, :pswitch_data_0

    .line 360
    :goto_0
    const/4 v4, 0x0

    :cond_0
    :goto_1
    return-object v4

    .line 227
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    const-string v12, "com.android.exchange"

    invoke-virtual {v11, v12}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v24

    .line 229
    .local v24, accounts:[Landroid/accounts/Account;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 230
    .local v4, cursor:Landroid/database/MatrixCursor;
    if-eqz v24, :cond_0

    .line 231
    move-object/from16 v25, v24

    .local v25, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v38, v0

    .local v38, len$:I
    const/16 v37, 0x0

    .local v37, i$:I
    :goto_2
    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    aget-object v20, v25, v37

    .line 232
    .local v20, account:Landroid/accounts/Account;
    move-object/from16 v0, p2

    array-length v11, v0

    new-array v0, v11, [Ljava/lang/Object;

    move-object/from16 v44, v0

    .line 234
    .local v44, row:[Ljava/lang/Object;
    const/16 v36, 0x0

    .local v36, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v11, v0

    move/from16 v0, v36

    if-ge v0, v11, :cond_9

    .line 235
    aget-object v30, p2, v36

    .line 236
    .local v30, column:Ljava/lang/String;
    const-string v11, "accountName"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 237
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v44, v36

    .line 234
    :cond_1
    :goto_4
    add-int/lit8 v36, v36, 0x1

    goto :goto_3

    .line 238
    :cond_2
    const-string v11, "accountType"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 239
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v11, v44, v36

    goto :goto_4

    .line 240
    :cond_3
    const-string v11, "typeResourceId"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 241
    const/16 v27, 0x0

    .line 242
    .local v27, bundle:Landroid/os/Bundle;
    const-string v23, "com.android.exchange"

    .line 243
    .local v23, accountType:Ljava/lang/String;
    new-instance v11, Lcom/android/emailcommon/service/AccountServiceProxy;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/emailcommon/service/AccountServiceProxy;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lcom/android/emailcommon/service/AccountServiceProxy;->getConfigurationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v27

    .line 246
    const v32, 0x7f050002

    .line 247
    .local v32, exchangeName:I
    if-eqz v27, :cond_4

    const-string v11, "com.android.email.EXCHANGE_CONFIGURATION_USE_ALTERNATE_STRINGS"

    const/4 v12, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_4

    .line 250
    const v32, 0x7f050001

    .line 252
    :cond_4
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto :goto_4

    .line 253
    .end local v23           #accountType:Ljava/lang/String;
    .end local v27           #bundle:Landroid/os/Bundle;
    .end local v32           #exchangeName:I
    :cond_5
    const-string v11, "displayName"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 256
    move-object/from16 v0, v20

    iget-object v9, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 257
    .local v9, accountName:Ljava/lang/String;
    const/16 v11, 0x40

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v26

    .line 258
    .local v26, atIndex:I
    const/4 v11, -0x1

    move/from16 v0, v26

    if-eq v0, v11, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, v26

    if-ge v0, v11, :cond_6

    .line 259
    add-int/lit8 v11, v26, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v34

    .line 261
    .local v34, firstLetter:C
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v26, 0x2

    invoke-virtual {v9, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_4

    .line 263
    .end local v34           #firstLetter:C
    :cond_6
    move-object/from16 v0, v20

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v44, v36

    goto/16 :goto_4

    .line 265
    .end local v9           #accountName:Ljava/lang/String;
    .end local v26           #atIndex:I
    :cond_7
    const-string v11, "exportSupport"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 266
    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_4

    .line 267
    :cond_8
    const-string v11, "shortcutSupport"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 268
    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v44, v36

    goto/16 :goto_4

    .line 271
    .end local v30           #column:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 231
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_2

    .line 279
    .end local v4           #cursor:Landroid/database/MatrixCursor;
    .end local v20           #account:Landroid/accounts/Account;
    .end local v24           #accounts:[Landroid/accounts/Account;
    .end local v25           #arr$:[Landroid/accounts/Account;
    .end local v36           #i:I
    .end local v37           #i$:I
    .end local v38           #len$:I
    .end local v44           #row:[Ljava/lang/Object;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    .line 281
    .local v33, filter:Ljava/lang/String;
    if-eqz v33, :cond_a

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_b

    .line 282
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 285
    :cond_b
    const-string v11, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 286
    .restart local v9       #accountName:Ljava/lang/String;
    if-nez v9, :cond_c

    .line 287
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 291
    :cond_c
    const-string v11, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 292
    .local v40, limitString:Ljava/lang/String;
    const/16 v39, 0x32

    .line 293
    .local v39, limit:I
    if-eqz v40, :cond_d

    .line 295
    :try_start_0
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v39

    .line 299
    :goto_5
    if-gtz v39, :cond_d

    .line 300
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Limit not valid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v40

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 296
    :catch_0
    move-exception v31

    .line 297
    .local v31, e:Ljava/lang/NumberFormatException;
    const/16 v39, 0x0

    goto :goto_5

    .line 304
    .end local v31           #e:Ljava/lang/NumberFormatException;
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 307
    .local v28, callingId:J
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->getAccountIdByName(Landroid/content/Context;Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v21

    .line 308
    .local v21, accountId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v21, v11

    if-nez v11, :cond_e

    .line 310
    const/4 v4, 0x0

    .line 324
    :goto_6
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_1

    .line 314
    :cond_e
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">>>> exchange search contacts with filter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    move-wide/from16 v0, v21

    move-object/from16 v2, v33

    move/from16 v3, v39

    invoke-static {v11, v0, v1, v2, v3}, Lcom/android/exchange/EasSyncService;->searchGal(Landroid/content/Context;JLjava/lang/String;I)Lcom/android/exchange/provider/GalResult;

    move-result-object v35

    .line 317
    .local v35, galResult:Lcom/android/exchange/provider/GalResult;
    if-eqz v35, :cond_f

    .line 318
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ">>>> exchange search contacts got "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v35

    iget v12, v0, Lcom/android/exchange/provider/GalResult;->total:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/android/exchange/provider/ExchangeDirectoryProvider;->buildGalResultCursor([Ljava/lang/String;Lcom/android/exchange/provider/GalResult;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_6

    .line 321
    :cond_f
    const-string v11, ">>>> exchange search contacts got nothing"

    invoke-static {v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v21           #accountId:J
    .end local v35           #galResult:Lcom/android/exchange/provider/GalResult;
    :catchall_0
    move-exception v11

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v11

    .line 331
    .end local v9           #accountName:Ljava/lang/String;
    .end local v28           #callingId:J
    .end local v33           #filter:Ljava/lang/String;
    .end local v39           #limit:I
    .end local v40           #limitString:Ljava/lang/String;
    :pswitch_2
    const-string v11, "account_name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 332
    .restart local v9       #accountName:Ljava/lang/String;
    if-nez v9, :cond_10

    .line 333
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 336
    :cond_10
    new-instance v5, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;-><init>([Ljava/lang/String;)V

    .line 337
    .local v5, galProjection:Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;
    new-instance v4, Landroid/database/MatrixCursor;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 339
    .restart local v4       #cursor:Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v42

    .line 340
    .local v42, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x2

    move-object/from16 v0, v42

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 341
    .local v8, lookupKey:Ljava/lang/String;
    const/4 v11, 0x3

    move/from16 v0, v41

    if-ne v0, v11, :cond_11

    const/4 v11, 0x3

    move-object/from16 v0, v42

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 344
    .local v6, contactId:J
    :goto_7
    new-instance v43, Lcom/android/emailcommon/mail/PackedString;

    move-object/from16 v0, v43

    invoke-direct {v0, v8}, Lcom/android/emailcommon/mail/PackedString;-><init>(Ljava/lang/String;)V

    .line 345
    .local v43, ps:Lcom/android/emailcommon/mail/PackedString;
    const-string v11, "displayName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 346
    .local v10, displayName:Ljava/lang/String;
    const-string v11, "emailAddress"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v4 .. v11}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addEmailAddress(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/16 v18, 0x1

    const-string v11, "homePhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 350
    const/16 v18, 0x3

    const-string v11, "workPhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    const/16 v18, 0x2

    const-string v11, "mobilePhone"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v9

    move-object/from16 v16, v10

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addPhoneRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 354
    const-string v11, "firstName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v11, "lastName"

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/android/emailcommon/mail/PackedString;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object v11, v4

    move-object v12, v5

    move-wide v13, v6

    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v19}, Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalContactRow;->addNameRow(Landroid/database/MatrixCursor;Lcom/android/exchange/provider/ExchangeDirectoryProvider$GalProjection;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 341
    .end local v6           #contactId:J
    .end local v10           #displayName:Ljava/lang/String;
    .end local v43           #ps:Lcom/android/emailcommon/mail/PackedString;
    :cond_11
    const-wide/16 v6, 0x1

    goto :goto_7

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 468
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
