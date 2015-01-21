.class public Lcom/ibm/icu/text/CharsetDetector;
.super Ljava/lang/Object;
.source "CharsetDetector.java"


# static fields
.field private static fCSRecognizers:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ibm/icu/text/CharsetRecognizer;",
            ">;"
        }
    .end annotation
.end field

.field private static fCharsetNames:[Ljava/lang/String; = null

.field private static final kBufSize:I = 0x1f40


# instance fields
.field fByteStats:[S

.field fC1Bytes:Z

.field fDeclaredEncoding:Ljava/lang/String;

.field fInputBytes:[B

.field fInputLen:I

.field fInputStream:Ljava/io/InputStream;

.field fRawInput:[B

.field fRawLength:I

.field fStripTags:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 445
    invoke-static {}, Lcom/ibm/icu/text/CharsetDetector;->createRecognizers()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/ibm/icu/text/CharsetDetector;->fCSRecognizers:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/16 v0, 0x1f40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    .line 415
    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    .line 419
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 438
    iput-boolean v1, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 55
    return-void
.end method

.method private MungeInput()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 331
    const/4 v8, 0x0

    .line 332
    .local v8, srci:I
    const/4 v2, 0x0

    .line 334
    .local v2, dsti:I
    const/4 v5, 0x0

    .line 335
    .local v5, inMarkup:Z
    const/4 v7, 0x0

    .line 336
    .local v7, openTags:I
    const/4 v1, 0x0

    .line 344
    .local v1, badTags:I
    iget-boolean v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    if-eqz v10, :cond_5

    .line 345
    const/4 v8, 0x0

    :goto_0
    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    if-ge v8, v10, :cond_4

    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    array-length v10, v10

    if-ge v2, v10, :cond_4

    .line 346
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v0, v10, v8

    .line 347
    .local v0, b:B
    const/16 v10, 0x3c

    if-ne v0, v10, :cond_1

    .line 348
    if-eqz v5, :cond_0

    .line 349
    add-int/lit8 v1, v1, 0x1

    .line 351
    :cond_0
    const/4 v5, 0x1

    .line 352
    add-int/lit8 v7, v7, 0x1

    .line 355
    :cond_1
    if-nez v5, :cond_2

    .line 356
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2           #dsti:I
    .local v3, dsti:I
    aput-byte v0, v10, v2

    move v2, v3

    .line 359
    .end local v3           #dsti:I
    .restart local v2       #dsti:I
    :cond_2
    const/16 v10, 0x3e

    if-ne v0, v10, :cond_3

    .line 360
    const/4 v5, 0x0

    .line 345
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 364
    .end local v0           #b:B
    :cond_4
    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 372
    :cond_5
    const/4 v10, 0x5

    if-lt v7, v10, :cond_6

    div-int/lit8 v10, v7, 0x5

    if-lt v10, v1, :cond_6

    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    const/16 v11, 0x64

    if-ge v10, v11, :cond_9

    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    const/16 v11, 0x258

    if-le v10, v11, :cond_9

    .line 374
    :cond_6
    iget v6, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 376
    .local v6, limit:I
    const/16 v10, 0x1f40

    if-le v6, v10, :cond_7

    .line 377
    const/16 v6, 0x1f40

    .line 380
    :cond_7
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_8

    .line 381
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    iget-object v11, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    aget-byte v11, v11, v8

    aput-byte v11, v10, v8

    .line 380
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 383
    :cond_8
    iput v8, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    .line 390
    .end local v6           #limit:I
    :cond_9
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    invoke-static {v10, v12}, Ljava/util/Arrays;->fill([SS)V

    .line 391
    const/4 v8, 0x0

    :goto_2
    iget v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputLen:I

    if-ge v8, v10, :cond_a

    .line 392
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputBytes:[B

    aget-byte v10, v10, v8

    and-int/lit16 v9, v10, 0xff

    .line 393
    .local v9, val:I
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v11, v10, v9

    add-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v10, v9

    .line 391
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 396
    .end local v9           #val:I
    :cond_a
    iput-boolean v12, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 397
    const/16 v4, 0x80

    .local v4, i:I
    :goto_3
    const/16 v10, 0x9f

    if-gt v4, v10, :cond_b

    .line 398
    iget-object v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fByteStats:[S

    aget-short v10, v10, v4

    if-eqz v10, :cond_c

    .line 399
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/ibm/icu/text/CharsetDetector;->fC1Bytes:Z

    .line 403
    :cond_b
    return-void

    .line 397
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private static createRecognizers()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ibm/icu/text/CharsetRecognizer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 452
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v5, recognizers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ibm/icu/text/CharsetRecognizer;>;"
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_UTF8;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_UTF8;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_BE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_16_LE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_BE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_Unicode$CharsetRecog_UTF_32_LE;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_mbcs$CharsetRecog_gb_18030;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    new-instance v6, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;

    invoke-direct {v6}, Lcom/ibm/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 490
    .local v0, charsetNames:[Ljava/lang/String;
    const/4 v3, 0x0

    .line 492
    .local v3, out:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 493
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ibm/icu/text/CharsetRecognizer;

    invoke-virtual {v6}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, name:Ljava/lang/String;
    if-eqz v3, :cond_0

    add-int/lit8 v6, v3, -0x1

    aget-object v6, v0, v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 496
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #out:I
    .local v4, out:I
    aput-object v2, v0, v3

    move v3, v4

    .line 492
    .end local v4           #out:I
    .restart local v3       #out:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    .end local v2           #name:Ljava/lang/String;
    :cond_2
    new-array v6, v3, [Ljava/lang/String;

    sput-object v6, Lcom/ibm/icu/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    .line 501
    sget-object v6, Lcom/ibm/icu/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    invoke-static {v0, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    return-object v5
.end method

.method public static getAllDetectableCharsets()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/ibm/icu/text/CharsetDetector;->fCharsetNames:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public detect()Lcom/ibm/icu/text/CharsetMatch;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detectAll()[Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v0

    .line 161
    .local v0, matches:[Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 162
    :cond_0
    const/4 v1, 0x0

    .line 165
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public detectAll()[Lcom/ibm/icu/text/CharsetMatch;
    .locals 6

    .prologue
    .line 184
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v3, matches:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ibm/icu/text/CharsetMatch;>;"
    invoke-direct {p0}, Lcom/ibm/icu/text/CharsetDetector;->MungeInput()V

    .line 190
    sget-object v5, Lcom/ibm/icu/text/CharsetDetector;->fCSRecognizers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/text/CharsetRecognizer;

    .line 191
    .local v0, csr:Lcom/ibm/icu/text/CharsetRecognizer;
    invoke-virtual {v0, p0}, Lcom/ibm/icu/text/CharsetRecognizer;->match(Lcom/ibm/icu/text/CharsetDetector;)Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v2

    .line 192
    .local v2, m:Lcom/ibm/icu/text/CharsetMatch;
    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v0           #csr:Lcom/ibm/icu/text/CharsetRecognizer;
    .end local v2           #m:Lcom/ibm/icu/text/CharsetMatch;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 197
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 198
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Lcom/ibm/icu/text/CharsetMatch;

    .line 199
    .local v4, resultArray:[Lcom/ibm/icu/text/CharsetMatch;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4           #resultArray:[Lcom/ibm/icu/text/CharsetMatch;
    check-cast v4, [Lcom/ibm/icu/text/CharsetMatch;

    .line 200
    .restart local v4       #resultArray:[Lcom/ibm/icu/text/CharsetMatch;
    return-object v4
.end method

.method public enableInputFilter(Z)Z
    .locals 1
    .parameter "filter"

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 321
    .local v0, previous:Z
    iput-boolean p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    .line 323
    return v0
.end method

.method public getReader(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/Reader;
    .locals 3
    .parameter "in"
    .parameter "declaredEncoding"

    .prologue
    const/4 v2, 0x0

    .line 227
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;

    .line 232
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v1

    .line 234
    .local v1, match:Lcom/ibm/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    .line 240
    .end local v1           #match:Lcom/ibm/icu/text/CharsetMatch;
    :goto_0
    return-object v2

    .line 238
    .restart local v1       #match:Lcom/ibm/icu/text/CharsetMatch;
    :cond_0
    invoke-virtual {v1}, Lcom/ibm/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 239
    .end local v1           #match:Lcom/ibm/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public getString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "in"
    .parameter "declaredEncoding"

    .prologue
    const/4 v2, 0x0

    .line 262
    iput-object p2, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 265
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetDetector;->setText([B)Lcom/ibm/icu/text/CharsetDetector;

    .line 267
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetDetector;->detect()Lcom/ibm/icu/text/CharsetMatch;

    move-result-object v1

    .line 269
    .local v1, match:Lcom/ibm/icu/text/CharsetMatch;
    if-nez v1, :cond_0

    .line 275
    .end local v1           #match:Lcom/ibm/icu/text/CharsetMatch;
    :goto_0
    return-object v2

    .line 273
    .restart local v1       #match:Lcom/ibm/icu/text/CharsetMatch;
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/ibm/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 274
    .end local v1           #match:Lcom/ibm/icu/text/CharsetMatch;
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method public inputFilterEnabled()Z
    .locals 1

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fStripTags:Z

    return v0
.end method

.method public setDeclaredEncoding(Ljava/lang/String;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 0
    .parameter "encoding"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fDeclaredEncoding:Ljava/lang/String;

    .line 75
    return-object p0
.end method

.method public setText(Ljava/io/InputStream;)Lcom/ibm/icu/text/CharsetDetector;
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f40

    .line 113
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    .line 114
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->mark(I)V

    .line 115
    new-array v2, v3, [B

    iput-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 119
    const/16 v1, 0x1f40

    .line 120
    .local v1, remainingLength:I
    :goto_0
    if-lez v1, :cond_0

    .line 122
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iget v4, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    invoke-virtual {v2, v3, v4, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 123
    .local v0, bytesRead:I
    if-gtz v0, :cond_1

    .line 129
    .end local v0           #bytesRead:I
    :cond_0
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    .line 131
    return-object p0

    .line 126
    .restart local v0       #bytesRead:I
    :cond_1
    iget v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 127
    sub-int/2addr v1, v0

    .line 128
    goto :goto_0
.end method

.method public setText([B)Lcom/ibm/icu/text/CharsetDetector;
    .locals 1
    .parameter "in"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    .line 89
    array-length v0, p1

    iput v0, p0, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    .line 91
    return-object p0
.end method
