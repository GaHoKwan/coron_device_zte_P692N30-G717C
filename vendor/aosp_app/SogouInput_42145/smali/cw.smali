.class public final Lcw;
.super Lda;
.source "SourceFile"


# static fields
.field private static final a:[I

.field static final a:[[I

.field private static final b:[I

.field private static final c:[I


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x5

    .line 49
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcw;->a:[I

    .line 60
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcw;->b:[I

    .line 61
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcw;->c:[I

    .line 66
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v3

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcw;->a:[[I

    return-void

    .line 49
    :array_0
    .array-data 0x4
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
    .end array-data

    .line 60
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 61
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lda;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcw;->a:I

    return-void
.end method

.method private static a(Lbd;)I
    .locals 3
    .parameter

    .prologue
    .line 222
    invoke-virtual {p0}, Lbd;->a()I

    move-result v1

    .line 223
    const/4 v0, 0x0

    .line 224
    :goto_0
    if-ge v0, v1, :cond_0

    .line 225
    invoke-virtual {p0, v0}, Lbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    :cond_0
    if-ne v0, v1, :cond_2

    .line 231
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_2
    return v0
.end method

.method private static a([I)I
    .locals 6
    .parameter

    .prologue
    .line 330
    const/16 v3, 0x6b

    .line 331
    const/4 v0, -0x1

    .line 332
    sget-object v1, Lcw;->a:[[I

    array-length v4, v1

    .line 333
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 334
    sget-object v2, Lcw;->a:[[I

    aget-object v2, v2, v1

    .line 335
    const/16 v5, 0xcc

    invoke-static {p0, v2, v5}, Lcw;->a([I[II)I

    move-result v2

    .line 336
    if-ge v2, v3, :cond_2

    move v0, v1

    .line 333
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    .line 341
    :cond_0
    if-ltz v0, :cond_1

    .line 342
    return v0

    .line 344
    :cond_1
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private a(Lbd;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 200
    iget v0, p0, Lcw;->a:I

    mul-int/lit8 v1, v0, 0xa

    .line 202
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lez v1, :cond_0

    if-ltz v0, :cond_0

    .line 203
    invoke-virtual {p1, v0}, Lbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    if-eqz v1, :cond_2

    .line 210
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 206
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 202
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 212
    :cond_2
    return-void
.end method

.method private static a(Lbd;IILjava/lang/StringBuffer;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x5

    .line 135
    const/16 v0, 0xa

    new-array v3, v0, [I

    .line 136
    new-array v4, v8, [I

    .line 137
    new-array v5, v8, [I

    move v0, p1

    .line 139
    :goto_0
    if-ge v0, p2, :cond_2

    .line 142
    invoke-static {p0, v0, v3}, Lcw;->a(Lbd;I[I)V

    move v2, v1

    .line 144
    :goto_1
    if-ge v2, v8, :cond_0

    .line 145
    shl-int/lit8 v6, v2, 0x1

    .line 146
    aget v7, v3, v6

    aput v7, v4, v2

    .line 147
    add-int/lit8 v6, v6, 0x1

    aget v6, v3, v6

    aput v6, v5, v2

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 150
    :cond_0
    invoke-static {v4}, Lcw;->a([I)I

    move-result v2

    .line 151
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 152
    invoke-static {v5}, Lcw;->a([I)I

    move-result v2

    .line 153
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 155
    :goto_2
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 156
    aget v6, v3, v0

    add-int/2addr v2, v6

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v0, v2

    .line 158
    goto :goto_0

    .line 159
    :cond_2
    return-void
.end method

.method private static a(Lbd;I[I)[I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    array-length v7, p2

    .line 288
    new-array v8, v7, [I

    .line 289
    invoke-virtual {p0}, Lbd;->a()I

    move-result v9

    move v0, p1

    move v1, v4

    move v2, v4

    .line 294
    :goto_0
    if-ge p1, v9, :cond_5

    .line 295
    invoke-virtual {p0, p1}, Lbd;->a(I)Z

    move-result v5

    .line 296
    xor-int/2addr v5, v2

    if-eqz v5, :cond_0

    .line 297
    aget v5, v8, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v8, v1

    .line 294
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 299
    :cond_0
    add-int/lit8 v5, v7, -0x1

    if-ne v1, v5, :cond_3

    .line 300
    const/16 v5, 0xcc

    invoke-static {v8, p2, v5}, Lcw;->a([I[II)I

    move-result v5

    const/16 v10, 0x6b

    if-ge v5, v10, :cond_1

    .line 301
    new-array v1, v6, [I

    aput v0, v1, v4

    aput p1, v1, v3

    return-object v1

    .line 303
    :cond_1
    aget v5, v8, v4

    aget v10, v8, v3

    add-int/2addr v5, v10

    add-int/2addr v0, v5

    move v5, v6

    .line 304
    :goto_2
    if-ge v5, v7, :cond_2

    .line 305
    add-int/lit8 v10, v5, -0x2

    aget v11, v8, v5

    aput v11, v8, v10

    .line 304
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 307
    :cond_2
    add-int/lit8 v5, v7, -0x2

    aput v4, v8, v5

    .line 308
    add-int/lit8 v5, v7, -0x1

    aput v4, v8, v5

    .line 309
    add-int/lit8 v1, v1, -0x1

    .line 313
    :goto_3
    aput v3, v8, v1

    .line 314
    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    .line 311
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v2, v4

    .line 314
    goto :goto_1

    .line 317
    :cond_5
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(ILbd;Ljava/util/Hashtable;)Ln;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0, p2}, Lcw;->a(Lbd;)[I

    move-result-object v5

    .line 83
    invoke-virtual {p0, p2}, Lcw;->b(Lbd;)[I

    move-result-object v6

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 86
    aget v1, v5, v3

    aget v7, v6, v2

    invoke-static {p2, v1, v7, v0}, Lcw;->a(Lbd;IILjava/lang/StringBuffer;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    if-eqz p3, :cond_4

    .line 91
    sget-object v0, Le;->f:Le;

    invoke-virtual {p3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    .line 94
    :goto_0
    if-nez v0, :cond_0

    .line 95
    sget-object v0, Lcw;->a:[I

    .line 100
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v2

    .line 102
    :goto_1
    array-length v9, v0

    if-ge v1, v9, :cond_3

    .line 103
    aget v9, v0, v1

    if-ne v8, v9, :cond_1

    move v0, v3

    .line 109
    :goto_2
    if-nez v0, :cond_2

    .line 110
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 102
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 113
    :cond_2
    new-instance v0, Ln;

    const/4 v1, 0x2

    new-array v1, v1, [Lp;

    new-instance v8, Lp;

    aget v5, v5, v3

    int-to-float v5, v5

    int-to-float v9, p1

    invoke-direct {v8, v5, v9}, Lp;-><init>(FF)V

    aput-object v8, v1, v2

    new-instance v5, Lp;

    aget v2, v6, v2

    int-to-float v2, v2

    int-to-float v6, p1

    invoke-direct {v5, v2, v6}, Lp;-><init>(FF)V

    aput-object v5, v1, v3

    sget-object v2, La;->l:La;

    invoke-direct {v0, v7, v4, v1, v2}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

.method a(Lbd;)[I
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-static {p1}, Lcw;->a(Lbd;)I

    move-result v0

    .line 171
    sget-object v1, Lcw;->b:[I

    invoke-static {p1, v0, v1}, Lcw;->a(Lbd;I[I)[I

    move-result-object v0

    .line 176
    const/4 v1, 0x1

    aget v1, v0, v1

    aget v2, v0, v3

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcw;->a:I

    .line 178
    aget v1, v0, v3

    invoke-direct {p0, p1, v1}, Lcw;->a(Lbd;I)V

    .line 180
    return-object v0
.end method

.method b(Lbd;)[I
    .locals 5
    .parameter

    .prologue
    .line 250
    invoke-virtual {p1}, Lbd;->b()V

    .line 252
    :try_start_0
    invoke-static {p1}, Lcw;->a(Lbd;)I

    move-result v0

    .line 253
    sget-object v1, Lcw;->c:[I

    invoke-static {p1, v0, v1}, Lcw;->a(Lbd;I[I)[I

    move-result-object v0

    .line 258
    const/4 v1, 0x0

    aget v1, v0, v1

    invoke-direct {p0, p1, v1}, Lcw;->a(Lbd;I)V

    .line 263
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 264
    const/4 v2, 0x0

    invoke-virtual {p1}, Lbd;->a()I

    move-result v3

    const/4 v4, 0x1

    aget v4, v0, v4

    sub-int/2addr v3, v4

    aput v3, v0, v2

    .line 265
    const/4 v2, 0x1

    invoke-virtual {p1}, Lbd;->a()I

    move-result v3

    sub-int v1, v3, v1

    aput v1, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {p1}, Lbd;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lbd;->b()V

    throw v0
.end method
