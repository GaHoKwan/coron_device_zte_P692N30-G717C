.class public Ljava/io/StreamTokenizer;
.super Ljava/lang/Object;
.source "StreamTokenizer.java"


# static fields
.field private static final TOKEN_COMMENT:B = 0x1t

.field private static final TOKEN_DIGIT:B = 0x10t

.field private static final TOKEN_QUOTE:B = 0x2t

.field private static final TOKEN_WHITE:B = 0x4t

.field private static final TOKEN_WORD:B = 0x8t

.field public static final TT_EOF:I = -0x1

.field public static final TT_EOL:I = 0xa

.field public static final TT_NUMBER:I = -0x2

.field private static final TT_UNKNOWN:I = -0x4

.field public static final TT_WORD:I = -0x3


# instance fields
.field private forceLowercase:Z

.field private inReader:Ljava/io/Reader;

.field private inStream:Ljava/io/InputStream;

.field private isEOLSignificant:Z

.field private lastCr:Z

.field private lineNumber:I

.field public nval:D

.field private peekChar:I

.field private pushBackToken:Z

.field private slashSlashComments:Z

.field private slashStarComments:Z

.field public sval:Ljava/lang/String;

.field private tokenTypes:[B

.field public ttype:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, -0x4

    iput v0, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 86
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 117
    const/4 v0, -0x2

    iput v0, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 129
    const/16 v0, 0x41

    const/16 v1, 0x5a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 130
    const/16 v0, 0x61

    const/16 v1, 0x7a

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 131
    const/16 v0, 0xa0

    const/16 v1, 0xff

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->wordChars(II)V

    .line 136
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/io/StreamTokenizer;->whitespaceChars(II)V

    .line 141
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->commentChar(I)V

    .line 142
    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 143
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/io/StreamTokenizer;->quoteChar(I)V

    .line 147
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->parseNumbers()V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 169
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "is == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    .line 173
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/io/StreamTokenizer;-><init>()V

    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "r == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    .line 200
    return-void
.end method

.method private read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 555
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 556
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 558
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/io/StreamTokenizer;->inStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public commentChar(I)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 210
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 211
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x1

    aput-byte v1, v0, p1

    .line 213
    :cond_0
    return-void
.end method

.method public eolIsSignificant(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 223
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    .line 224
    return-void
.end method

.method public lineno()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    return v0
.end method

.method public lowerCaseMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 244
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    .line 245
    return-void
.end method

.method public nextToken()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    if-eqz v13, :cond_0

    .line 258
    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 259
    iget v13, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v14, -0x4

    if-eq v13, v14, :cond_0

    .line 260
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 480
    :goto_0
    return v2

    .line 263
    :cond_0
    const/4 v13, 0x0

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 264
    iget v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    const/4 v14, -0x2

    if-ne v13, v14, :cond_2

    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 266
    .local v2, currentChar:I
    :goto_1
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    if-eqz v13, :cond_1

    const/16 v13, 0xa

    if-ne v2, v13, :cond_1

    .line 267
    const/4 v13, 0x0

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 268
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 270
    :cond_1
    const/4 v13, -0x1

    if-ne v2, v13, :cond_3

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    .line 264
    .end local v2           #currentChar:I
    :cond_2
    iget v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    goto :goto_1

    .line 274
    .restart local v2       #currentChar:I
    :cond_3
    const/16 v13, 0xff

    if-le v2, v13, :cond_4

    const/16 v3, 0x8

    .line 276
    .local v3, currentType:B
    :goto_2
    and-int/lit8 v13, v3, 0x4

    if-eqz v13, :cond_c

    .line 280
    const/16 v13, 0xd

    if-ne v2, v13, :cond_7

    .line 281
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 282
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_5

    .line 283
    const/4 v13, 0x1

    iput-boolean v13, p0, Ljava/io/StreamTokenizer;->lastCr:Z

    .line 284
    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 285
    const/16 v2, 0xa

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    .line 274
    .end local v3           #currentType:B
    :cond_4
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v3, v13, v2

    goto :goto_2

    .line 287
    .restart local v3       #currentType:B
    :cond_5
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0xa

    if-ne v2, v13, :cond_6

    .line 288
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 301
    :cond_6
    :goto_3
    const/4 v13, -0x1

    if-ne v2, v13, :cond_a

    .line 302
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    .line 290
    :cond_7
    const/16 v13, 0xa

    if-ne v2, v13, :cond_9

    .line 291
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    .line 292
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->isEOLSignificant:Z

    if-eqz v13, :cond_8

    .line 293
    const/4 v13, -0x2

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 294
    const/16 v2, 0xa

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto :goto_0

    .line 296
    :cond_8
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_3

    .line 299
    :cond_9
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    goto :goto_3

    .line 304
    :cond_a
    const/16 v13, 0xff

    if-le v2, v13, :cond_b

    const/16 v3, 0x8

    :goto_4
    goto :goto_2

    :cond_b
    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v3, v13, v2

    goto :goto_4

    .line 312
    :cond_c
    and-int/lit8 v13, v3, 0x10

    if-eqz v13, :cond_13

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 314
    .local v5, digits:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, haveDecimal:Z
    const/16 v13, 0x2d

    if-ne v2, v13, :cond_11

    const/4 v1, 0x1

    .line 316
    .local v1, checkJustNegative:Z
    :cond_d
    :goto_5
    const/16 v13, 0x2e

    if-ne v2, v13, :cond_e

    .line 317
    const/4 v7, 0x1

    .line 319
    :cond_e
    int-to-char v13, v2

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 320
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 321
    const/16 v13, 0x30

    if-lt v2, v13, :cond_f

    const/16 v13, 0x39

    if-le v2, v13, :cond_d

    :cond_f
    if-nez v7, :cond_10

    const/16 v13, 0x2e

    if-eq v2, v13, :cond_d

    .line 326
    :cond_10
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 327
    if-eqz v1, :cond_12

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_12

    .line 329
    const/16 v2, 0x2d

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 314
    .end local v1           #checkJustNegative:Z
    :cond_11
    const/4 v1, 0x0

    goto :goto_5

    .line 332
    .restart local v1       #checkJustNegative:Z
    :cond_12
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_6
    const/4 v2, -0x2

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 333
    :catch_0
    move-exception v6

    .line 335
    .local v6, e:Ljava/lang/NumberFormatException;
    const-wide/16 v13, 0x0

    iput-wide v13, p0, Ljava/io/StreamTokenizer;->nval:D

    goto :goto_6

    .line 340
    .end local v1           #checkJustNegative:Z
    .end local v5           #digits:Ljava/lang/StringBuilder;
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .end local v7           #haveDecimal:Z
    :cond_13
    and-int/lit8 v13, v3, 0x8

    if-eqz v13, :cond_17

    .line 341
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v13, 0x14

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 343
    .local v12, word:Ljava/lang/StringBuilder;
    :cond_14
    int-to-char v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    .line 345
    const/4 v13, -0x1

    if-eq v2, v13, :cond_15

    const/16 v13, 0x100

    if-ge v2, v13, :cond_14

    iget-object v13, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v13, v13, v2

    and-int/lit8 v13, v13, 0x18

    if-nez v13, :cond_14

    .line 350
    :cond_15
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 351
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 352
    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->forceLowercase:Z

    if-eqz v13, :cond_16

    .line 353
    iget-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 355
    :cond_16
    const/4 v2, -0x3

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 358
    .end local v12           #word:Ljava/lang/StringBuilder;
    :cond_17
    const/4 v13, 0x2

    if-ne v3, v13, :cond_22

    .line 359
    move v8, v2

    .line 360
    .local v8, matchQuote:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 361
    .local v10, quoteString:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 363
    .local v9, peekOne:I
    :cond_18
    :goto_7
    if-ltz v9, :cond_20

    if-eq v9, v8, :cond_20

    const/16 v13, 0xd

    if-eq v9, v13, :cond_20

    const/16 v13, 0xa

    if-eq v9, v13, :cond_20

    .line 364
    const/4 v11, 0x1

    .line 365
    .local v11, readPeek:Z
    const/16 v13, 0x5c

    if-ne v9, v13, :cond_1a

    .line 366
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 368
    .local v0, c1:I
    const/16 v13, 0x37

    if-gt v0, v13, :cond_1f

    const/16 v13, 0x30

    if-lt v0, v13, :cond_1f

    .line 369
    add-int/lit8 v4, v0, -0x30

    .line 370
    .local v4, digitValue:I
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 371
    const/16 v13, 0x37

    if-gt v0, v13, :cond_19

    const/16 v13, 0x30

    if-ge v0, v13, :cond_1b

    .line 372
    :cond_19
    const/4 v11, 0x0

    .line 383
    :goto_8
    if-nez v11, :cond_1e

    .line 385
    int-to-char v13, v4

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    move v9, v0

    .line 418
    .end local v0           #c1:I
    .end local v4           #digitValue:I
    :cond_1a
    :goto_9
    if-eqz v11, :cond_18

    .line 419
    int-to-char v13, v9

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    goto :goto_7

    .line 374
    .restart local v0       #c1:I
    .restart local v4       #digitValue:I
    :cond_1b
    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v14, v0, -0x30

    add-int v4, v13, v14

    .line 375
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v0

    .line 377
    const/16 v13, 0x1f

    if-gt v4, v13, :cond_1c

    const/16 v13, 0x37

    if-gt v0, v13, :cond_1c

    const/16 v13, 0x30

    if-ge v0, v13, :cond_1d

    .line 378
    :cond_1c
    const/4 v11, 0x0

    goto :goto_8

    .line 380
    :cond_1d
    mul-int/lit8 v13, v4, 0x8

    add-int/lit8 v14, v0, -0x30

    add-int v4, v13, v14

    goto :goto_8

    .line 388
    :cond_1e
    move v9, v4

    goto :goto_9

    .line 391
    .end local v4           #digitValue:I
    :cond_1f
    sparse-switch v0, :sswitch_data_0

    .line 414
    move v9, v0

    goto :goto_9

    .line 393
    :sswitch_0
    const/4 v9, 0x7

    .line 394
    goto :goto_9

    .line 396
    :sswitch_1
    const/16 v9, 0x8

    .line 397
    goto :goto_9

    .line 399
    :sswitch_2
    const/16 v9, 0xc

    .line 400
    goto :goto_9

    .line 402
    :sswitch_3
    const/16 v9, 0xa

    .line 403
    goto :goto_9

    .line 405
    :sswitch_4
    const/16 v9, 0xd

    .line 406
    goto :goto_9

    .line 408
    :sswitch_5
    const/16 v9, 0x9

    .line 409
    goto :goto_9

    .line 411
    :sswitch_6
    const/16 v9, 0xb

    .line 412
    goto :goto_9

    .line 423
    .end local v0           #c1:I
    .end local v11           #readPeek:Z
    :cond_20
    if-ne v9, v8, :cond_21

    .line 424
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 426
    :cond_21
    iput v9, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 427
    iput v8, p0, Ljava/io/StreamTokenizer;->ttype:I

    .line 428
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    .line 429
    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 432
    .end local v8           #matchQuote:I
    .end local v9           #peekOne:I
    .end local v10           #quoteString:Ljava/lang/StringBuilder;
    :cond_22
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_2d

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-nez v13, :cond_23

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_2d

    .line 433
    :cond_23
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    const/16 v13, 0x2a

    if-ne v2, v13, :cond_29

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    if-eqz v13, :cond_29

    .line 434
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 436
    .restart local v9       #peekOne:I
    :cond_24
    :goto_a
    move v2, v9

    .line 437
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 438
    const/4 v13, -0x1

    if-ne v2, v13, :cond_25

    .line 439
    const/4 v13, -0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 440
    const/4 v2, -0x1

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 442
    :cond_25
    const/16 v13, 0xd

    if-ne v2, v13, :cond_27

    .line 443
    const/16 v13, 0xa

    if-ne v9, v13, :cond_26

    .line 444
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v9

    .line 446
    :cond_26
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_a

    .line 447
    :cond_27
    const/16 v13, 0xa

    if-ne v2, v13, :cond_28

    .line 448
    iget v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    add-int/lit8 v13, v13, 0x1

    iput v13, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    goto :goto_a

    .line 449
    :cond_28
    const/16 v13, 0x2a

    if-ne v2, v13, :cond_24

    const/16 v13, 0x2f

    if-ne v9, v13, :cond_24

    .line 450
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 451
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    .line 454
    .end local v9           #peekOne:I
    :cond_29
    const/16 v13, 0x2f

    if-ne v2, v13, :cond_2c

    iget-boolean v13, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    if-eqz v13, :cond_2c

    .line 457
    :cond_2a
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_2b

    const/16 v13, 0xd

    if-eq v2, v13, :cond_2b

    const/16 v13, 0xa

    if-ne v2, v13, :cond_2a

    .line 460
    :cond_2b
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 461
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    .line 462
    :cond_2c
    const/4 v13, 0x1

    if-eq v3, v13, :cond_2d

    .line 464
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 465
    const/16 v2, 0x2f

    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 469
    :cond_2d
    const/4 v13, 0x1

    if-ne v3, v13, :cond_30

    .line 472
    :cond_2e
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v2

    if-ltz v2, :cond_2f

    const/16 v13, 0xd

    if-eq v2, v13, :cond_2f

    const/16 v13, 0xa

    if-ne v2, v13, :cond_2e

    .line 475
    :cond_2f
    iput v2, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 476
    invoke-virtual {p0}, Ljava/io/StreamTokenizer;->nextToken()I

    move-result v2

    goto/16 :goto_0

    .line 479
    :cond_30
    invoke-direct {p0}, Ljava/io/StreamTokenizer;->read()I

    move-result v13

    iput v13, p0, Ljava/io/StreamTokenizer;->peekChar:I

    .line 480
    iput v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    goto/16 :goto_0

    .line 391
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x76 -> :sswitch_6
    .end sparse-switch
.end method

.method public ordinaryChar(I)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 493
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 494
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x0

    aput-byte v1, v0, p1

    .line 496
    :cond_0
    return-void
.end method

.method public ordinaryChars(II)V
    .locals 3
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 510
    if-gez p1, :cond_0

    .line 511
    const/4 p1, 0x0

    .line 513
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    .line 514
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 516
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 517
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_2
    return-void
.end method

.method public parseNumbers()V
    .locals 4

    .prologue
    .line 525
    const/16 v0, 0x30

    .local v0, i:I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 526
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 528
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2e

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 529
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/16 v2, 0x2d

    aget-byte v3, v1, v2

    or-int/lit8 v3, v3, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 530
    return-void
.end method

.method public pushBack()V
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/StreamTokenizer;->pushBackToken:Z

    .line 538
    return-void
.end method

.method public quoteChar(I)V
    .locals 2
    .parameter "ch"

    .prologue
    .line 548
    if-ltz p1, :cond_0

    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 549
    iget-object v0, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 551
    :cond_0
    return-void
.end method

.method public resetSyntax()V
    .locals 3

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 566
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_0
    return-void
.end method

.method public slashSlashComments(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 579
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashSlashComments:Z

    .line 580
    return-void
.end method

.method public slashStarComments(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 592
    iput-boolean p1, p0, Ljava/io/StreamTokenizer;->slashStarComments:Z

    .line 593
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    .local v0, result:Ljava/lang/StringBuilder;
    const-string v1, "Token["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    sparse-switch v1, :sswitch_data_0

    .line 620
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    const/4 v2, -0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    iget v2, p0, Ljava/io/StreamTokenizer;->ttype:I

    aget-byte v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 621
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :goto_0
    const-string v1, "], line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    iget v1, p0, Ljava/io/StreamTokenizer;->lineNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 607
    :sswitch_0
    const-string v1, "EOF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 610
    :sswitch_1
    const-string v1, "EOL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 613
    :sswitch_2
    const-string v1, "n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-wide v1, p0, Ljava/io/StreamTokenizer;->nval:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 617
    :sswitch_3
    iget-object v1, p0, Ljava/io/StreamTokenizer;->sval:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    iget v1, p0, Ljava/io/StreamTokenizer;->ttype:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 605
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public whitespaceChars(II)V
    .locals 3
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 643
    if-gez p1, :cond_0

    .line 644
    const/4 p1, 0x0

    .line 646
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    .line 647
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 649
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 650
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    const/4 v2, 0x4

    aput-byte v2, v1, v0

    .line 649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 652
    :cond_2
    return-void
.end method

.method public wordChars(II)V
    .locals 3
    .parameter "low"
    .parameter "hi"

    .prologue
    .line 665
    if-gez p1, :cond_0

    .line 666
    const/4 p1, 0x0

    .line 668
    :cond_0
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    if-le p2, v1, :cond_1

    .line 669
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    array-length v1, v1

    add-int/lit8 p2, v1, -0x1

    .line 671
    :cond_1
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 672
    iget-object v1, p0, Ljava/io/StreamTokenizer;->tokenTypes:[B

    aget-byte v2, v1, v0

    or-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_2
    return-void
.end method
