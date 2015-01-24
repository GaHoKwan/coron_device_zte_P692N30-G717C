.class public Lorg/apache/commons/codec/language/ColognePhonetic;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"

# interfaces
.implements Lorg/apache/commons/codec/StringEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;,
        Lorg/apache/commons/codec/language/ColognePhonetic$CologneBuffer;
    }
.end annotation


# static fields
.field private static final PREPROCESS_MAP:[[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 274
    const/4 v0, 0x4

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    return-void

    :array_0
    .array-data 0x2
        0xc4t 0x0t
        0x41t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0xdct 0x0t
        0x55t 0x0t
    .end array-data

    :array_2
    .array-data 0x2
        0xd6t 0x0t
        0x4ft 0x0t
    .end array-data

    :array_3
    .array-data 0x2
        0xdft 0x0t
        0x53t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    return-void
.end method

.method private static arrayContains([CC)Z
    .locals 5
    .parameter "arr"
    .parameter "key"

    .prologue
    .line 285
    move-object v0, p0

    .local v0, arr$:[C
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v1, v0, v2

    .line 286
    .local v1, element:C
    if-ne v1, p1, :cond_0

    .line 287
    const/4 v4, 0x1

    .line 290
    .end local v1           #element:C
    :goto_1
    return v4

    .line 285
    .restart local v1       #element:C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 290
    .end local v1           #element:C
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private preprocess(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "text"

    .prologue
    .line 413
    sget-object v6, Ljava/util/Locale;->GERMAN:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 417
    .local v1, chrs:[C
    const/4 v4, 0x0

    .local v4, index:I
    :goto_0
    array-length v6, v1

    if-ge v4, v6, :cond_2

    .line 418
    aget-char v6, v1, v4

    const/16 v7, 0x5a

    if-le v6, v7, :cond_0

    .line 419
    sget-object v0, Lorg/apache/commons/codec/language/ColognePhonetic;->PREPROCESS_MAP:[[C

    .local v0, arr$:[[C
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 420
    .local v2, element:[C
    aget-char v6, v1, v4

    const/4 v7, 0x0

    aget-char v7, v2, v7

    if-ne v6, v7, :cond_1

    .line 421
    const/4 v6, 0x1

    aget-char v6, v2, v6

    aput-char v6, v1, v4

    .line 417
    .end local v0           #arr$:[[C
    .end local v2           #element:[C
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 419
    .restart local v0       #arr$:[[C
    .restart local v2       #element:[C
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 427
    .end local v0           #arr$:[[C
    .end local v2           #element:[C
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_2
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([C)V

    return-object v6
.end method


# virtual methods
.method public colognePhonetic(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "text"

    .prologue
    const/16 v13, 0x48

    const/16 v12, 0x30

    const/4 v11, 0x7

    const/16 v10, 0x2f

    const/4 v9, 0x3

    .line 305
    if-nez p1, :cond_0

    .line 306
    const/4 v8, 0x0

    .line 387
    :goto_0
    return-object v8

    .line 309
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->preprocess(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    new-instance v6, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v6, p0, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;I)V

    .line 312
    .local v6, output:Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;
    new-instance v2, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    invoke-direct {v2, p0, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;-><init>(Lorg/apache/commons/codec/language/ColognePhonetic;[C)V

    .line 316
    .local v2, input:Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;
    const/16 v3, 0x2d

    .line 317
    .local v3, lastChar:C
    const/16 v4, 0x2f

    .line 321
    .local v4, lastCode:C
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    .line 323
    .local v7, rightLength:I
    :cond_1
    :goto_1
    if-lez v7, :cond_1c

    .line 324
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->removeNext()C

    move-result v0

    .line 326
    .local v0, chr:C
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 327
    invoke-virtual {v2}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->getNextChar()C

    move-result v5

    .line 332
    .local v5, nextChar:C
    :goto_2
    new-array v8, v11, [C

    fill-array-data v8, :array_0

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 333
    const/16 v1, 0x30

    .line 380
    .local v1, code:C
    :goto_3
    const/16 v8, 0x2d

    if-eq v1, v8, :cond_4

    if-eq v4, v1, :cond_2

    if-ne v1, v12, :cond_3

    if-eq v4, v10, :cond_3

    :cond_2
    if-lt v1, v12, :cond_3

    const/16 v8, 0x38

    if-le v1, v8, :cond_4

    .line 381
    :cond_3
    invoke-virtual {v6, v1}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->addRight(C)V

    .line 384
    :cond_4
    move v3, v0

    .line 385
    move v4, v1

    goto :goto_1

    .line 329
    .end local v1           #code:C
    .end local v5           #nextChar:C
    :cond_5
    const/16 v5, 0x2d

    .restart local v5       #nextChar:C
    goto :goto_2

    .line 334
    :cond_6
    if-eq v0, v13, :cond_7

    const/16 v8, 0x41

    if-lt v0, v8, :cond_7

    const/16 v8, 0x5a

    if-le v0, v8, :cond_8

    .line 335
    :cond_7
    if-eq v4, v10, :cond_1

    .line 338
    const/16 v1, 0x2d

    .restart local v1       #code:C
    goto :goto_3

    .line 339
    .end local v1           #code:C
    :cond_8
    const/16 v8, 0x42

    if-eq v0, v8, :cond_9

    const/16 v8, 0x50

    if-ne v0, v8, :cond_a

    if-eq v5, v13, :cond_a

    .line 340
    :cond_9
    const/16 v1, 0x31

    .restart local v1       #code:C
    goto :goto_3

    .line 341
    .end local v1           #code:C
    :cond_a
    const/16 v8, 0x44

    if-eq v0, v8, :cond_b

    const/16 v8, 0x54

    if-ne v0, v8, :cond_c

    :cond_b
    new-array v8, v9, [C

    fill-array-data v8, :array_1

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_c

    .line 342
    const/16 v1, 0x32

    .restart local v1       #code:C
    goto :goto_3

    .line 343
    .end local v1           #code:C
    :cond_c
    const/4 v8, 0x4

    new-array v8, v8, [C

    fill-array-data v8, :array_2

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 344
    const/16 v1, 0x33

    .restart local v1       #code:C
    goto :goto_3

    .line 345
    .end local v1           #code:C
    :cond_d
    new-array v8, v9, [C

    fill-array-data v8, :array_3

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 346
    const/16 v1, 0x34

    .restart local v1       #code:C
    goto :goto_3

    .line 347
    .end local v1           #code:C
    :cond_e
    const/16 v8, 0x58

    if-ne v0, v8, :cond_f

    new-array v8, v9, [C

    fill-array-data v8, :array_4

    invoke-static {v8, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_f

    .line 348
    const/16 v1, 0x34

    .line 349
    .restart local v1       #code:C
    const/16 v8, 0x53

    invoke-virtual {v2, v8}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneInputBuffer;->addLeft(C)V

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 351
    .end local v1           #code:C
    :cond_f
    const/16 v8, 0x53

    if-eq v0, v8, :cond_10

    const/16 v8, 0x5a

    if-ne v0, v8, :cond_11

    .line 352
    :cond_10
    const/16 v1, 0x38

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 353
    .end local v1           #code:C
    :cond_11
    const/16 v8, 0x43

    if-ne v0, v8, :cond_16

    .line 354
    if-ne v4, v10, :cond_13

    .line 355
    const/16 v8, 0x9

    new-array v8, v8, [C

    fill-array-data v8, :array_5

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 356
    const/16 v1, 0x34

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 358
    .end local v1           #code:C
    :cond_12
    const/16 v1, 0x38

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 361
    .end local v1           #code:C
    :cond_13
    const/4 v8, 0x2

    new-array v8, v8, [C

    fill-array-data v8, :array_6

    invoke-static {v8, v3}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_14

    new-array v8, v11, [C

    fill-array-data v8, :array_7

    invoke-static {v8, v5}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-nez v8, :cond_15

    .line 363
    :cond_14
    const/16 v1, 0x38

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 365
    .end local v1           #code:C
    :cond_15
    const/16 v1, 0x34

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 368
    .end local v1           #code:C
    :cond_16
    new-array v8, v9, [C

    fill-array-data v8, :array_8

    invoke-static {v8, v0}, Lorg/apache/commons/codec/language/ColognePhonetic;->arrayContains([CC)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 369
    const/16 v1, 0x38

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 370
    .end local v1           #code:C
    :cond_17
    const/16 v8, 0x52

    if-ne v0, v8, :cond_18

    .line 371
    const/16 v1, 0x37

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 372
    .end local v1           #code:C
    :cond_18
    const/16 v8, 0x4c

    if-ne v0, v8, :cond_19

    .line 373
    const/16 v1, 0x35

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 374
    .end local v1           #code:C
    :cond_19
    const/16 v8, 0x4d

    if-eq v0, v8, :cond_1a

    const/16 v8, 0x4e

    if-ne v0, v8, :cond_1b

    .line 375
    :cond_1a
    const/16 v1, 0x36

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 377
    .end local v1           #code:C
    :cond_1b
    move v1, v0

    .restart local v1       #code:C
    goto/16 :goto_3

    .line 387
    .end local v0           #chr:C
    .end local v1           #code:C
    .end local v5           #nextChar:C
    :cond_1c
    invoke-virtual {v6}, Lorg/apache/commons/codec/language/ColognePhonetic$CologneOutputBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 332
    :array_0
    .array-data 0x2
        0x41t 0x0t
        0x45t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x59t 0x0t
    .end array-data

    .line 341
    nop

    :array_1
    .array-data 0x2
        0x53t 0x0t
        0x43t 0x0t
        0x5at 0x0t
    .end array-data

    .line 343
    nop

    :array_2
    .array-data 0x2
        0x57t 0x0t
        0x46t 0x0t
        0x50t 0x0t
        0x56t 0x0t
    .end array-data

    .line 345
    :array_3
    .array-data 0x2
        0x47t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
    .end array-data

    .line 347
    nop

    :array_4
    .array-data 0x2
        0x43t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
    .end array-data

    .line 355
    nop

    :array_5
    .array-data 0x2
        0x41t 0x0t
        0x48t 0x0t
        0x4bt 0x0t
        0x4ct 0x0t
        0x4ft 0x0t
        0x51t 0x0t
        0x52t 0x0t
        0x55t 0x0t
        0x58t 0x0t
    .end array-data

    .line 361
    nop

    :array_6
    .array-data 0x2
        0x53t 0x0t
        0x5at 0x0t
    .end array-data

    :array_7
    .array-data 0x2
        0x41t 0x0t
        0x48t 0x0t
        0x4ft 0x0t
        0x55t 0x0t
        0x4bt 0x0t
        0x51t 0x0t
        0x58t 0x0t
    .end array-data

    .line 368
    nop

    :array_8
    .array-data 0x2
        0x54t 0x0t
        0x44t 0x0t
        0x58t 0x0t
    .end array-data
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 391
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 392
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This method\'s parameter was expected to be of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". But actually it was of the type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "text"

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncodeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 406
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Lorg/apache/commons/codec/language/ColognePhonetic;->colognePhonetic(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method