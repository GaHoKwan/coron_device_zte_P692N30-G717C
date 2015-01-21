.class public Lcom/isw/android/corp/util/DotInfoProvider;
.super Landroid/content/ContentProvider;
.source "DotInfoProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.isw.android.corp.util.DotInfoProvider"

.field private static final COMPANY_INFO_BY_SEARCH:I = 0x4

.field private static final COMPANY_INFO_PHONE:I = 0x3

.field private static final CONTACT_URL:I = 0x1

.field private static final DOT_INFO_PHONE:I = 0x5

.field private static final DOT_URL_INFO:I = 0x2

.field private static final ISW_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DotInfoProvider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 37
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "iswData"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 38
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "contactUrl"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "dotUrlInfo"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 40
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "companyInfo/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "companyInfoBySearch"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.isw.android.corp.util.DotInfoProvider"

    const-string v2, "dotInfo/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private convertImageStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "dotfile"

    .prologue
    .line 433
    const-string v5, ""

    .line 434
    .local v5, str:Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, is:Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 438
    .local v0, bytes:[B
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 440
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v6, 0x2

    if-lt v2, v6, :cond_1

    .line 443
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 444
    const/4 v3, 0x0

    .line 445
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    const/4 v6, 0x0

    :try_start_2
    invoke-static {v0, v6}, Lcom/isw/android/corp/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 451
    if-eqz v3, :cond_0

    .line 452
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 453
    const/4 v3, 0x0

    .line 460
    .end local v2           #i:I
    :cond_0
    :goto_1
    return-object v5

    .line 441
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #i:I
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    :try_start_4
    aget-byte v6, v0, v2

    xor-int/lit8 v6, v6, 0x12

    int-to-byte v6, v6

    aput-byte v6, v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 446
    .end local v2           #i:I
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 447
    .local v1, ex:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v6, "DotInfoProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 451
    if-eqz v3, :cond_0

    .line 452
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 453
    const/4 v3, 0x0

    goto :goto_1

    .line 455
    :catch_1
    move-exception v1

    .line 456
    const-string v6, "DotInfoProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 449
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 451
    :goto_3
    if-eqz v3, :cond_2

    .line 452
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 453
    const/4 v3, 0x0

    .line 458
    :cond_2
    :goto_4
    throw v6

    .line 455
    :catch_2
    move-exception v1

    .line 456
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v7, "DotInfoProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "ex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 455
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #i:I
    :catch_3
    move-exception v1

    .line 456
    .restart local v1       #ex:Ljava/lang/Exception;
    const-string v6, "DotInfoProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 449
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_3

    .line 446
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 43
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 75
    sget-object v40, Lcom/isw/android/corp/util/DotInfoProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v40

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v34

    .line 77
    .local v34, match:I
    packed-switch v34, :pswitch_data_0

    .line 274
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V

    .line 275
    const-string v40, "DotInfoProvider"

    const-string v41, "dot info by phone... or default..."

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v36, ""

    .line 277
    .local v36, phone:Ljava/lang/String;
    const-string v23, ""

    .line 278
    .local v23, dotid:Ljava/lang/String;
    const-string v24, ""

    .line 279
    .local v24, dotimg:Ljava/lang/String;
    const-string v14, ""

    .line 280
    .local v14, companyid:Ljava/lang/String;
    const-string v15, ""

    .line 282
    .local v15, companyimg:Ljava/lang/String;
    const-string v19, ""

    .line 283
    .local v19, dotEnable:Ljava/lang/String;
    const-string v20, ""

    .line 284
    .local v20, dotIconUrl:Ljava/lang/String;
    const-string v25, ""

    .line 285
    .local v25, dotmatch:Ljava/lang/String;
    const-string v18, ""

    .line 286
    .local v18, dotCommUrl:Ljava/lang/String;
    const-string v21, ""

    .line 287
    .local v21, dotMediaUrl:Ljava/lang/String;
    const-string v22, ""

    .line 288
    .local v22, dotModel:Ljava/lang/String;
    const-string v26, ""

    .line 289
    .local v26, dottips:Ljava/lang/String;
    const-string v7, ""

    .line 290
    .local v7, callcenternumber:Ljava/lang/String;
    const-string v8, ""

    .line 291
    .local v8, callcentertips:Ljava/lang/String;
    const-string v6, ""

    .line 293
    .local v6, callcenterEnable:Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[query] uri: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_1e

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v36

    .line 300
    :cond_0
    :goto_0
    invoke-static/range {v36 .. v36}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 302
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "phone number: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v5

    .line 305
    .local v5, bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 307
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 308
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "dotEnable"

    const/16 v42, 0x1

    invoke-static/range {v41 .. v42}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 309
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 312
    :cond_1
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotEnable: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 315
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 316
    invoke-static/range {v23 .. v23}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_2

    const-string v40, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    if-lez v40, :cond_2

    .line 317
    const-string v40, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    add-int/lit8 v40, v40, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 318
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/isw/android/corp/util/DotInfoProvider;->convertImageStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 322
    :cond_2
    iget-object v14, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 325
    invoke-static {v14}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_3

    const-string v40, "/"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    if-lez v40, :cond_3

    .line 326
    const-string v40, "/"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 327
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/isw/android/corp/util/DotInfoProvider;->convertImageStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 331
    :cond_3
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 332
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 333
    const-string v40, "dotIconUrl"

    .line 334
    const-string v41, "http://media.zqlx.com:9100/data/doticon"

    .line 333
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 335
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    .line 338
    :cond_4
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 339
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 340
    const-string v40, "dotmatch"

    .line 341
    const-string v41, "winksidotcoupon,zdwsdotcoupon"

    .line 340
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 342
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    .line 345
    :cond_5
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 346
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_6

    .line 347
    const-string v40, "dotCommUrl"

    .line 348
    const-string v41, "http://a.zqlx.com:8200/dotinf"

    .line 347
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 349
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    .line 352
    :cond_6
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 353
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_7

    .line 354
    const-string v40, "dotMediaUrl"

    .line 355
    const-string v41, "http://a.zqlx.com:8200/dldi"

    .line 354
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 356
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    .line 359
    :cond_7
    const-string v40, "true"

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 360
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 361
    const-string v40, ""

    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 362
    const-string v40, "dottips"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 363
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    .line 365
    :cond_8
    const-string v40, "dotModel"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 368
    :cond_9
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v6, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    .line 369
    const-string v40, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_a

    .line 370
    const-string v40, "callcenterEnable"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 371
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iput-object v6, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    .line 374
    :cond_a
    const-string v40, "true"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 375
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v7, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    .line 376
    const-string v40, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_b

    .line 377
    const-string v40, "callcenternumber"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 378
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iput-object v7, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    .line 380
    :cond_b
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v8, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    .line 381
    const-string v40, ""

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 382
    const-string v40, "callcentertips"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 383
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iput-object v8, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    .line 387
    :cond_c
    const/16 v40, 0xf

    move/from16 v0, v40

    new-array v9, v0, [Ljava/lang/String;

    const/16 v40, 0x0

    .line 388
    const-string v41, "PHONE"

    aput-object v41, v9, v40

    const/16 v40, 0x1

    const-string v41, "NAME"

    aput-object v41, v9, v40

    const/16 v40, 0x2

    const-string v41, "INFO"

    aput-object v41, v9, v40

    const/16 v40, 0x3

    .line 389
    const-string v41, "DOTID"

    aput-object v41, v9, v40

    const/16 v40, 0x4

    const-string v41, "DOTIMG"

    aput-object v41, v9, v40

    const/16 v40, 0x5

    const-string v41, "DOTICONURL"

    aput-object v41, v9, v40

    const/16 v40, 0x6

    .line 390
    const-string v41, "DOTMATCH"

    aput-object v41, v9, v40

    const/16 v40, 0x7

    const-string v41, "DOTCOMMURL"

    aput-object v41, v9, v40

    const/16 v40, 0x8

    const-string v41, "DOTMEDIAURL"

    aput-object v41, v9, v40

    const/16 v40, 0x9

    .line 391
    const-string v41, "COMPANYID"

    aput-object v41, v9, v40

    const/16 v40, 0xa

    const-string v41, "COMPANYIMG"

    aput-object v41, v9, v40

    const/16 v40, 0xb

    const-string v41, "dottips"

    aput-object v41, v9, v40

    const/16 v40, 0xc

    const-string v41, "dotmodel"

    aput-object v41, v9, v40

    const/16 v40, 0xd

    .line 392
    const-string v41, "callcenternumber"

    aput-object v41, v9, v40

    const/16 v40, 0xe

    const-string v41, "callcentertips"

    aput-object v41, v9, v40

    .line 394
    .local v9, columns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 396
    .local v17, cur:Landroid/database/MatrixCursor;
    const/16 v40, 0xf

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    .line 397
    aput-object v36, v38, v40

    const/16 v40, 0x1

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v38, v40

    const/16 v40, 0x2

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v38, v40

    const/16 v40, 0x3

    aput-object v23, v38, v40

    const/16 v40, 0x4

    aput-object v24, v38, v40

    const/16 v40, 0x5

    aput-object v20, v38, v40

    const/16 v40, 0x6

    aput-object v25, v38, v40

    const/16 v40, 0x7

    .line 398
    aput-object v18, v38, v40

    const/16 v40, 0x8

    aput-object v21, v38, v40

    const/16 v40, 0x9

    aput-object v14, v38, v40

    const/16 v40, 0xa

    aput-object v15, v38, v40

    const/16 v40, 0xb

    aput-object v26, v38, v40

    const/16 v40, 0xc

    aput-object v22, v38, v40

    const/16 v40, 0xd

    .line 399
    aput-object v7, v38, v40

    const/16 v40, 0xe

    aput-object v8, v38, v40

    .line 401
    .local v38, values:[Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "phone: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "name: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "info: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotid: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotIconUrl: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotmatch: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotCommUrl: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotMediaUrl: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "companyid: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dottips: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotModel: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "callcenternumber: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "callcentertips: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 416
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 428
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v6           #callcenterEnable:Ljava/lang/String;
    .end local v7           #callcenternumber:Ljava/lang/String;
    .end local v8           #callcentertips:Ljava/lang/String;
    .end local v9           #columns:[Ljava/lang/String;
    .end local v14           #companyid:Ljava/lang/String;
    .end local v15           #companyimg:Ljava/lang/String;
    .end local v17           #cur:Landroid/database/MatrixCursor;
    .end local v18           #dotCommUrl:Ljava/lang/String;
    .end local v19           #dotEnable:Ljava/lang/String;
    .end local v20           #dotIconUrl:Ljava/lang/String;
    .end local v21           #dotMediaUrl:Ljava/lang/String;
    .end local v22           #dotModel:Ljava/lang/String;
    .end local v23           #dotid:Ljava/lang/String;
    .end local v24           #dotimg:Ljava/lang/String;
    .end local v25           #dotmatch:Ljava/lang/String;
    .end local v26           #dottips:Ljava/lang/String;
    .end local v36           #phone:Ljava/lang/String;
    .end local v38           #values:[Ljava/lang/String;
    :cond_d
    :goto_1
    return-object v17

    .line 79
    :pswitch_0
    const-string v40, "DotInfoProvider"

    const-string v41, "DotInfoProvider download isw data"

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V

    .line 81
    const/16 v17, 0x0

    goto :goto_1

    .line 84
    :pswitch_1
    const-string v40, "DotInfoProvider"

    const-string v41, "contact url..."

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v9, v0, [Ljava/lang/String;

    const/16 v40, 0x0

    const-string v41, "CONTACTURL"

    aput-object v41, v9, v40

    .line 86
    .restart local v9       #columns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 88
    .restart local v17       #cur:Landroid/database/MatrixCursor;
    const-string v40, "contactUrl"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, contactUrl:Ljava/lang/String;
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    aput-object v16, v38, v40

    .line 92
    .restart local v38       #values:[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 93
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 421
    .end local v9           #columns:[Ljava/lang/String;
    .end local v16           #contactUrl:Ljava/lang/String;
    .end local v17           #cur:Landroid/database/MatrixCursor;
    .end local v38           #values:[Ljava/lang/String;
    :catch_0
    move-exception v28

    .line 422
    .local v28, ex:Ljava/lang/Exception;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "ex: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    .line 424
    const/16 v17, 0x0

    goto :goto_1

    .line 98
    .end local v28           #ex:Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dot url info, uri: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v40, "DotInfoProvider"

    sget-object v41, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v40, "imsi"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 102
    .local v32, imsi:Ljava/lang/String;
    const-string v40, "imei"

    const-string v41, ""

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 103
    .local v31, imei:Ljava/lang/String;
    const-string v40, "adccompany"

    .line 104
    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->initADCValue()Ljava/lang/String;

    move-result-object v41

    .line 103
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, adccompany:Ljava/lang/String;
    const-string v40, "model"

    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->initModel()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 106
    .local v35, model:Ljava/lang/String;
    const-string v40, "an"

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/isw/android/corp/util/InitFuncs;->initANValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v41

    .line 106
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, an:Ljava/lang/String;
    const-string v40, "av"

    invoke-static {}, Lcom/isw/android/corp/util/InitFuncs;->initAVValue()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, av:Ljava/lang/String;
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 111
    .restart local v25       #dotmatch:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_e

    .line 112
    const-string v40, "dotmatch"

    .line 113
    const-string v41, "winksidotcoupon,zdwsdotcoupon"

    .line 112
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 114
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    .line 117
    :cond_e
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 118
    .restart local v18       #dotCommUrl:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 119
    const-string v40, "dotCommUrl"

    .line 120
    const-string v41, "http://a.zqlx.com:8200/dotinf"

    .line 119
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 121
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    .line 124
    :cond_f
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 125
    .restart local v21       #dotMediaUrl:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 126
    const-string v40, "dotMediaUrl"

    .line 127
    const-string v41, "http://a.zqlx.com:8200/dldi"

    .line 126
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 128
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    .line 131
    :cond_10
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 132
    .local v39, winks:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 133
    const-string v40, "winks"

    .line 134
    const-string v41, "http://d.zqlx.com:8100/winksWS"

    .line 133
    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 135
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 138
    :cond_11
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 139
    .local v37, updatePkgPeriod:Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_12

    .line 140
    const-string v40, "updatePkgPeriod"

    const-string v41, "14400"

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 141
    sget-object v40, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    .line 144
    :cond_12
    const/16 v40, 0xb

    move/from16 v0, v40

    new-array v9, v0, [Ljava/lang/String;

    const/16 v40, 0x0

    .line 145
    const-string v41, "IMSI"

    aput-object v41, v9, v40

    const/16 v40, 0x1

    const-string v41, "IMEI"

    aput-object v41, v9, v40

    const/16 v40, 0x2

    const-string v41, "ADCCOMPANY"

    aput-object v41, v9, v40

    const/16 v40, 0x3

    .line 146
    const-string v41, "MODEL"

    aput-object v41, v9, v40

    const/16 v40, 0x4

    const-string v41, "AN"

    aput-object v41, v9, v40

    const/16 v40, 0x5

    const-string v41, "AV"

    aput-object v41, v9, v40

    const/16 v40, 0x6

    .line 147
    const-string v41, "DOTMATCH"

    aput-object v41, v9, v40

    const/16 v40, 0x7

    const-string v41, "DOTCOMMURL"

    aput-object v41, v9, v40

    const/16 v40, 0x8

    const-string v41, "DOTMEDIAURL"

    aput-object v41, v9, v40

    const/16 v40, 0x9

    .line 148
    const-string v41, "WINKS"

    aput-object v41, v9, v40

    const/16 v40, 0xa

    const-string v41, "UPDATEPKGPERIOD"

    aput-object v41, v9, v40

    .line 151
    .restart local v9       #columns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 153
    .restart local v17       #cur:Landroid/database/MatrixCursor;
    const/16 v40, 0xb

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    .line 154
    aput-object v32, v38, v40

    const/16 v40, 0x1

    aput-object v31, v38, v40

    const/16 v40, 0x2

    aput-object v2, v38, v40

    const/16 v40, 0x3

    aput-object v35, v38, v40

    const/16 v40, 0x4

    aput-object v3, v38, v40

    const/16 v40, 0x5

    aput-object v4, v38, v40

    const/16 v40, 0x6

    aput-object v25, v38, v40

    const/16 v40, 0x7

    aput-object v18, v38, v40

    const/16 v40, 0x8

    .line 155
    aput-object v21, v38, v40

    const/16 v40, 0x9

    aput-object v39, v38, v40

    const/16 v40, 0xa

    aput-object v37, v38, v40

    .line 157
    .restart local v38       #values:[Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "imsi: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "imei: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "adccompany: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "model: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "an: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "av: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotmatch: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotCommUrl: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "dotMediaUrl: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "winks: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "updatePkgPeriod: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 170
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 425
    .end local v2           #adccompany:Ljava/lang/String;
    .end local v3           #an:Ljava/lang/String;
    .end local v4           #av:Ljava/lang/String;
    .end local v9           #columns:[Ljava/lang/String;
    .end local v17           #cur:Landroid/database/MatrixCursor;
    .end local v18           #dotCommUrl:Ljava/lang/String;
    .end local v21           #dotMediaUrl:Ljava/lang/String;
    .end local v25           #dotmatch:Ljava/lang/String;
    .end local v31           #imei:Ljava/lang/String;
    .end local v32           #imsi:Ljava/lang/String;
    .end local v35           #model:Ljava/lang/String;
    .end local v37           #updatePkgPeriod:Ljava/lang/String;
    .end local v38           #values:[Ljava/lang/String;
    .end local v39           #winks:Ljava/lang/String;
    :catch_1
    move-exception v27

    .line 426
    .local v27, err:Ljava/lang/Error;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "err: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Error;->printStackTrace()V

    .line 428
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 173
    .end local v27           #err:Ljava/lang/Error;
    :pswitch_3
    :try_start_2
    const-string v40, "DotInfoProvider"

    const-string v41, "company info..."

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v36, ""

    .line 175
    .restart local v36       #phone:Ljava/lang/String;
    const-string v10, ""

    .line 176
    .local v10, companyImg:Ljava/lang/String;
    const-string v13, ""

    .line 178
    .local v13, companyName:Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[query] uri: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_14

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v36

    .line 186
    :cond_13
    :goto_2
    invoke-static/range {v36 .. v36}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 188
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "phone number: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/16 v40, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyRawItem(Ljava/lang/String;Z)Lcom/isw/android/corp/bean/CompanyItemBean;

    move-result-object v5

    .line 190
    .restart local v5       #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    iget-boolean v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->bShowCom:Z

    move/from16 v40, v0

    if-nez v40, :cond_15

    .line 191
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 182
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_14
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_13

    .line 183
    move-object/from16 v36, p3

    goto :goto_2

    .line 194
    .restart local v5       #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    :cond_15
    iget-object v14, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 195
    .restart local v14       #companyid:Ljava/lang/String;
    iget-object v13, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 196
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "companyid"

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {v14}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_16

    const-string v40, "/"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    if-lez v40, :cond_16

    .line 199
    const-string v40, "/"

    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    add-int/lit8 v40, v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 200
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/isw/android/corp/util/DotInfoProvider;->convertImageStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 202
    :cond_16
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_17

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_18

    .line 203
    :cond_17
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_19

    .line 204
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/WinksTools;->converTextImageStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 210
    :cond_18
    :goto_3
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v9, v0, [Ljava/lang/String;

    const/16 v40, 0x0

    const-string v41, "COMPANYIMG"

    aput-object v41, v9, v40

    const/16 v40, 0x1

    const-string v41, "NAME"

    aput-object v41, v9, v40

    .line 212
    .restart local v9       #columns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 214
    .restart local v17       #cur:Landroid/database/MatrixCursor;
    const/16 v40, 0x2

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    aput-object v10, v38, v40

    const/16 v40, 0x1

    aput-object v13, v38, v40

    .line 216
    .restart local v38       #values:[Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 217
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 205
    .end local v9           #columns:[Ljava/lang/String;
    .end local v17           #cur:Landroid/database/MatrixCursor;
    .end local v38           #values:[Ljava/lang/String;
    :cond_19
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_18

    .line 206
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/WinksTools;->converTextImageStr(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 222
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v10           #companyImg:Ljava/lang/String;
    .end local v13           #companyName:Ljava/lang/String;
    .end local v14           #companyid:Ljava/lang/String;
    .end local v36           #phone:Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/isw/android/corp/util/DotInfoProvider;->getContext()Landroid/content/Context;

    move-result-object v40

    invoke-static/range {v40 .. v40}, Lcom/isw/android/corp/util/WinksApplication;->onCreate(Landroid/content/Context;)V

    .line 223
    const-string v40, "DotInfoProvider"

    const-string v41, "dot info by search"

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v33, ""

    .line 226
    .local v33, keywords:Ljava/lang/String;
    const-string v30, ""

    .line 228
    .local v30, iconId:Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "[query] uri: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_1b

    .line 231
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v33

    .line 235
    :cond_1a
    :goto_4
    invoke-static/range {v33 .. v33}, Lcom/isw/android/corp/util/WinksTools;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 236
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "keywords: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v9, v0, [Ljava/lang/String;

    const/16 v40, 0x0

    .line 239
    const-string v41, "PHONE"

    aput-object v41, v9, v40

    const/16 v40, 0x1

    const-string v41, "NAME"

    aput-object v41, v9, v40

    const/16 v40, 0x2

    const-string v41, "INFO"

    aput-object v41, v9, v40

    const/16 v40, 0x3

    .line 240
    const-string v41, "COMPANYID"

    aput-object v41, v9, v40

    .line 242
    .restart local v9       #columns:[Ljava/lang/String;
    new-instance v17, Landroid/database/MatrixCursor;

    move-object/from16 v0, v17

    invoke-direct {v0, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 243
    .restart local v17       #cur:Landroid/database/MatrixCursor;
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 246
    invoke-static/range {v33 .. v33}, Lcom/isw/android/corp/message/MiniCompanyData;->getCompanyDataByNumber(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 247
    .local v12, companyItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    if-nez v12, :cond_1c

    .line 248
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 232
    .end local v9           #columns:[Ljava/lang/String;
    .end local v12           #companyItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v17           #cur:Landroid/database/MatrixCursor;
    :cond_1b
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_1a

    .line 233
    move-object/from16 v33, p3

    goto :goto_4

    .line 251
    .restart local v9       #columns:[Ljava/lang/String;
    .restart local v12       #companyItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v17       #cur:Landroid/database/MatrixCursor;
    :cond_1c
    const/16 v29, 0x0

    .local v29, i:I
    :goto_5
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v29

    move/from16 v1, v40

    if-ge v0, v1, :cond_d

    .line 252
    move/from16 v0, v29

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 254
    .local v11, companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 255
    invoke-static/range {v30 .. v30}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v40

    if-nez v40, :cond_1d

    const-string v40, "/"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    if-lez v40, :cond_1d

    .line 256
    const-string v40, "/"

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v40

    add-int/lit8 v40, v40, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 259
    :cond_1d
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v40, 0x0

    .line 260
    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v38, v40

    const/16 v40, 0x1

    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v38, v40

    const/16 v40, 0x2

    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v38, v40

    const/16 v40, 0x3

    aput-object v30, v38, v40

    .line 263
    .restart local v38       #values:[Ljava/lang/String;
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "phone: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "name: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "info: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v11, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v40, "DotInfoProvider"

    new-instance v41, Ljava/lang/StringBuilder;

    const-string v42, "iconId: "

    invoke-direct/range {v41 .. v42}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 251
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_5

    .line 297
    .end local v9           #columns:[Ljava/lang/String;
    .end local v11           #companyItem:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v12           #companyItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v17           #cur:Landroid/database/MatrixCursor;
    .end local v29           #i:I
    .end local v30           #iconId:Ljava/lang/String;
    .end local v33           #keywords:Ljava/lang/String;
    .end local v38           #values:[Ljava/lang/String;
    .restart local v6       #callcenterEnable:Ljava/lang/String;
    .restart local v7       #callcenternumber:Ljava/lang/String;
    .restart local v8       #callcentertips:Ljava/lang/String;
    .restart local v14       #companyid:Ljava/lang/String;
    .restart local v15       #companyimg:Ljava/lang/String;
    .restart local v18       #dotCommUrl:Ljava/lang/String;
    .restart local v19       #dotEnable:Ljava/lang/String;
    .restart local v20       #dotIconUrl:Ljava/lang/String;
    .restart local v21       #dotMediaUrl:Ljava/lang/String;
    .restart local v22       #dotModel:Ljava/lang/String;
    .restart local v23       #dotid:Ljava/lang/String;
    .restart local v24       #dotimg:Ljava/lang/String;
    .restart local v25       #dotmatch:Ljava/lang/String;
    .restart local v26       #dottips:Ljava/lang/String;
    .restart local v36       #phone:Ljava/lang/String;
    :cond_1e
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    move-result v40

    if-nez v40, :cond_0

    .line 298
    move-object/from16 v36, p3

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method
