.class public final Ljava/lang/String;
.super Ljava/lang/Object;
.source "String.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/String$1;,
        Ljava/lang/String$CaseInsensitiveComparator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field private static final ASCII:[C = null

.field public static final CASE_INSENSITIVE_ORDER:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REPLACEMENT_CHAR:C = '\ufffd'

.field private static final serialVersionUID:J = -0x5f0f5bc785c44cbeL


# instance fields
.field private final count:I

.field private hashCode:I

.field private final offset:I

.field private final value:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 96
    new-instance v1, Ljava/lang/String$CaseInsensitiveComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/String$CaseInsensitiveComparator;-><init>(Ljava/lang/String$1;)V

    sput-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 100
    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Ljava/lang/String;->ASCII:[C

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Ljava/lang/String;->ASCII:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 102
    sget-object v1, Ljava/lang/String;->ASCII:[C

    int-to-char v2, v0

    aput-char v2, v1, v0

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 119
    iput v1, p0, Ljava/lang/String;->offset:I

    .line 120
    iput v1, p0, Ljava/lang/String;->count:I

    .line 121
    return-void
.end method

.method constructor <init>(II[C)V
    .locals 0
    .parameter "offset"
    .parameter "charCount"
    .parameter "chars"

    .prologue
    .line 431
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 432
    iput-object p3, p0, Ljava/lang/String;->value:[C

    .line 433
    iput p1, p0, Ljava/lang/String;->offset:I

    .line 434
    iput p2, p0, Ljava/lang/String;->count:I

    .line 435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .parameter "toCopy"

    .prologue
    .line 442
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 443
    iget-object v0, p1, Ljava/lang/String;->value:[C

    array-length v0, v0

    iget v1, p1, Ljava/lang/String;->count:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Ljava/lang/String;->value:[C

    :goto_0
    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 447
    iget-object v0, p0, Ljava/lang/String;->value:[C

    array-length v0, v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 448
    return-void

    .line 443
    :cond_0
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget v2, p1, Ljava/lang/String;->offset:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;C)V
    .locals 5
    .parameter "s"
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 129
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 130
    iget v0, p1, Ljava/lang/String;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 131
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->count:I

    aput-char p2, v0, v1

    .line 133
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 7
    .parameter "s1"
    .parameter "v1"

    .prologue
    const/4 v6, 0x0

    .line 554
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 555
    if-nez p1, :cond_0

    .line 556
    const-string p1, "null"

    .line 558
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 559
    .local v1, s2:Ljava/lang/String;
    iget v2, p1, Ljava/lang/String;->count:I

    iget v3, v1, Ljava/lang/String;->count:I

    add-int v0, v2, v3

    .line 560
    .local v0, len:I
    new-array v2, v0, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 561
    iput v6, p0, Ljava/lang/String;->offset:I

    .line 562
    iget-object v2, p1, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    iget-object v2, v1, Ljava/lang/String;->value:[C

    iget v3, v1, Ljava/lang/String;->offset:I

    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p1, Ljava/lang/String;->count:I

    iget v6, v1, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 564
    iput v0, p0, Ljava/lang/String;->count:I

    .line 565
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s1"
    .parameter "s2"

    .prologue
    const/4 v4, 0x0

    .line 454
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 455
    if-nez p1, :cond_0

    .line 456
    const-string p1, "null"

    .line 458
    :cond_0
    if-nez p2, :cond_1

    .line 459
    const-string p2, "null"

    .line 461
    :cond_1
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 462
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 463
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 464
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 465
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "s1"
    .parameter "s2"
    .parameter "s3"

    .prologue
    const/4 v4, 0x0

    .line 472
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 473
    if-nez p1, :cond_0

    .line 474
    const-string p1, "null"

    .line 476
    :cond_0
    if-nez p2, :cond_1

    .line 477
    const-string p2, "null"

    .line 479
    :cond_1
    if-nez p3, :cond_2

    .line 480
    const-string p3, "null"

    .line 482
    :cond_2
    iget v0, p1, Ljava/lang/String;->count:I

    iget v1, p2, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iget v1, p3, Ljava/lang/String;->count:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/lang/String;->count:I

    .line 483
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 484
    iput v4, p0, Ljava/lang/String;->offset:I

    .line 485
    iget-object v0, p1, Ljava/lang/String;->value:[C

    iget v1, p1, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    iget-object v0, p2, Ljava/lang/String;->value:[C

    iget v1, p2, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 487
    iget-object v0, p3, Ljava/lang/String;->value:[C

    iget v1, p3, Ljava/lang/String;->offset:I

    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p1, Ljava/lang/String;->count:I

    iget v4, p2, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    iget v4, p3, Ljava/lang/String;->count:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 488
    return-void
.end method

.method public constructor <init>(Ljava/lang/StringBuffer;)V
    .locals 1
    .parameter "stringBuffer"

    .prologue
    .line 494
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Ljava/lang/String;->offset:I

    .line 496
    monitor-enter p1

    .line 497
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->shareValue()[C

    move-result-object v0

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 498
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 499
    monitor-exit p1

    .line 500
    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "stringBuilder"

    .prologue
    const/4 v2, 0x0

    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    if-nez p1, :cond_0

    .line 542
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stringBuilder == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_0
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 545
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Ljava/lang/String;->count:I

    .line 546
    iget v0, p0, Ljava/lang/String;->count:I

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 547
    iget v0, p0, Ljava/lang/String;->count:I

    iget-object v1, p0, Ljava/lang/String;->value:[C

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 548
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "data"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "DM_DEFAULT_ENCODING"
        }
    .end annotation

    .prologue
    .line 141
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([BII)V

    .line 142
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 2
    .parameter "data"
    .parameter "high"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIII)V

    .line 159
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"

    .prologue
    .line 171
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 172
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 4
    .parameter "data"
    .parameter "high"
    .parameter "offset"
    .parameter "byteCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 187
    or-int v2, p3, p4

    if-ltz v2, :cond_0

    array-length v2, p1

    sub-int/2addr v2, p3

    if-le p4, v2, :cond_1

    .line 188
    :cond_0
    array-length v2, p1

    invoke-direct {p0, v2, p3, p4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v2

    throw v2

    .line 190
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Ljava/lang/String;->offset:I

    .line 191
    new-array v2, p4, [C

    iput-object v2, p0, Ljava/lang/String;->value:[C

    .line 192
    iput p4, p0, Ljava/lang/String;->count:I

    .line 193
    shl-int/lit8 p2, p2, 0x8

    .line 194
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Ljava/lang/String;->count:I

    if-ge v0, v2, :cond_2

    .line 195
    iget-object v2, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v1, p3, 0x1

    .end local p3
    .local v1, offset:I
    aget-byte v3, p1, p3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v3, p2

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    move p3, v1

    .end local v1           #offset:I
    .restart local p3
    goto :goto_0

    .line 197
    :cond_2
    return-void
.end method

.method public constructor <init>([BIILjava/lang/String;)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p4}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 214
    return-void
.end method

.method public constructor <init>([BIILjava/nio/charset/Charset;)V
    .locals 28
    .parameter "data"
    .parameter "offset"
    .parameter "byteCount"
    .parameter "charset"

    .prologue
    .line 245
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 246
    or-int v23, p2, p3

    if-ltz v23, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    sub-int v23, v23, p2

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 247
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v23

    throw v23

    .line 252
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, canonicalCharsetName:Ljava/lang/String;
    const-string v23, "UTF-8"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 254
    move-object/from16 v8, p1

    .line 255
    .local v8, d:[B
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v19, v0

    .line 257
    .local v19, v:[C
    move/from16 v11, p2

    .line 258
    .local v11, idx:I
    add-int v13, p2, p3

    .line 259
    .local v13, last:I
    const/4 v15, 0x0

    .local v15, s:I
    move/from16 v16, v15

    .end local v15           #s:I
    .local v16, s:I
    move v12, v11

    .line 261
    .end local v11           #idx:I
    .local v12, idx:I
    :goto_0
    if-ge v12, v13, :cond_14

    .line 262
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v5, v8, v12

    .line 263
    .local v5, b0:B
    and-int/lit16 v0, v5, 0x80

    move/from16 v23, v0

    if-nez v23, :cond_2

    .line 266
    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    .line 267
    .local v20, val:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    .end local v20           #val:I
    :goto_1
    move/from16 v16, v15

    .end local v15           #s:I
    .restart local v16       #s:I
    move v12, v11

    .line 344
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_0

    .line 268
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_2
    and-int/lit16 v0, v5, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 270
    :cond_3
    const/16 v18, 0x1

    .line 271
    .local v18, utfCount:I
    and-int/lit16 v0, v5, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v18, 0x2

    .line 283
    :cond_4
    :goto_2
    add-int v23, v11, v18

    move/from16 v0, v23

    if-le v0, v13, :cond_8

    .line 284
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    .line 346
    .end local v5           #b0:B
    .end local v18           #utfCount:I
    :goto_3
    move/from16 v0, p3

    if-ne v15, v0, :cond_f

    .line 348
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 349
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 350
    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    .line 384
    .end local v8           #d:[B
    .end local v11           #idx:I
    .end local v13           #last:I
    .end local v15           #s:I
    .end local v19           #v:[C
    :goto_4
    return-void

    .line 272
    .restart local v5       #b0:B
    .restart local v8       #d:[B
    .restart local v11       #idx:I
    .restart local v13       #last:I
    .restart local v16       #s:I
    .restart local v18       #utfCount:I
    .restart local v19       #v:[C
    :cond_5
    and-int/lit16 v0, v5, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/16 v18, 0x3

    goto :goto_2

    .line 273
    :cond_6
    and-int/lit16 v0, v5, 0xfc

    move/from16 v23, v0

    const/16 v24, 0xf8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v18, 0x4

    goto :goto_2

    .line 274
    :cond_7
    and-int/lit16 v0, v5, 0xfe

    move/from16 v23, v0

    const/16 v24, 0xfc

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v18, 0x5

    goto :goto_2

    .line 289
    :cond_8
    const/16 v23, 0x1f

    add-int/lit8 v24, v18, -0x1

    shr-int v23, v23, v24

    and-int v20, v5, v23

    .line 290
    .restart local v20       #val:I
    const/4 v10, 0x0

    .local v10, i:I
    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    :goto_5
    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 291
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v4, v8, v12

    .line 292
    .local v4, b:B
    and-int/lit16 v0, v4, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_9

    .line 293
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    .line 294
    add-int/lit8 v11, v11, -0x1

    move/from16 v16, v15

    .end local v15           #s:I
    .restart local v16       #s:I
    move v12, v11

    .line 295
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_0

    .line 298
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_9
    shl-int/lit8 v20, v20, 0x6

    .line 299
    and-int/lit8 v23, v4, 0x3f

    or-int v20, v20, v23

    .line 290
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_5

    .line 317
    .end local v4           #b:B
    :cond_a
    const/16 v23, 0x2

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const v23, 0xd800

    move/from16 v0, v20

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    const v23, 0xdfff

    move/from16 v0, v20

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 318
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    .line 319
    .end local v15           #s:I
    .restart local v16       #s:I
    goto/16 :goto_0

    .line 323
    :cond_b
    const v23, 0x10ffff

    move/from16 v0, v20

    move/from16 v1, v23

    if-le v0, v1, :cond_c

    .line 324
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    move/from16 v16, v15

    .line 325
    .end local v15           #s:I
    .restart local v16       #s:I
    goto/16 :goto_0

    .line 329
    :cond_c
    const/high16 v23, 0x1

    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 330
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    move/from16 v0, v20

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, v19, v16

    :goto_6
    move v11, v12

    .line 340
    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_1

    .line 332
    .end local v11           #idx:I
    .end local v15           #s:I
    .restart local v12       #idx:I
    .restart local v16       #s:I
    :cond_d
    const v23, 0xffff

    and-int v22, v20, v23

    .line 333
    .local v22, x:I
    shr-int/lit8 v23, v20, 0x10

    and-int/lit8 v17, v23, 0x1f

    .line 334
    .local v17, u:I
    add-int/lit8 v23, v17, -0x1

    const v24, 0xffff

    and-int v21, v23, v24

    .line 335
    .local v21, w:I
    const v23, 0xd800

    shl-int/lit8 v24, v21, 0x6

    or-int v23, v23, v24

    shr-int/lit8 v24, v22, 0xa

    or-int v9, v23, v24

    .line 336
    .local v9, hi:I
    const v23, 0xdc00

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v24, v0

    or-int v14, v23, v24

    .line 337
    .local v14, lo:I
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, v19, v16

    .line 338
    add-int/lit8 v16, v15, 0x1

    .end local v15           #s:I
    .restart local v16       #s:I
    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, v19, v15

    move/from16 v15, v16

    .end local v16           #s:I
    .restart local v15       #s:I
    goto :goto_6

    .line 342
    .end local v9           #hi:I
    .end local v10           #i:I
    .end local v12           #idx:I
    .end local v14           #lo:I
    .end local v15           #s:I
    .end local v17           #u:I
    .end local v18           #utfCount:I
    .end local v20           #val:I
    .end local v21           #w:I
    .end local v22           #x:I
    .restart local v11       #idx:I
    .restart local v16       #s:I
    :cond_e
    add-int/lit8 v15, v16, 0x1

    .end local v16           #s:I
    .restart local v15       #s:I
    const v23, 0xfffd

    aput-char v23, v19, v16

    goto/16 :goto_1

    .line 353
    .end local v5           #b0:B
    :cond_f
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 354
    new-array v0, v15, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 355
    move-object/from16 v0, p0

    iput v15, v0, Ljava/lang/String;->count:I

    .line 356
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 358
    .end local v8           #d:[B
    .end local v11           #idx:I
    .end local v13           #last:I
    .end local v15           #s:I
    .end local v19           #v:[C
    :cond_10
    const-string v23, "ISO-8859-1"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 359
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 360
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 361
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->isoLatin1BytesToChars([BII[C)V

    goto/16 :goto_4

    .line 363
    :cond_11
    const-string v23, "US-ASCII"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 364
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 365
    move/from16 v0, p3

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 366
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Ljava/nio/charset/Charsets;->asciiBytesToChars([BII[C)V

    goto/16 :goto_4

    .line 369
    :cond_12
    invoke-static/range {p1 .. p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v7

    .line 370
    .local v7, cb:Ljava/nio/CharBuffer;
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->offset:I

    .line 371
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->length()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/String;->count:I

    .line 372
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    if-lez v23, :cond_13

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    .line 379
    invoke-virtual {v7}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/lang/String;->value:[C

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/String;->count:I

    move/from16 v27, v0

    invoke-static/range {v23 .. v27}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_4

    .line 381
    :cond_13
    sget-object v23, Llibcore/util/EmptyArray;->CHAR:[C

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/lang/String;->value:[C

    goto/16 :goto_4

    .end local v7           #cb:Ljava/nio/CharBuffer;
    .restart local v8       #d:[B
    .restart local v12       #idx:I
    .restart local v13       #last:I
    .restart local v16       #s:I
    .restart local v19       #v:[C
    :cond_14
    move/from16 v15, v16

    .end local v16           #s:I
    .restart local v15       #s:I
    move v11, v12

    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_3
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 3
    .parameter "data"
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 228
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p2}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 229
    return-void
.end method

.method public constructor <init>([BLjava/nio/charset/Charset;)V
    .locals 2
    .parameter "data"
    .parameter "charset"

    .prologue
    .line 393
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 394
    return-void
.end method

.method public constructor <init>([C)V
    .locals 2
    .parameter "data"

    .prologue
    .line 404
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 405
    return-void
.end method

.method public constructor <init>([CII)V
    .locals 3
    .parameter "data"
    .parameter "offset"
    .parameter "charCount"

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 418
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 419
    :cond_0
    array-length v0, p1

    invoke-direct {p0, v0, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 421
    :cond_1
    iput v2, p0, Ljava/lang/String;->offset:I

    .line 422
    new-array v0, p3, [C

    iput-object v0, p0, Ljava/lang/String;->value:[C

    .line 423
    iput p3, p0, Ljava/lang/String;->count:I

    .line 424
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    return-void
.end method

.method public constructor <init>([III)V
    .locals 5
    .parameter "codePoints"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 515
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 516
    if-nez p1, :cond_0

    .line 517
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "codePoints == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 519
    :cond_0
    or-int v3, p2, p3

    if-ltz v3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    .line 520
    :cond_1
    array-length v3, p1

    invoke-direct {p0, v3, p2, p3}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 522
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Ljava/lang/String;->offset:I

    .line 523
    mul-int/lit8 v3, p3, 0x2

    new-array v3, v3, [C

    iput-object v3, p0, Ljava/lang/String;->value:[C

    .line 524
    add-int v1, p2, p3

    .line 525
    .local v1, end:I
    const/4 v0, 0x0

    .line 526
    .local v0, c:I
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 527
    aget v3, p1, v2

    iget-object v4, p0, Ljava/lang/String;->value:[C

    invoke-static {v3, v4, v0}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v3

    add-int/2addr v0, v3

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 529
    :cond_3
    iput v0, p0, Ljava/lang/String;->count:I

    .line 530
    return-void
.end method

.method public static copyValueOf([C)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 694
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static copyValueOf([CII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 716
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .parameter "arrayLength"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0
.end method

.method private native fastIndexOf(II)I
.end method

.method private foldCase(C)C
    .locals 1
    .parameter "ch"

    .prologue
    .line 595
    const/16 v0, 0x80

    if-ge p1, v0, :cond_1

    .line 596
    const/16 v0, 0x41

    if-gt v0, p1, :cond_0

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_0

    .line 597
    add-int/lit8 v0, p1, 0x20

    int-to-char p1, v0

    .line 601
    .end local p1
    :cond_0
    :goto_0
    return p1

    .restart local p1
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_0
.end method

.method public static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1966
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "locale"
    .parameter "format"
    .parameter "args"

    .prologue
    .line 1987
    if-nez p1, :cond_0

    .line 1988
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "format == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1990
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez p2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int v0, v3, v2

    .line 1991
    .local v0, bufferSize:I
    new-instance v1, Ljava/util/Formatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-direct {v1, v2, p0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 1992
    .local v1, f:Ljava/util/Formatter;
    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1990
    .end local v0           #bufferSize:I
    .end local v1           #f:Ljava/util/Formatter;
    :cond_1
    array-length v2, p2

    mul-int/lit8 v2, v2, 0xa

    goto :goto_0
.end method

.method private indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 1
    .parameter "index"

    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method private static indexOf(Ljava/lang/String;Ljava/lang/String;IIC)I
    .locals 14
    .parameter "haystackString"
    .parameter "needleString"
    .parameter "cache"
    .parameter "md2"
    .parameter "lastChar"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "UPM_UNCALLED_PRIVATE_METHOD"
        }
    .end annotation

    .prologue
    .line 2008
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 2009
    .local v1, haystack:[C
    iget v4, p0, Ljava/lang/String;->offset:I

    .line 2010
    .local v4, haystackOffset:I
    iget v3, p0, Ljava/lang/String;->count:I

    .line 2011
    .local v3, haystackLength:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 2012
    .local v7, needle:[C
    iget v10, p1, Ljava/lang/String;->offset:I

    .line 2013
    .local v10, needleOffset:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 2014
    .local v8, needleLength:I
    add-int/lit8 v9, v8, -0x1

    .line 2015
    .local v9, needleLengthMinus1:I
    add-int v2, v4, v3

    .line 2016
    .local v2, haystackEnd:I
    add-int v5, v4, v9

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_5

    .line 2017
    aget-char v12, v1, v5

    move/from16 v0, p4

    if-ne v0, v12, :cond_3

    .line 2018
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v9, :cond_2

    .line 2019
    add-int v12, v6, v10

    aget-char v12, v7, v12

    add-int v13, v5, v6

    sub-int/2addr v13, v9

    aget-char v13, v1, v13

    if-eq v12, v13, :cond_1

    .line 2021
    const/4 v11, 0x1

    .line 2022
    .local v11, skip:I
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_0

    .line 2023
    add-int/2addr v11, v6

    .line 2025
    :cond_0
    move/from16 v0, p3

    invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I

    move-result v12

    add-int/2addr v5, v12

    .line 2026
    goto :goto_0

    .line 2018
    .end local v11           #skip:I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2029
    :cond_2
    sub-int v12, v5, v9

    sub-int/2addr v12, v4

    .line 2037
    .end local v6           #j:I
    :goto_2
    return v12

    .line 2032
    :cond_3
    const/4 v12, 0x1

    aget-char v13, v1, v5

    shl-int/2addr v12, v13

    and-int v12, v12, p2

    if-nez v12, :cond_4

    .line 2033
    add-int/2addr v5, v9

    .line 2035
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2037
    :cond_5
    const/4 v12, -0x1

    goto :goto_2
.end method

.method private indexOfSupplementary(II)I
    .locals 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 962
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 963
    const/4 v2, -0x1

    .line 967
    :goto_0
    return v2

    .line 965
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 966
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 967
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private lastIndexOfSupplementary(II)I
    .locals 4
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1128
    invoke-static {p1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1129
    const/4 v2, -0x1

    .line 1133
    :goto_0
    return v2

    .line 1131
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 1132
    .local v0, chars:[C
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 1133
    .local v1, needle:Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 583
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;II)V

    throw v0
.end method

.method public static valueOf(C)Ljava/lang/String;
    .locals 4
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1612
    const/16 v1, 0x80

    if-ge p0, v1, :cond_0

    .line 1613
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/lang/String;->ASCII:[C

    invoke-direct {v0, p0, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .line 1617
    .local v0, s:Ljava/lang/String;
    :goto_0
    iput p0, v0, Ljava/lang/String;->hashCode:I

    .line 1618
    return-object v0

    .line 1615
    .end local v0           #s:Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/String;

    new-array v1, v2, [C

    aput-char p0, v1, v3

    invoke-direct {v0, v3, v2, v1}, Ljava/lang/String;-><init>(II[C)V

    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0
.end method

.method public static valueOf(D)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1629
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(F)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1640
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1651
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1662
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1675
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method public static valueOf(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1688
    if-eqz p0, :cond_0

    const-string v0, "true"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public static valueOf([C)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 1578
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public static valueOf([CII)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 1600
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method _getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 903
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 904
    return-void
.end method

.method public native charAt(I)C
.end method

.method public codePointAt(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 1866
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-lt p1, v0, :cond_1

    .line 1867
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1869
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointAt([CII)I

    move-result v0

    return v0
.end method

.method public codePointBefore(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1880
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-le p1, v0, :cond_1

    .line 1881
    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1883
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->offset:I

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointBefore([CII)I

    move-result v0

    return v0
.end method

.method public codePointCount(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1901
    if-ltz p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    if-le p1, p2, :cond_1

    .line 1902
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0

    .line 1904
    :cond_1
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public native compareTo(Ljava/lang/String;)I
.end method

.method public compareToIgnoreCase(Ljava/lang/String;)I
    .locals 12
    .parameter "string"

    .prologue
    .line 647
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 648
    .local v5, o2:I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v9, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-ge v9, v11, :cond_0

    iget v9, p0, Ljava/lang/String;->count:I

    :goto_0
    add-int v2, v10, v9

    .line 650
    .local v2, end:I
    iget-object v8, p1, Ljava/lang/String;->value:[C

    .local v8, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 651
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 652
    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v9, v4

    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v8, v6

    .local v1, c2:C
    if-ne v0, v1, :cond_1

    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 653
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1

    .line 648
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #end:I
    .end local v4           #o1:I
    .end local v6           #o2:I
    .end local v8           #target:[C
    .restart local v3       #o1:I
    .restart local v5       #o2:I
    :cond_0
    iget v9, p1, Ljava/lang/String;->count:I

    goto :goto_0

    .line 655
    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v2       #end:I
    .restart local v8       #target:[C
    :cond_1
    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v0

    .line 656
    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v1

    .line 657
    sub-int v7, v0, v1

    .local v7, result:I
    if-eqz v7, :cond_3

    .line 661
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v7           #result:I
    :goto_2
    return v7

    .end local v3           #o1:I
    .end local v5           #o2:I
    .restart local v4       #o1:I
    .restart local v6       #o2:I
    :cond_2
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p1, Ljava/lang/String;->count:I

    sub-int v7, v9, v10

    move v5, v6

    .end local v6           #o2:I
    .restart local v5       #o2:I
    move v3, v4

    .end local v4           #o1:I
    .restart local v3       #o1:I
    goto :goto_2

    .restart local v0       #c1:C
    .restart local v1       #c2:C
    .restart local v7       #result:I
    :cond_3
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1
.end method

.method public concat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "string"

    .prologue
    const/4 v5, 0x0

    .line 673
    iget v1, p1, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    iget v1, p0, Ljava/lang/String;->count:I

    if-lez v1, :cond_1

    .line 674
    iget v1, p0, Ljava/lang/String;->count:I

    iget v2, p1, Ljava/lang/String;->count:I

    add-int/2addr v1, v2

    new-array v0, v1, [C

    .line 675
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    iget-object v1, p1, Ljava/lang/String;->value:[C

    iget v2, p1, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    iget v4, p1, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 677
    new-instance p1, Ljava/lang/String;

    .end local p1
    array-length v1, v0

    invoke-direct {p1, v5, v1, v0}, Ljava/lang/String;-><init>(II[C)V

    .line 679
    .end local v0           #buffer:[C
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget v1, p0, Ljava/lang/String;->count:I

    if-eqz v1, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method public contains(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "cs"

    .prologue
    .line 1918
    if-nez p1, :cond_0

    .line 1919
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1921
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "cs"

    .prologue
    const/4 v1, 0x0

    .line 1725
    if-nez p1, :cond_0

    .line 1726
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "cs == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1729
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1731
    .local v0, len:I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v0, v2, :cond_1

    .line 1739
    :goto_0
    return v1

    .line 1735
    :cond_1
    if-nez v0, :cond_2

    iget v2, p0, Ljava/lang/String;->count:I

    if-nez v2, :cond_2

    .line 1736
    const/4 v1, 0x1

    goto :goto_0

    .line 1739
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public contentEquals(Ljava/lang/StringBuffer;)Z
    .locals 5
    .parameter "strbuf"

    .prologue
    const/4 v1, 0x0

    .line 1705
    monitor-enter p1

    .line 1706
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 1707
    .local v0, size:I
    iget v2, p0, Ljava/lang/String;->count:I

    if-eq v2, v0, :cond_0

    .line 1708
    monitor-exit p1

    .line 1710
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>(II[C)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    monitor-exit p1

    goto :goto_0

    .line 1712
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 3
    .parameter "suffix"

    .prologue
    .line 731
    iget v0, p0, Ljava/lang/String;->count:I

    iget v1, p1, Ljava/lang/String;->count:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public native equals(Ljava/lang/Object;)Z
.end method

.method public equalsIgnoreCase(Ljava/lang/String;)Z
    .locals 12
    .parameter "string"
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "ES_COMPARING_PARAMETER_STRING_WITH_EQ"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 758
    if-ne p1, p0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return v8

    .line 761
    :cond_1
    if-eqz p1, :cond_2

    iget v10, p0, Ljava/lang/String;->count:I

    iget v11, p1, Ljava/lang/String;->count:I

    if-eq v10, v11, :cond_3

    :cond_2
    move v8, v9

    .line 762
    goto :goto_0

    .line 764
    :cond_3
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, o1:I
    iget v5, p1, Ljava/lang/String;->offset:I

    .line 765
    .local v5, o2:I
    iget v10, p0, Ljava/lang/String;->offset:I

    iget v11, p0, Ljava/lang/String;->count:I

    add-int v2, v10, v11

    .line 766
    .local v2, end:I
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .local v7, target:[C
    move v6, v5

    .end local v5           #o2:I
    .local v6, o2:I
    move v4, v3

    .line 767
    .end local v3           #o1:I
    .local v4, o1:I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 768
    iget-object v10, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v4, 0x1

    .end local v4           #o1:I
    .restart local v3       #o1:I
    aget-char v0, v10, v4

    .line 769
    .local v0, c1:C
    add-int/lit8 v5, v6, 0x1

    .end local v6           #o2:I
    .restart local v5       #o2:I
    aget-char v1, v7, v6

    .line 770
    .local v1, c2:C
    if-eq v0, v1, :cond_4

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v10

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v11

    if-eq v10, v11, :cond_4

    move v8, v9

    .line 771
    goto :goto_0

    :cond_4
    move v6, v5

    .end local v5           #o2:I
    .restart local v6       #o2:I
    move v4, v3

    .line 773
    .end local v3           #o1:I
    .restart local v4       #o1:I
    goto :goto_1
.end method

.method public getBytes(II[BI)V
    .locals 5
    .parameter "start"
    .parameter "end"
    .parameter "data"
    .parameter "index"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 799
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v3, p0, Ljava/lang/String;->count:I

    if-gt p2, v3, :cond_0

    .line 800
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v3

    .line 802
    :try_start_0
    iget v3, p0, Ljava/lang/String;->offset:I

    add-int v0, v3, p1

    .local v0, i:I
    move v2, p4

    .end local p4
    .local v2, index:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 803
    add-int/lit8 p4, v2, 0x1

    .end local v2           #index:I
    .restart local p4
    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p3, v2
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    add-int/lit8 v0, v0, 0x1

    move v2, p4

    .end local p4
    .restart local v2       #index:I
    goto :goto_0

    .line 805
    .end local v0           #i:I
    .end local v2           #index:I
    .restart local p4
    :catch_0
    move-exception v1

    .line 806
    .local v1, ignored:Ljava/lang/ArrayIndexOutOfBoundsException;
    array-length v3, p3

    sub-int v4, p2, p1

    invoke-direct {p0, v3, p4, v4}, Ljava/lang/String;->failedBoundsCheck(III)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 809
    .end local v1           #ignored:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v3

    throw v3

    .line 811
    .end local p4
    .restart local v0       #i:I
    .restart local v2       #index:I
    :cond_1
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 822
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "charsetName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 835
    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/charset/Charset;)[B
    .locals 7
    .parameter "charset"

    .prologue
    .line 849
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, canonicalCharsetName:Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 851
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toUtf8Bytes([CII)[B

    move-result-object v1

    .line 863
    :goto_0
    return-object v1

    .line 852
    :cond_0
    const-string v4, "ISO-8859-1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 853
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toIsoLatin1Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 854
    :cond_1
    const-string v4, "US-ASCII"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 855
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toAsciiBytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 856
    :cond_2
    const-string v4, "UTF-16BE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 857
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/charset/Charsets;->toBigEndianUtf16Bytes([CII)[B

    move-result-object v1

    goto :goto_0

    .line 859
    :cond_3
    iget-object v4, p0, Ljava/lang/String;->value:[C

    iget v5, p0, Ljava/lang/String;->offset:I

    iget v6, p0, Ljava/lang/String;->count:I

    invoke-static {v4, v5, v6}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 860
    .local v3, chars:Ljava/nio/CharBuffer;
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->asReadOnlyBuffer()Ljava/nio/CharBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 861
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    new-array v1, v4, [B

    .line 862
    .local v1, bytes:[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 3
    .parameter "start"
    .parameter "end"
    .parameter "buffer"
    .parameter "index"

    .prologue
    .line 888
    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_0

    .line 889
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    return-void

    .line 892
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 907
    iget v2, p0, Ljava/lang/String;->hashCode:I

    .line 908
    .local v2, hash:I
    if-nez v2, :cond_2

    .line 909
    iget v4, p0, Ljava/lang/String;->count:I

    if-nez v4, :cond_0

    .line 910
    const/4 v4, 0x0

    .line 919
    :goto_0
    return v4

    .line 912
    :cond_0
    iget v4, p0, Ljava/lang/String;->count:I

    iget v5, p0, Ljava/lang/String;->offset:I

    add-int v1, v4, v5

    .line 913
    .local v1, end:I
    iget-object v0, p0, Ljava/lang/String;->value:[C

    .line 914
    .local v0, chars:[C
    iget v3, p0, Ljava/lang/String;->offset:I

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 915
    mul-int/lit8 v4, v2, 0x1f

    aget-char v5, v0, v3

    add-int v2, v4, v5

    .line 914
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 917
    :cond_1
    iput v2, p0, Ljava/lang/String;->hashCode:I

    .end local v0           #chars:[C
    .end local v1           #end:I
    .end local v3           #i:I
    :cond_2
    move v4, v2

    .line 919
    goto :goto_0
.end method

.method public indexOf(I)I
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 934
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 935
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 937
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, v1}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 1
    .parameter "c"
    .parameter "start"

    .prologue
    .line 953
    const v0, 0xffff

    if-le p1, v0, :cond_0

    .line 954
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->indexOfSupplementary(II)I

    move-result v0

    .line 956
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->fastIndexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 14
    .parameter "string"

    .prologue
    const/4 v11, -0x1

    .line 983
    const/4 v7, 0x0

    .line 984
    .local v7, start:I
    iget v8, p1, Ljava/lang/String;->count:I

    .line 985
    .local v8, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 986
    .local v0, _count:I
    if-lez v8, :cond_6

    .line 987
    if-le v8, v0, :cond_1

    move v4, v11

    .line 1010
    .end local v0           #_count:I
    :cond_0
    :goto_0
    return v4

    .line 990
    .restart local v0       #_count:I
    :cond_1
    iget-object v10, p1, Ljava/lang/String;->value:[C

    .line 991
    .local v10, target:[C
    iget v9, p1, Ljava/lang/String;->offset:I

    .line 992
    .local v9, subOffset:I
    aget-char v3, v10, v9

    .line 993
    .local v3, firstChar:C
    add-int v2, v9, v8

    .line 995
    .local v2, end:I
    :goto_1
    invoke-virtual {p0, v3, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 996
    .local v4, i:I
    if-eq v4, v11, :cond_2

    add-int v12, v8, v4

    if-le v12, v0, :cond_3

    :cond_2
    move v4, v11

    .line 997
    goto :goto_0

    .line 999
    :cond_3
    iget v12, p0, Ljava/lang/String;->offset:I

    add-int v5, v12, v4

    .local v5, o1:I
    move v6, v9

    .line 1000
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1001
    .local v1, _value:[C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_5

    add-int/lit8 v5, v5, 0x1

    aget-char v12, v1, v5

    aget-char v13, v10, v6

    if-eq v12, v13, :cond_4

    .line 1004
    :cond_5
    if-eq v6, v2, :cond_0

    .line 1007
    add-int/lit8 v7, v4, 0x1

    .line 1008
    goto :goto_1

    .line 1010
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v9           #subOffset:I
    .end local v10           #target:[C
    :cond_6
    if-ge v7, v0, :cond_7

    move v0, v7

    .end local v0           #_count:I
    :cond_7
    move v4, v0

    goto :goto_0
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 13
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v10, -0x1

    .line 1028
    if-gez p2, :cond_0

    .line 1029
    const/4 p2, 0x0

    .line 1031
    :cond_0
    iget v7, p1, Ljava/lang/String;->count:I

    .line 1032
    .local v7, subCount:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1033
    .local v0, _count:I
    if-lez v7, :cond_7

    .line 1034
    add-int v11, v7, p2

    if-le v11, v0, :cond_2

    move v4, v10

    .line 1057
    .end local v0           #_count:I
    :cond_1
    :goto_0
    return v4

    .line 1037
    .restart local v0       #_count:I
    :cond_2
    iget-object v9, p1, Ljava/lang/String;->value:[C

    .line 1038
    .local v9, target:[C
    iget v8, p1, Ljava/lang/String;->offset:I

    .line 1039
    .local v8, subOffset:I
    aget-char v3, v9, v8

    .line 1040
    .local v3, firstChar:C
    add-int v2, v8, v7

    .line 1042
    .local v2, end:I
    :goto_1
    invoke-virtual {p0, v3, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 1043
    .local v4, i:I
    if-eq v4, v10, :cond_3

    add-int v11, v7, v4

    if-le v11, v0, :cond_4

    :cond_3
    move v4, v10

    .line 1044
    goto :goto_0

    .line 1046
    :cond_4
    iget v11, p0, Ljava/lang/String;->offset:I

    add-int v5, v11, v4

    .local v5, o1:I
    move v6, v8

    .line 1047
    .local v6, o2:I
    iget-object v1, p0, Ljava/lang/String;->value:[C

    .line 1048
    .local v1, _value:[C
    :cond_5
    add-int/lit8 v6, v6, 0x1

    if-ge v6, v2, :cond_6

    add-int/lit8 v5, v5, 0x1

    aget-char v11, v1, v5

    aget-char v12, v9, v6

    if-eq v11, v12, :cond_5

    .line 1051
    :cond_6
    if-eq v6, v2, :cond_1

    .line 1054
    add-int/lit8 p2, v4, 0x1

    .line 1055
    goto :goto_1

    .line 1057
    .end local v1           #_value:[C
    .end local v2           #end:I
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #o1:I
    .end local v6           #o2:I
    .end local v8           #subOffset:I
    .end local v9           #target:[C
    :cond_7
    if-ge p2, v0, :cond_8

    move v0, p2

    .end local v0           #_count:I
    :cond_8
    move v4, v0

    goto :goto_0
.end method

.method public native intern()Ljava/lang/String;
.end method

.method public native isEmpty()Z
.end method

.method public lastIndexOf(I)I
    .locals 5
    .parameter "c"

    .prologue
    .line 1088
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 1089
    const v4, 0x7fffffff

    invoke-direct {p0, p1, v4}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1099
    :goto_0
    return v4

    .line 1091
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1092
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1093
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1094
    .local v2, _value:[C
    add-int v4, v1, v0

    add-int/lit8 v3, v4, -0x1

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_2

    .line 1095
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_1

    .line 1096
    sub-int v4, v3, v1

    goto :goto_0

    .line 1094
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1099
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(II)I
    .locals 5
    .parameter "c"
    .parameter "start"

    .prologue
    .line 1108
    const v4, 0xffff

    if-le p1, v4, :cond_0

    .line 1109
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->lastIndexOfSupplementary(II)I

    move-result v4

    .line 1124
    :goto_0
    return v4

    .line 1111
    :cond_0
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1112
    .local v0, _count:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1113
    .local v1, _offset:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1114
    .local v2, _value:[C
    if-ltz p2, :cond_3

    .line 1115
    if-lt p2, v0, :cond_1

    .line 1116
    add-int/lit8 p2, v0, -0x1

    .line 1118
    :cond_1
    add-int v3, v1, p2

    .local v3, i:I
    :goto_1
    if-lt v3, v1, :cond_3

    .line 1119
    aget-char v4, v2, v3

    if-ne v4, p1, :cond_2

    .line 1120
    sub-int v4, v3, v1

    goto :goto_0

    .line 1118
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1124
    .end local v3           #i:I
    :cond_3
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1
    .parameter "string"

    .prologue
    .line 1150
    iget v0, p0, Ljava/lang/String;->count:I

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 11
    .parameter "subString"
    .parameter "start"

    .prologue
    const/4 v8, -0x1

    .line 1168
    iget v5, p1, Ljava/lang/String;->count:I

    .line 1169
    .local v5, subCount:I
    iget v9, p0, Ljava/lang/String;->count:I

    if-gt v5, v9, :cond_7

    if-ltz p2, :cond_7

    .line 1170
    if-lez v5, :cond_5

    .line 1171
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int/2addr v9, v5

    if-le p2, v9, :cond_0

    .line 1172
    iget v9, p0, Ljava/lang/String;->count:I

    sub-int p2, v9, v5

    .line 1175
    :cond_0
    iget-object v7, p1, Ljava/lang/String;->value:[C

    .line 1176
    .local v7, target:[C
    iget v6, p1, Ljava/lang/String;->offset:I

    .line 1177
    .local v6, subOffset:I
    aget-char v1, v7, v6

    .line 1178
    .local v1, firstChar:C
    add-int v0, v6, v5

    .line 1180
    .local v0, end:I
    :goto_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    .line 1181
    .local v2, i:I
    if-ne v2, v8, :cond_2

    move v2, v8

    .line 1196
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_1
    :goto_1
    return v2

    .line 1184
    .restart local v0       #end:I
    .restart local v1       #firstChar:C
    .restart local v2       #i:I
    .restart local v6       #subOffset:I
    .restart local v7       #target:[C
    :cond_2
    iget v9, p0, Ljava/lang/String;->offset:I

    add-int v3, v9, v2

    .local v3, o1:I
    move v4, v6

    .line 1185
    .local v4, o2:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_4

    iget-object v9, p0, Ljava/lang/String;->value:[C

    add-int/lit8 v3, v3, 0x1

    aget-char v9, v9, v3

    aget-char v10, v7, v4

    if-eq v9, v10, :cond_3

    .line 1188
    :cond_4
    if-eq v4, v0, :cond_1

    .line 1191
    add-int/lit8 p2, v2, -0x1

    .line 1192
    goto :goto_0

    .line 1194
    .end local v0           #end:I
    .end local v1           #firstChar:C
    .end local v2           #i:I
    .end local v3           #o1:I
    .end local v4           #o2:I
    .end local v6           #subOffset:I
    .end local v7           #target:[C
    :cond_5
    iget v8, p0, Ljava/lang/String;->count:I

    if-ge p2, v8, :cond_6

    move v8, p2

    :goto_2
    move v2, v8

    goto :goto_1

    :cond_6
    iget v8, p0, Ljava/lang/String;->count:I

    goto :goto_2

    :cond_7
    move v2, v8

    .line 1196
    goto :goto_1
.end method

.method public native length()I
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1
    .parameter "regularExpression"

    .prologue
    .line 1759
    invoke-static {p1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public offsetByCodePoints(II)I
    .locals 5
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 1940
    iget v2, p0, Ljava/lang/String;->offset:I

    add-int v1, p1, v2

    .line 1941
    .local v1, s:I
    iget-object v2, p0, Ljava/lang/String;->value:[C

    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v2, v3, v4, v1, p2}, Ljava/lang/Character;->offsetByCodePoints([CIIII)I

    move-result v0

    .line 1942
    .local v0, r:I
    iget v2, p0, Ljava/lang/String;->offset:I

    sub-int v2, v0, v2

    return v2
.end method

.method public regionMatches(ILjava/lang/String;II)Z
    .locals 9
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1224
    if-nez p2, :cond_0

    .line 1225
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "string == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1227
    :cond_0
    if-ltz p3, :cond_1

    iget v7, p2, Ljava/lang/String;->count:I

    sub-int/2addr v7, p3

    if-ge v7, p4, :cond_3

    :cond_1
    move v5, v6

    .line 1244
    :cond_2
    :goto_0
    return v5

    .line 1230
    :cond_3
    if-ltz p1, :cond_4

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p1

    if-ge v7, p4, :cond_5

    :cond_4
    move v5, v6

    .line 1231
    goto :goto_0

    .line 1233
    :cond_5
    if-lez p4, :cond_2

    .line 1236
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int v1, v7, p1

    .local v1, o1:I
    iget v7, p2, Ljava/lang/String;->offset:I

    add-int v2, v7, p3

    .line 1237
    .local v2, o2:I
    iget-object v3, p0, Ljava/lang/String;->value:[C

    .line 1238
    .local v3, value1:[C
    iget-object v4, p2, Ljava/lang/String;->value:[C

    .line 1239
    .local v4, value2:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p4, :cond_2

    .line 1240
    add-int v7, v1, v0

    aget-char v7, v3, v7

    add-int v8, v2, v0

    aget-char v8, v4, v8

    if-eq v7, v8, :cond_6

    move v5, v6

    .line 1241
    goto :goto_0

    .line 1239
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public regionMatches(ZILjava/lang/String;II)Z
    .locals 9
    .parameter "ignoreCase"
    .parameter "thisStart"
    .parameter "string"
    .parameter "start"
    .parameter "length"

    .prologue
    const/4 v6, 0x0

    .line 1268
    if-nez p1, :cond_1

    .line 1269
    invoke-virtual {p0, p2, p3, p4, p5}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v6

    .line 1291
    :cond_0
    :goto_0
    return v6

    .line 1271
    :cond_1
    if-nez p3, :cond_2

    .line 1272
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "string == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1274
    :cond_2
    if-ltz p2, :cond_0

    iget v7, p0, Ljava/lang/String;->count:I

    sub-int/2addr v7, p2

    if-gt p5, v7, :cond_0

    .line 1277
    if-ltz p4, :cond_0

    iget v7, p3, Ljava/lang/String;->count:I

    sub-int/2addr v7, p4

    if-gt p5, v7, :cond_0

    .line 1280
    iget v7, p0, Ljava/lang/String;->offset:I

    add-int/2addr p2, v7

    .line 1281
    iget v7, p3, Ljava/lang/String;->offset:I

    add-int/2addr p4, v7

    .line 1282
    add-int v2, p2, p5

    .line 1283
    .local v2, end:I
    iget-object v4, p3, Ljava/lang/String;->value:[C

    .local v4, target:[C
    move v3, p4

    .end local p4
    .local v3, start:I
    move v5, p2

    .line 1284
    .end local p2
    .local v5, thisStart:I
    :goto_1
    if-ge v5, v2, :cond_4

    .line 1285
    iget-object v7, p0, Ljava/lang/String;->value:[C

    add-int/lit8 p2, v5, 0x1

    .end local v5           #thisStart:I
    .restart local p2
    aget-char v0, v7, v5

    .line 1286
    .local v0, c1:C
    add-int/lit8 p4, v3, 0x1

    .end local v3           #start:I
    .restart local p4
    aget-char v1, v4, v3

    .line 1287
    .local v1, c2:C
    if-eq v0, v1, :cond_3

    invoke-direct {p0, v0}, Ljava/lang/String;->foldCase(C)C

    move-result v7

    invoke-direct {p0, v1}, Ljava/lang/String;->foldCase(C)C

    move-result v8

    if-ne v7, v8, :cond_0

    :cond_3
    move v3, p4

    .end local p4
    .restart local v3       #start:I
    move v5, p2

    .line 1290
    .end local p2
    .restart local v5       #thisStart:I
    goto :goto_1

    .line 1291
    .end local v0           #c1:C
    .end local v1           #c2:C
    :cond_4
    const/4 v6, 0x1

    move p4, v3

    .end local v3           #start:I
    .restart local p4
    move p2, v5

    .end local v5           #thisStart:I
    .restart local p2
    goto :goto_0
.end method

.method public replace(CC)Ljava/lang/String;
    .locals 10
    .parameter "oldChar"
    .parameter "newChar"

    .prologue
    const/4 v9, 0x0

    .line 1305
    iget-object v2, p0, Ljava/lang/String;->value:[C

    .line 1306
    .local v2, buffer:[C
    iget v1, p0, Ljava/lang/String;->offset:I

    .line 1307
    .local v1, _offset:I
    iget v0, p0, Ljava/lang/String;->count:I

    .line 1309
    .local v0, _count:I
    move v4, v1

    .line 1310
    .local v4, idx:I
    add-int v5, v1, v0

    .line 1311
    .local v5, last:I
    const/4 v3, 0x0

    .line 1312
    .local v3, copied:Z
    :goto_0
    if-ge v4, v5, :cond_2

    .line 1313
    aget-char v7, v2, v4

    if-ne v7, p1, :cond_1

    .line 1314
    if-nez v3, :cond_0

    .line 1315
    new-array v6, v0, [C

    .line 1316
    .local v6, newBuffer:[C
    invoke-static {v2, v1, v6, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1317
    move-object v2, v6

    .line 1318
    sub-int/2addr v4, v1

    .line 1319
    sub-int/2addr v5, v1

    .line 1320
    const/4 v3, 0x1

    .line 1322
    .end local v6           #newBuffer:[C
    :cond_0
    aput-char p2, v2, v4

    .line 1324
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1327
    :cond_2
    if-eqz v3, :cond_3

    new-instance v7, Ljava/lang/String;

    iget v8, p0, Ljava/lang/String;->count:I

    invoke-direct {v7, v9, v8, v2}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v7

    .end local p0
    :cond_3
    return-object p0
.end method

.method public replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 13
    .parameter "target"
    .parameter "replacement"

    .prologue
    const/4 v12, -0x1

    .line 1344
    if-nez p1, :cond_0

    .line 1345
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "target == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1347
    :cond_0
    if-nez p2, :cond_1

    .line 1348
    new-instance v9, Ljava/lang/NullPointerException;

    const-string v10, "replacement == null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1351
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1352
    .local v8, targetString:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 1353
    .local v2, matchStart:I
    if-ne v2, v12, :cond_2

    .line 1389
    .end local p0
    :goto_0
    return-object p0

    .line 1358
    .restart local p0
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1361
    .local v3, replacementString:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    .line 1362
    .local v7, targetLength:I
    if-nez v7, :cond_4

    .line 1366
    iget v9, p0, Ljava/lang/String;->count:I

    iget v10, p0, Ljava/lang/String;->count:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    mul-int/2addr v10, v11

    add-int v5, v9, v10

    .line 1367
    .local v5, resultLength:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1368
    .local v4, result:Ljava/lang/StringBuilder;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    iget v9, p0, Ljava/lang/String;->offset:I

    iget v10, p0, Ljava/lang/String;->count:I

    add-int v0, v9, v10

    .line 1370
    .local v0, end:I
    iget v1, p0, Ljava/lang/String;->offset:I

    .local v1, i:I
    :goto_1
    if-eq v1, v0, :cond_3

    .line 1371
    iget-object v9, p0, Ljava/lang/String;->value:[C

    aget-char v9, v9, v1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1372
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1374
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1377
    .end local v0           #end:I
    .end local v1           #i:I
    .end local v4           #result:Ljava/lang/StringBuilder;
    .end local v5           #resultLength:I
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    iget v9, p0, Ljava/lang/String;->count:I

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1378
    .restart local v4       #result:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 1381
    .local v6, searchStart:I
    :cond_5
    iget-object v9, p0, Ljava/lang/String;->value:[C

    iget v10, p0, Ljava/lang/String;->offset:I

    add-int/2addr v10, v6

    sub-int v11, v2, v6

    invoke-virtual {v4, v9, v10, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1383
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    add-int v6, v2, v7

    .line 1386
    invoke-virtual {p0, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v12, :cond_5

    .line 1388
    iget-object v9, p0, Ljava/lang/String;->value:[C

    iget v10, p0, Ljava/lang/String;->offset:I

    add-int/2addr v10, v6

    iget v11, p0, Ljava/lang/String;->count:I

    sub-int/2addr v11, v6

    invoke-virtual {v4, v9, v10, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1389
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1778
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"
    .parameter "replacement"

    .prologue
    .line 1797
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "regularExpression"

    .prologue
    .line 1817
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public split(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .parameter "regularExpression"
    .parameter "limit"

    .prologue
    .line 1835
    invoke-static {p1, p0, p2}, Ljava/util/regex/Splitter;->fastSplit(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1836
    .local v0, result:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #result:[Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #result:[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 1
    .parameter "prefix"

    .prologue
    .line 1404
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public startsWith(Ljava/lang/String;I)Z
    .locals 2
    .parameter "prefix"
    .parameter "start"

    .prologue
    .line 1421
    const/4 v0, 0x0

    iget v1, p1, Ljava/lang/String;->count:I

    invoke-virtual {p0, p2, p1, v0, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1855
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public substring(I)Ljava/lang/String;
    .locals 4
    .parameter "start"

    .prologue
    .line 1436
    if-nez p1, :cond_0

    .line 1440
    .end local p0
    :goto_0
    return-object p0

    .line 1439
    .restart local p0
    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p1, v0, :cond_1

    .line 1440
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/lang/String;->count:I

    sub-int/2addr v2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1442
    :cond_1
    invoke-direct {p0, p1}, Ljava/lang/String;->indexAndLength(I)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1460
    if-nez p1, :cond_0

    iget v0, p0, Ljava/lang/String;->count:I

    if-ne p2, v0, :cond_0

    .line 1466
    .end local p0
    :goto_0
    return-object p0

    .line 1465
    .restart local p0
    :cond_0
    if-ltz p1, :cond_1

    if-gt p1, p2, :cond_1

    iget v0, p0, Ljava/lang/String;->count:I

    if-gt p2, v0, :cond_1

    .line 1466
    new-instance v0, Ljava/lang/String;

    iget v1, p0, Ljava/lang/String;->offset:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v0

    goto :goto_0

    .line 1468
    :cond_1
    invoke-direct {p0, p1, p2}, Ljava/lang/String;->startEndAndLength(II)Ljava/lang/StringIndexOutOfBoundsException;

    move-result-object v0

    throw v0
.end method

.method public toCharArray()[C
    .locals 5

    .prologue
    .line 1477
    iget v1, p0, Ljava/lang/String;->count:I

    new-array v0, v1, [C

    .line 1478
    .local v0, buffer:[C
    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    const/4 v3, 0x0

    iget v4, p0, Ljava/lang/String;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1479
    return-object v0
.end method

.method public toLowerCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1489
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 1506
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .prologue
    .line 1514
    return-object p0
.end method

.method public toUpperCase()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1524
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Ljava/lang/String;->value:[C

    iget v2, p0, Ljava/lang/String;->offset:I

    iget v3, p0, Ljava/lang/String;->count:I

    invoke-static {v0, p0, v1, v2, v3}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "locale"

    .prologue
    .line 1541
    iget-object v0, p0, Ljava/lang/String;->value:[C

    iget v1, p0, Ljava/lang/String;->offset:I

    iget v2, p0, Ljava/lang/String;->count:I

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/CaseMapper;->toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trim()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 1552
    iget v2, p0, Ljava/lang/String;->offset:I

    .local v2, start:I
    iget v3, p0, Ljava/lang/String;->offset:I

    iget v4, p0, Ljava/lang/String;->count:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 1553
    .local v1, last:I
    move v0, v1

    .line 1554
    .local v0, end:I
    :goto_0
    if-gt v2, v0, :cond_0

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v2

    if-gt v3, v5, :cond_0

    .line 1555
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    :cond_0
    :goto_1
    if-lt v0, v2, :cond_1

    iget-object v3, p0, Ljava/lang/String;->value:[C

    aget-char v3, v3, v0

    if-gt v3, v5, :cond_1

    .line 1558
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1560
    :cond_1
    iget v3, p0, Ljava/lang/String;->offset:I

    if-ne v2, v3, :cond_2

    if-ne v0, v1, :cond_2

    .line 1563
    .end local p0
    :goto_2
    return-object p0

    .restart local p0
    :cond_2
    new-instance v3, Ljava/lang/String;

    sub-int v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Ljava/lang/String;->value:[C

    invoke-direct {v3, v2, v4, v5}, Ljava/lang/String;-><init>(II[C)V

    move-object p0, v3

    goto :goto_2
.end method
