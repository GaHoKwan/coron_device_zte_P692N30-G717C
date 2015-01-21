.class public Ltmsdkobf/lo;
.super Landroid/telephony/PhoneNumberUtils;
.source "SourceFile"


# static fields
.field public static final CC:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "12593"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "17909"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "17951"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "17911"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10193"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "12583"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "12520"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "96688"

    aput-object v2, v0, v1

    sput-object v0, Ltmsdkobf/lo;->CC:[Ljava/lang/String;

    return-void
.end method

.method public static final c(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 464
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    .line 29
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 30
    sget-object v0, Ltmsdkobf/lo;->CC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 31
    .local v3, prefix:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 37
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_0
    return-object p0

    .line 30
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #prefix:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cG(Ljava/lang/String;)Z
    .locals 6
    .parameter "number"

    .prologue
    .line 65
    const/4 v4, 0x0

    .line 66
    .local v4, result:Z
    sget-object v0, Ltmsdkobf/lo;->CC:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 67
    .local v3, prex:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 68
    const/4 v4, 0x1

    .line 72
    .end local v3           #prex:Ljava/lang/String;
    :cond_0
    return v4

    .line 66
    .restart local v3       #prex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static cH(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phoneNumber"

    .prologue
    .line 81
    if-eqz p0, :cond_0

    .line 82
    invoke-static {p0}, Ltmsdkobf/lo;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 85
    :cond_0
    return-object p0
.end method

.method public static cI(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 95
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ltmsdkobf/lo;->isISODigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 99
    :goto_1
    return v1

    .line 94
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 99
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static cJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 111
    invoke-static {p0}, Ltmsdkobf/lo;->cF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ltmsdkobf/lo;->cK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, np:Ljava/lang/String;
    const/16 v1, 0x8

    invoke-static {v0, v1}, Ltmsdkobf/lo;->h(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static cK(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "phoneNumber"

    .prologue
    .line 124
    if-nez p0, :cond_0

    .line 125
    const/4 v5, 0x0

    .line 147
    :goto_0
    return-object v5

    .line 128
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 129
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 130
    .local v4, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 132
    .local v1, haveSeenPlus:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 134
    .local v0, c:C
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 135
    if-eqz v1, :cond_2

    .line 132
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    :cond_2
    const/4 v1, 0x1

    .line 140
    :cond_3
    invoke-static {v0}, Ltmsdkobf/lo;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 142
    :cond_4
    invoke-static {v0}, Ltmsdkobf/lo;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 147
    .end local v0           #c:C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static cL(Ljava/lang/String;)I
    .locals 5
    .parameter "a"

    .prologue
    .line 293
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 295
    .local v0, origLength:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 296
    .local v1, pIndex:I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 298
    .local v3, wIndex:I
    invoke-static {v1, v3}, Ltmsdkobf/lo;->e(II)I

    move-result v2

    .line 300
    .local v2, trimIndex:I
    if-gez v2, :cond_0

    .line 301
    add-int/lit8 v4, v0, -0x1

    .line 303
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private static e(II)I
    .locals 0
    .parameter "a"
    .parameter "b"

    .prologue
    .line 309
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 310
    if-ge p0, p1, :cond_1

    .line 316
    .end local p0
    :cond_0
    :goto_0
    return p0

    .restart local p0
    :cond_1
    move p0, p1

    .line 310
    goto :goto_0

    .line 311
    :cond_2
    if-gez p0, :cond_0

    .line 313
    if-ltz p1, :cond_3

    move p0, p1

    .line 314
    goto :goto_0

    .line 316
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "np"
    .parameter "numDigits"

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v5, 0x0

    .line 167
    :goto_0
    return-object v5

    .line 158
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 159
    .local v3, ret:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 161
    .local v2, length:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    move v4, v2

    .local v4, s:I
    :goto_1
    if-ltz v1, :cond_1

    sub-int v5, v4, v1

    if-gt v5, p1, :cond_1

    .line 162
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, c:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 167
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;I)Z
    .locals 8
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 338
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 340
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 367
    :pswitch_0
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 342
    .restart local v0       #c:C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    .line 343
    const/4 v2, 0x1

    .line 337
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :cond_2
    if-ne v0, v6, :cond_3

    .line 345
    const/4 v2, 0x2

    goto :goto_2

    .line 346
    :cond_3
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 351
    :pswitch_2
    if-ne v0, v6, :cond_4

    .line 352
    const/4 v2, 0x3

    goto :goto_2

    .line 353
    :cond_4
    if-ne v0, v7, :cond_5

    .line 354
    const/4 v2, 0x4

    goto :goto_2

    .line 355
    :cond_5
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 360
    :pswitch_3
    if-ne v0, v7, :cond_6

    .line 361
    const/4 v2, 0x5

    goto :goto_2

    .line 362
    :cond_6
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 374
    .end local v0           #c:C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static j(Ljava/lang/String;I)Z
    .locals 4
    .parameter "a"
    .parameter "len"

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 383
    .local v1, found:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 384
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 386
    .local v0, c:C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 387
    const/4 v1, 0x1

    .line 383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 393
    .end local v0           #c:C
    .end local v1           #found:Z
    :cond_2
    return v1
.end method

.method private static k(Ljava/lang/String;I)Z
    .locals 7
    .parameter "a"
    .parameter "len"

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 404
    const/4 v2, 0x0

    .line 405
    .local v2, state:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 406
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 408
    .local v0, c:C
    packed-switch v2, :pswitch_data_0

    .line 452
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    .end local v0           #c:C
    :cond_0
    :goto_1
    return v3

    .line 410
    .restart local v0       #c:C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 411
    const/4 v2, 0x1

    .line 405
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 412
    :cond_2
    if-ne v0, v5, :cond_3

    .line 413
    const/4 v2, 0x2

    goto :goto_2

    .line 414
    :cond_3
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 419
    :pswitch_1
    if-ne v0, v5, :cond_4

    .line 420
    const/4 v2, 0x3

    goto :goto_2

    .line 421
    :cond_4
    if-ne v0, v6, :cond_5

    .line 422
    const/4 v2, 0x4

    goto :goto_2

    .line 423
    :cond_5
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 428
    :pswitch_2
    if-ne v0, v6, :cond_6

    .line 429
    const/4 v2, 0x5

    goto :goto_2

    .line 430
    :cond_6
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 437
    :pswitch_3
    invoke-static {v0}, Ltmsdkobf/lo;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 438
    const/4 v2, 0x6

    goto :goto_2

    .line 439
    :cond_7
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 445
    :pswitch_4
    invoke-static {v0}, Ltmsdkobf/lo;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 447
    :cond_8
    invoke-static {v0}, Ltmsdkobf/lo;->c(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 457
    .end local v0           #c:C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 177
    invoke-static {p0}, Ltmsdkobf/lo;->cF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ltmsdkobf/lo;->cF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ltmsdkobf/lo;->n(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "a"
    .parameter "b"

    .prologue
    .line 198
    const/4 v7, 0x0

    .line 199
    .local v7, numNonDialableCharsInA:I
    const/4 v8, 0x0

    .line 201
    .local v8, numNonDialableCharsInB:I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 202
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 281
    :goto_0
    return v10

    .line 202
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 205
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 208
    :cond_4
    invoke-static {p0}, Ltmsdkobf/lo;->cL(Ljava/lang/String;)I

    move-result v4

    .line 209
    .local v4, ia:I
    invoke-static {p1}, Ltmsdkobf/lo;->cL(Ljava/lang/String;)I

    move-result v5

    .line 210
    .local v5, ib:I
    const/4 v6, 0x0

    .line 212
    .local v6, matched:I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 214
    const/4 v9, 0x0

    .line 216
    .local v9, skipCmp:Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 218
    .local v0, ca:C
    invoke-static {v0}, Ltmsdkobf/lo;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 219
    add-int/lit8 v4, v4, -0x1

    .line 220
    const/4 v9, 0x1

    .line 221
    add-int/lit8 v7, v7, 0x1

    .line 224
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 226
    .local v1, cb:C
    invoke-static {v1}, Ltmsdkobf/lo;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_7

    .line 227
    add-int/lit8 v5, v5, -0x1

    .line 228
    const/4 v9, 0x1

    .line 229
    add-int/lit8 v8, v8, 0x1

    .line 232
    :cond_7
    if-nez v9, :cond_5

    .line 233
    if-eq v1, v0, :cond_9

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_9

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_9

    .line 242
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    :cond_8
    const/16 v10, 0x8

    if-ge v6, v10, :cond_b

    .line 243
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 244
    .local v2, effectiveALen:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 249
    .local v3, effectiveBLen:I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 250
    const/4 v10, 0x1

    goto :goto_0

    .line 236
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    .restart local v0       #ca:C
    .restart local v1       #cb:C
    .restart local v9       #skipCmp:Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    .line 237
    add-int/lit8 v5, v5, -0x1

    .line 238
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 253
    .end local v0           #ca:C
    .end local v1           #cb:C
    .end local v9           #skipCmp:Z
    .restart local v2       #effectiveALen:I
    .restart local v3       #effectiveBLen:I
    :cond_a
    const/4 v10, 0x0

    goto :goto_0

    .line 257
    .end local v2           #effectiveALen:I
    .end local v3           #effectiveBLen:I
    :cond_b
    const/16 v10, 0x8

    if-lt v6, v10, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 258
    :cond_c
    const/4 v10, 0x1

    goto :goto_0

    .line 269
    :cond_d
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Ltmsdkobf/lo;->i(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Ltmsdkobf/lo;->i(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 270
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 273
    :cond_e
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Ltmsdkobf/lo;->j(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Ltmsdkobf/lo;->k(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 274
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 277
    :cond_f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Ltmsdkobf/lo;->j(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Ltmsdkobf/lo;->k(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 278
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 281
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0
.end method
