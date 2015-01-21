.class final Lek;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final a:[Ljava/lang/String;

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x1d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lek;->a:[C

    .line 57
    const/16 v0, 0x19

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lek;->b:[C

    .line 63
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "000000000000000000000000000000000000000000001"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "000000000000000000000000000000000000000000900"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "000000000000000000000000000000000000000810000"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "000000000000000000000000000000000000729000000"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "000000000000000000000000000000000656100000000"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "000000000000000000000000000000590490000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "000000000000000000000000000531441000000000000"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "000000000000000000000000478296900000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "000000000000000000000430467210000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "000000000000000000387420489000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "000000000000000348678440100000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "000000000000313810596090000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "000000000282429536481000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "000000254186582832900000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "000228767924549610000000000000000000000000000"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "205891132094649000000000000000000000000000000"

    aput-object v2, v0, v1

    sput-object v0, Lek;->a:[Ljava/lang/String;

    return-void

    .line 53
    nop

    :array_0
    .array-data 0x2
        0x3bt 0x0t
        0x3ct 0x0t
        0x3et 0x0t
        0x40t 0x0t
        0x5bt 0x0t
        0x5ct 0x0t
        0x7dt 0x0t
        0x5ft 0x0t
        0x60t 0x0t
        0x7et 0x0t
        0x21t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0xat 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x22t 0x0t
        0x7ct 0x0t
        0x2at 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x3ft 0x0t
        0x7bt 0x0t
        0x7dt 0x0t
        0x27t 0x0t
    .end array-data

    .line 57
    nop

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x26t 0x0t
        0xdt 0x0t
        0x9t 0x0t
        0x2ct 0x0t
        0x3at 0x0t
        0x23t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
        0x24t 0x0t
        0x2ft 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2at 0x0t
        0x3dt 0x0t
        0x5et 0x0t
    .end array-data
.end method

.method private static a(I[IILjava/lang/StringBuffer;)I
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    const/16 v0, 0x385

    if-ne p0, v0, :cond_5

    .line 339
    const/4 v3, 0x0

    .line 340
    const-wide/16 v1, 0x0

    .line 341
    const/4 v0, 0x6

    new-array v6, v0, [C

    .line 342
    const/4 v0, 0x6

    new-array v7, v0, [I

    .line 343
    const/4 v0, 0x0

    .line 344
    :cond_0
    :goto_0
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_4

    if-nez v0, :cond_4

    .line 345
    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    .line 346
    const/16 v8, 0x384

    if-ge v5, v8, :cond_1

    .line 347
    aput v5, v7, v3

    .line 348
    add-int/lit8 v3, v3, 0x1

    .line 350
    const-wide/16 v8, 0x384

    mul-long/2addr v1, v8

    int-to-long v8, v5

    add-long/2addr v1, v8

    move p2, v4

    .line 363
    :goto_1
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_0

    if-lez v3, :cond_0

    .line 366
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x6

    if-ge v3, v4, :cond_3

    .line 367
    rsub-int/lit8 v4, v3, 0x5

    const-wide/16 v8, 0x100

    rem-long v8, v1, v8

    long-to-int v5, v8

    int-to-char v5, v5

    aput-char v5, v6, v4

    .line 368
    const/16 v4, 0x8

    shr-long v4, v1, v4

    .line 366
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-wide v1, v4

    goto :goto_2

    .line 352
    :cond_1
    const/16 v8, 0x384

    if-eq v5, v8, :cond_2

    const/16 v8, 0x385

    if-eq v5, v8, :cond_2

    const/16 v8, 0x386

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39c

    if-eq v5, v8, :cond_2

    const/16 v8, 0x3a0

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39b

    if-eq v5, v8, :cond_2

    const/16 v8, 0x39a

    if-ne v5, v8, :cond_c

    .line 359
    :cond_2
    add-int/lit8 p2, v4, -0x1

    .line 360
    const/4 v0, 0x1

    goto :goto_1

    .line 370
    :cond_3
    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 371
    const/4 v3, 0x0

    goto :goto_0

    .line 377
    :cond_4
    div-int/lit8 v0, v3, 0x5

    mul-int/lit8 v0, v0, 0x5

    :goto_3
    if-ge v0, v3, :cond_a

    .line 378
    aget v1, v7, v0

    int-to-char v1, v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 381
    :cond_5
    const/16 v0, 0x39c

    if-ne p0, v0, :cond_a

    .line 384
    const/4 v3, 0x0

    .line 385
    const-wide/16 v1, 0x0

    .line 386
    const/4 v0, 0x0

    .line 387
    :cond_6
    :goto_4
    const/4 v4, 0x0

    aget v4, p1, v4

    if-ge p2, v4, :cond_a

    if-nez v0, :cond_a

    .line 388
    add-int/lit8 v4, p2, 0x1

    aget v5, p1, p2

    .line 389
    const/16 v6, 0x384

    if-ge v5, v6, :cond_7

    .line 390
    add-int/lit8 v3, v3, 0x1

    .line 392
    const-wide/16 v6, 0x384

    mul-long/2addr v1, v6

    int-to-long v5, v5

    add-long/2addr v1, v5

    move p2, v4

    .line 405
    :goto_5
    rem-int/lit8 v4, v3, 0x5

    if-nez v4, :cond_6

    if-lez v3, :cond_6

    .line 408
    const/4 v4, 0x6

    new-array v7, v4, [C

    .line 409
    const/4 v4, 0x0

    :goto_6
    const/4 v5, 0x6

    if-ge v4, v5, :cond_9

    .line 410
    rsub-int/lit8 v5, v4, 0x5

    const-wide/16 v8, 0xff

    and-long/2addr v8, v1

    long-to-int v6, v8

    int-to-char v6, v6

    aput-char v6, v7, v5

    .line 411
    const/16 v5, 0x8

    shr-long v5, v1, v5

    .line 409
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move-wide v1, v5

    goto :goto_6

    .line 394
    :cond_7
    const/16 v6, 0x384

    if-eq v5, v6, :cond_8

    const/16 v6, 0x385

    if-eq v5, v6, :cond_8

    const/16 v6, 0x386

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39c

    if-eq v5, v6, :cond_8

    const/16 v6, 0x3a0

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39b

    if-eq v5, v6, :cond_8

    const/16 v6, 0x39a

    if-ne v5, v6, :cond_b

    .line 401
    :cond_8
    add-int/lit8 p2, v4, -0x1

    .line 402
    const/4 v0, 0x1

    goto :goto_5

    .line 413
    :cond_9
    invoke-virtual {p3, v7}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 417
    :cond_a
    return p2

    :cond_b
    move p2, v4

    goto :goto_5

    :cond_c
    move p2, v4

    goto/16 :goto_1
.end method

.method private static a([IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 141
    aget v0, p0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    .line 143
    aget v0, p0, v1

    shl-int/lit8 v0, v0, 0x1

    new-array v6, v0, [I

    move v0, v1

    move v2, v1

    .line 147
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_1

    if-nez v0, :cond_1

    .line 148
    add-int/lit8 v4, p1, 0x1

    aget v7, p0, p1

    .line 149
    const/16 v8, 0x384

    if-ge v7, v8, :cond_0

    .line 150
    div-int/lit8 v8, v7, 0x1e

    aput v8, v5, v2

    .line 151
    add-int/lit8 v8, v2, 0x1

    rem-int/lit8 v7, v7, 0x1e

    aput v7, v5, v8

    .line 152
    add-int/lit8 v2, v2, 0x2

    move p1, v4

    goto :goto_0

    .line 154
    :cond_0
    sparse-switch v7, :sswitch_data_0

    move p1, v4

    goto :goto_0

    .line 156
    :sswitch_0
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 158
    goto :goto_0

    .line 161
    :sswitch_1
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 163
    goto :goto_0

    .line 166
    :sswitch_2
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 168
    goto :goto_0

    .line 177
    :sswitch_3
    const/16 v8, 0x391

    aput v8, v5, v2

    .line 178
    aput v7, v6, v2

    .line 179
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    .line 180
    goto :goto_0

    .line 183
    :sswitch_4
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 184
    goto :goto_0

    .line 190
    :cond_1
    invoke-static {v5, v6, v2, p2}, Lek;->a([I[IILjava/lang/StringBuffer;)V

    .line 191
    return p1

    .line 154
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method static a([I)Lbj;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x64

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 87
    const/4 v0, 0x1

    .line 88
    const/4 v1, 0x2

    aget v0, p0, v0

    .line 89
    :goto_0
    const/4 v3, 0x0

    aget v3, p0, v3

    if-ge v1, v3, :cond_1

    .line 90
    sparse-switch v0, :sswitch_data_0

    .line 115
    add-int/lit8 v0, v1, -0x1

    .line 116
    invoke-static {p0, v0, v2}, Lek;->a([IILjava/lang/StringBuffer;)I

    move-result v0

    .line 120
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 121
    add-int/lit8 v1, v0, 0x1

    aget v0, p0, v0

    goto :goto_0

    .line 92
    :sswitch_0
    invoke-static {p0, v1, v2}, Lek;->a([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 96
    :sswitch_1
    invoke-static {v0, p0, v1, v2}, Lek;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 100
    :sswitch_2
    invoke-static {p0, v1, v2}, Lek;->b([IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 104
    :sswitch_3
    invoke-static {v0, p0, v1, v2}, Lek;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 108
    :sswitch_4
    invoke-static {v0, p0, v1, v2}, Lek;->a(I[IILjava/lang/StringBuffer;)I

    move-result v0

    goto :goto_1

    .line 123
    :cond_0
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 126
    :cond_1
    new-instance v0, Lbj;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1, v4, v4}, Lbj;-><init>([BLjava/lang/String;Ljava/util/Vector;Lfd;)V

    return-object v0

    .line 90
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method private static a([II)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 516
    move v3, v1

    move-object v4, v2

    .line 517
    :goto_0
    if-ge v3, p1, :cond_1

    .line 518
    sget-object v0, Lek;->a:[Ljava/lang/String;

    sub-int v5, p1, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    aget v5, p0, v3

    invoke-static {v0, v5}, Lek;->a(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 519
    if-nez v4, :cond_0

    .line 517
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v4, v0

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lek;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 529
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 530
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x31

    if-ne v1, v3, :cond_3

    .line 532
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 536
    :goto_3
    if-nez v0, :cond_2

    .line 538
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_2
    return-object v0

    .line 529
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x30

    const/4 v1, 0x0

    .line 551
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 552
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 554
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    div-int/lit8 v4, p1, 0x64

    .line 557
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v5, v0, 0xa

    .line 558
    rem-int/lit8 v6, p1, 0xa

    move-object v0, v2

    move v2, v1

    .line 560
    :goto_1
    if-ge v2, v6, :cond_1

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lek;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 560
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 564
    :goto_2
    if-ge v2, v5, :cond_2

    .line 565
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lek;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 564
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_2

    .line 568
    :cond_2
    :goto_3
    if-ge v1, v4, :cond_3

    .line 569
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lek;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 571
    :cond_3
    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 582
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 583
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 584
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 585
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 587
    const/16 v2, 0x30

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    move v2, v1

    :goto_1
    const/4 v6, -0x1

    if-le v0, v6, :cond_1

    .line 592
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 593
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 594
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 595
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 597
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 599
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 600
    add-int/lit8 v6, v0, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 602
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 603
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 605
    add-int v8, v6, v7

    add-int/2addr v8, v2

    rem-int/lit16 v8, v8, 0x3e8

    .line 606
    add-int/2addr v6, v7

    add-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x3e8

    .line 608
    add-int/lit8 v6, v0, 0x2

    rem-int/lit8 v7, v8, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 609
    add-int/lit8 v6, v0, 0x1

    div-int/lit8 v7, v8, 0xa

    rem-int/lit8 v7, v7, 0xa

    add-int/lit8 v7, v7, 0x30

    int-to-char v7, v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 610
    div-int/lit8 v6, v8, 0x64

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 590
    add-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 612
    :cond_1
    return-object v5
.end method

.method private static a([I[IILjava/lang/StringBuffer;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x391

    const/16 v8, 0x1c

    const/16 v7, 0x1a

    const/16 v6, 0x1d

    const/4 v1, 0x0

    .line 218
    move v4, v1

    move v2, v1

    move v3, v1

    .line 221
    :goto_0
    if-ge v4, p2, :cond_15

    .line 222
    aget v0, p0, v4

    .line 224
    packed-switch v3, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 316
    :goto_1
    if-eqz v0, :cond_1

    .line 318
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 320
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 321
    goto :goto_0

    .line 227
    :pswitch_0
    if-ge v0, v7, :cond_2

    .line 229
    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_1

    .line 231
    :cond_2
    if-ne v0, v7, :cond_3

    .line 232
    const/16 v0, 0x20

    goto :goto_1

    .line 233
    :cond_3
    const/16 v5, 0x1b

    if-ne v0, v5, :cond_4

    .line 234
    const/4 v3, 0x1

    move v0, v1

    goto :goto_1

    .line 235
    :cond_4
    if-ne v0, v8, :cond_5

    .line 236
    const/4 v3, 0x2

    move v0, v1

    goto :goto_1

    .line 237
    :cond_5
    if-ne v0, v6, :cond_6

    .line 240
    const/4 v2, 0x4

    move v0, v1

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    .line 241
    :cond_6
    if-ne v0, v9, :cond_0

    .line 242
    aget v0, p1, v4

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1

    .line 249
    :pswitch_1
    if-ge v0, v7, :cond_7

    .line 250
    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    goto :goto_1

    .line 252
    :cond_7
    if-ne v0, v7, :cond_8

    .line 253
    const/16 v0, 0x20

    goto :goto_1

    .line 254
    :cond_8
    if-ne v0, v8, :cond_9

    move v0, v1

    move v3, v1

    .line 255
    goto :goto_1

    .line 256
    :cond_9
    if-ne v0, v8, :cond_a

    .line 257
    const/4 v3, 0x2

    move v0, v1

    goto :goto_1

    .line 258
    :cond_a
    if-ne v0, v6, :cond_b

    .line 261
    const/4 v2, 0x4

    move v0, v1

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    .line 262
    :cond_b
    if-ne v0, v9, :cond_0

    .line 263
    aget v0, p1, v4

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1

    .line 270
    :pswitch_2
    const/16 v5, 0x19

    if-ge v0, v5, :cond_c

    .line 271
    sget-object v5, Lek;->b:[C

    aget-char v0, v5, v0

    goto :goto_1

    .line 273
    :cond_c
    const/16 v5, 0x19

    if-ne v0, v5, :cond_d

    .line 274
    const/4 v3, 0x3

    move v0, v1

    goto :goto_1

    .line 275
    :cond_d
    if-ne v0, v7, :cond_e

    .line 276
    const/16 v0, 0x20

    goto :goto_1

    .line 277
    :cond_e
    const/16 v5, 0x1b

    if-ne v0, v5, :cond_f

    move v0, v1

    goto :goto_1

    .line 279
    :cond_f
    if-ne v0, v8, :cond_10

    move v0, v1

    move v3, v1

    .line 280
    goto :goto_1

    .line 281
    :cond_10
    if-ne v0, v6, :cond_11

    .line 284
    const/4 v2, 0x4

    move v0, v1

    move v10, v3

    move v3, v2

    move v2, v10

    goto :goto_1

    .line 285
    :cond_11
    if-ne v0, v9, :cond_0

    .line 286
    aget v0, p1, v4

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_1

    .line 293
    :pswitch_3
    if-ge v0, v6, :cond_12

    .line 294
    sget-object v5, Lek;->a:[C

    aget-char v0, v5, v0

    goto/16 :goto_1

    .line 296
    :cond_12
    if-ne v0, v6, :cond_13

    move v0, v1

    move v3, v1

    .line 297
    goto/16 :goto_1

    .line 298
    :cond_13
    if-ne v0, v9, :cond_0

    .line 299
    aget v0, p1, v4

    int-to-char v0, v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto/16 :goto_1

    .line 307
    :pswitch_4
    if-ge v0, v6, :cond_14

    .line 308
    sget-object v3, Lek;->a:[C

    aget-char v0, v3, v0

    move v3, v2

    goto/16 :goto_1

    .line 310
    :cond_14
    if-ne v0, v6, :cond_16

    move v0, v1

    move v3, v1

    .line 311
    goto/16 :goto_1

    .line 322
    :cond_15
    return-void

    :cond_16
    move v0, v1

    move v3, v2

    goto/16 :goto_1

    .line 224
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

.method private static b([IILjava/lang/StringBuffer;)I
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x384

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 429
    .line 432
    const/16 v0, 0xf

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    .line 434
    :cond_0
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v0, :cond_5

    .line 435
    add-int/lit8 v4, p1, 0x1

    aget v6, p0, p1

    .line 436
    aget v7, p0, v1

    if-ne v4, v7, :cond_1

    move v0, v3

    .line 439
    :cond_1
    if-ge v6, v8, :cond_3

    .line 440
    aput v6, v5, v2

    .line 441
    add-int/lit8 v2, v2, 0x1

    move p1, v4

    .line 453
    :goto_1
    rem-int/lit8 v4, v2, 0xf

    if-eqz v4, :cond_2

    const/16 v4, 0x386

    if-eq v6, v4, :cond_2

    if-eqz v0, :cond_0

    .line 460
    :cond_2
    invoke-static {v5, v2}, Lek;->a([II)Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    .line 462
    goto :goto_0

    .line 443
    :cond_3
    if-eq v6, v8, :cond_4

    const/16 v7, 0x385

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39c

    if-eq v6, v7, :cond_4

    const/16 v7, 0x3a0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39b

    if-eq v6, v7, :cond_4

    const/16 v7, 0x39a

    if-ne v6, v7, :cond_6

    .line 449
    :cond_4
    add-int/lit8 p1, v4, -0x1

    move v0, v3

    .line 450
    goto :goto_1

    .line 465
    :cond_5
    return p1

    :cond_6
    move p1, v4

    goto :goto_1
.end method
