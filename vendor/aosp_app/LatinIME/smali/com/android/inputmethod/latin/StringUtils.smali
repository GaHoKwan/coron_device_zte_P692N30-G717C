.class public final Lcom/android/inputmethod/latin/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static appendToCsvIfNotExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 49
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    .end local p0
    :goto_0
    return-object p0

    .line 50
    .restart local p0
    :cond_0
    invoke-static {p0, p1}, Lcom/android/inputmethod/latin/StringUtils;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object p0, p1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static codePointCount(Ljava/lang/String;)I
    .locals 2
    .parameter "text"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->codePointCount(II)I

    move-result v0

    goto :goto_0
.end method

.method public static containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .parameter "key"
    .parameter "array"

    .prologue
    .line 37
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 38
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 40
    .end local v1           #element:Ljava/lang/String;
    :goto_1
    return v4

    .line 37
    .restart local v1       #element:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 40
    .end local v1           #element:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(CC)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 73
    if-eq p0, p1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 86
    if-ne p0, p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 88
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v2, v3

    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 91
    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v1, v4, :cond_4

    move v2, v3

    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 94
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/StringUtils;->equalsIgnoreCase(CC)Z

    move-result v4

    if-nez v4, :cond_5

    move v2, v3

    .line 95
    goto :goto_0

    .line 93
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equalsIgnoreCase(Ljava/lang/CharSequence;[CII)Z
    .locals 5
    .parameter "a"
    .parameter "b"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_1

    .line 114
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "array.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " offset="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_1
    if-nez p0, :cond_4

    .line 117
    if-nez p3, :cond_3

    .line 124
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 117
    goto :goto_0

    .line 118
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v3, p3, :cond_5

    move v1, v2

    .line 119
    goto :goto_0

    .line 120
    :cond_5
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 121
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int v4, p2, v0

    aget-char v4, p1, v4

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/StringUtils;->equalsIgnoreCase(CC)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 122
    goto :goto_0

    .line 120
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;ILjava/util/Locale;Z)I
    .locals 13
    .parameter "cs"
    .parameter "reqModes"
    .parameter "locale"
    .parameter "hasSpaceBefore"

    .prologue
    .line 222
    and-int/lit16 v11, p1, 0x6000

    if-nez v11, :cond_1

    .line 225
    and-int/lit16 v5, p1, 0x1000

    .line 390
    :cond_0
    :goto_0
    return v5

    .line 235
    :cond_1
    if-eqz p3, :cond_6

    .line 236
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 255
    .local v6, i:I
    :cond_2
    move v7, v6

    .line 256
    .local v7, j:I
    const/16 v9, 0x20

    .line 257
    .local v9, prevChar:C
    if-eqz p3, :cond_3

    add-int/lit8 v7, v7, -0x1

    .line 258
    :cond_3
    :goto_1
    if-lez v7, :cond_4

    .line 259
    add-int/lit8 v11, v7, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 260
    invoke-static {v9}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v11

    if-nez v11, :cond_8

    const/16 v11, 0x9

    if-eq v9, v11, :cond_8

    .line 263
    :cond_4
    if-lez v7, :cond_5

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 267
    :cond_5
    and-int/lit16 v5, p1, 0x7000

    goto :goto_0

    .line 238
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #prevChar:C
    :cond_6
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .restart local v6       #i:I
    :goto_2
    if-lez v6, :cond_2

    .line 239
    add-int/lit8 v11, v6, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 240
    .local v4, c:C
    const/16 v11, 0x22

    if-eq v4, v11, :cond_7

    const/16 v11, 0x27

    if-eq v4, v11, :cond_7

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v11

    const/16 v12, 0x15

    if-ne v11, v12, :cond_2

    .line 238
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 261
    .end local v4           #c:C
    .restart local v7       #j:I
    .restart local v9       #prevChar:C
    :cond_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 270
    :cond_9
    if-ne v6, v7, :cond_a

    .line 273
    and-int/lit16 v5, p1, 0x1000

    goto :goto_0

    .line 275
    :cond_a
    and-int/lit16 v11, p1, 0x4000

    if-nez v11, :cond_b

    .line 279
    and-int/lit16 v5, p1, 0x3000

    goto :goto_0

    .line 293
    :cond_b
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 294
    :goto_3
    if-lez v7, :cond_c

    .line 298
    add-int/lit8 v11, v7, -0x1

    invoke-interface {p0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 299
    .restart local v4       #c:C
    const/16 v11, 0x22

    if-eq v4, v11, :cond_d

    const/16 v11, 0x27

    if-eq v4, v11, :cond_d

    invoke-static {v4}, Ljava/lang/Character;->getType(C)I

    move-result v11

    const/16 v12, 0x16

    if-eq v11, v12, :cond_d

    .line 306
    .end local v4           #c:C
    :cond_c
    if-gtz v7, :cond_e

    and-int/lit16 v5, p1, 0x1000

    goto/16 :goto_0

    .line 294
    .restart local v4       #c:C
    :cond_d
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 307
    .end local v4           #c:C
    :cond_e
    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 313
    .restart local v4       #c:C
    const/16 v11, 0x3f

    if-eq v4, v11, :cond_f

    const/16 v11, 0x21

    if-ne v4, v11, :cond_10

    .line 314
    :cond_f
    and-int/lit16 v5, p1, 0x5000

    goto/16 :goto_0

    .line 316
    :cond_10
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_11

    if-gtz v7, :cond_12

    .line 317
    :cond_11
    and-int/lit16 v5, p1, 0x3000

    goto/16 :goto_0

    .line 343
    :cond_12
    const/4 v2, 0x0

    .line 344
    .local v2, START:I
    const/4 v3, 0x1

    .line 345
    .local v3, WORD:I
    const/4 v1, 0x2

    .line 346
    .local v1, PERIOD:I
    const/4 v0, 0x3

    .line 347
    .local v0, LETTER:I
    and-int/lit16 v5, p1, 0x7000

    .line 349
    .local v5, caps:I
    and-int/lit16 v8, p1, 0x3000

    .line 350
    .local v8, noCaps:I
    const/4 v10, 0x0

    .line 351
    .local v10, state:I
    :goto_4
    if-lez v7, :cond_17

    .line 352
    add-int/lit8 v7, v7, -0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 353
    packed-switch v10, :pswitch_data_0

    goto :goto_4

    .line 355
    :pswitch_0
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 356
    const/4 v10, 0x1

    goto :goto_4

    .line 357
    :cond_13
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_0

    move v5, v8

    .line 358
    goto/16 :goto_0

    .line 364
    :pswitch_1
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 365
    const/4 v10, 0x1

    goto :goto_4

    .line 366
    :cond_14
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_0

    .line 367
    const/4 v10, 0x2

    goto :goto_4

    .line 373
    :pswitch_2
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 374
    const/4 v10, 0x3

    goto :goto_4

    .line 380
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 381
    const/4 v10, 0x3

    goto :goto_4

    .line 382
    :cond_15
    const/16 v11, 0x2e

    if-ne v4, v11, :cond_16

    .line 383
    const/4 v10, 0x2

    goto :goto_4

    :cond_16
    move v5, v8

    .line 385
    goto/16 :goto_0

    .line 390
    :cond_17
    if-eqz v10, :cond_18

    const/4 v11, 0x3

    if-ne v11, v10, :cond_0

    :cond_18
    move v5, v8

    goto/16 :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static removeDupes(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 150
    :cond_0
    return-void

    .line 135
    :cond_1
    const/4 v1, 0x1

    .line 137
    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 138
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 140
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 141
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 142
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    add-int/lit8 v1, v1, -0x1

    .line 148
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 149
    goto :goto_0

    .line 140
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static removeFromCsvIfExists(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"
    .parameter "csv"

    .prologue
    .line 55
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, ""

    .line 62
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 56
    .restart local p1
    :cond_1
    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, elements:[Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/android/inputmethod/latin/StringUtils;->containsInArray(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 58
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Lcom/android/inputmethod/latin/CollectionUtils;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 59
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 60
    .local v1, element:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 62
    .end local v1           #element:Ljava/lang/String;
    :cond_3
    const-string v6, ","

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static toCodePointArray(Ljava/lang/String;)[I
    .locals 8
    .parameter "string"

    .prologue
    const/4 v7, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 170
    .local v0, characters:[C
    array-length v4, v0

    .line 171
    .local v4, length:I
    invoke-static {v0, v7, v4}, Ljava/lang/Character;->codePointCount([CII)I

    move-result v6

    new-array v2, v6, [I

    .line 172
    .local v2, codePoints:[I
    if-gtz v4, :cond_0

    .line 173
    new-array v2, v7, [I

    .line 183
    .end local v2           #codePoints:[I
    :goto_0
    return-object v2

    .line 175
    .restart local v2       #codePoints:[I
    :cond_0
    invoke-static {v0, v7}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 176
    .local v1, codePoint:I
    const/4 v3, 0x0

    .line 177
    .local v3, dsti:I
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    .line 178
    .local v5, srci:I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 179
    aput v1, v2, v3

    .line 180
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 182
    :cond_1
    aput v1, v2, v3

    goto :goto_0
.end method

.method public static toTitleCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .parameter "s"
    .parameter "locale"

    .prologue
    const/4 v3, 0x1

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_0

    .line 165
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
