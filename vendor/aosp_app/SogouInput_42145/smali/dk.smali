.class public final Ldk;
.super Ldg;
.source "SourceFile"


# static fields
.field private static final a:[[I

.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I


# instance fields
.field private final a:Ljava/util/Vector;

.field private final b:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    .line 36
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Ldk;->e:[I

    .line 37
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Ldk;->f:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    sput-object v0, Ldk;->g:[I

    .line 39
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Ldk;->h:[I

    .line 40
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Ldk;->i:[I

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_5

    sput-object v0, Ldk;->j:[I

    .line 43
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_a

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    sput-object v0, Ldk;->a:[[I

    return-void

    .line 36
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x46t 0x0t 0x0t 0x0t
        0x7et 0x0t 0x0t 0x0t
    .end array-data

    .line 37
    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data

    .line 38
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xa1t 0x0t 0x0t 0x0t
        0xc1t 0x3t 0x0t 0x0t
        0xdft 0x7t 0x0t 0x0t
        0x9bt 0xat 0x0t 0x0t
    .end array-data

    .line 39
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0xct 0x4t 0x0t 0x0t
        0xect 0x5t 0x0t 0x0t
    .end array-data

    .line 40
    :array_4
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 41
    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_6
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ldg;-><init>()V

    .line 59
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldk;->a:Ljava/util/Vector;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ldk;->b:Ljava/util/Vector;

    .line 61
    return-void
.end method

.method private a(Lbd;Ldi;Z)Ldh;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 190
    iget-object v3, p0, Ldk;->b:[I

    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 192
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 193
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 194
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 195
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 196
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 197
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 198
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v3, v0

    .line 200
    if-eqz p3, :cond_2

    .line 201
    invoke-virtual {p2}, Ldi;->a()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v3}, Ldk;->b(Lbd;I[I)V

    .line 212
    :cond_0
    if-eqz p3, :cond_3

    const/16 v0, 0x10

    .line 213
    :goto_0
    invoke-static {v3}, Ldk;->a([I)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    div-float v4, v1, v2

    .line 215
    iget-object v5, p0, Ldk;->c:[I

    .line 216
    iget-object v6, p0, Ldk;->d:[I

    .line 217
    iget-object v7, p0, Ldk;->a:[F

    .line 218
    iget-object v8, p0, Ldk;->b:[F

    .line 220
    const/4 v1, 0x0

    :goto_1
    array-length v2, v3

    if-ge v1, v2, :cond_6

    .line 221
    aget v2, v3, v1

    int-to-float v2, v2

    div-float v9, v2, v4

    .line 222
    const/high16 v2, 0x3f00

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 223
    const/4 v10, 0x1

    if-ge v2, v10, :cond_4

    .line 224
    const/4 v2, 0x1

    .line 228
    :cond_1
    :goto_2
    shr-int/lit8 v10, v1, 0x1

    .line 229
    and-int/lit8 v11, v1, 0x1

    if-nez v11, :cond_5

    .line 230
    aput v2, v5, v10

    .line 231
    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v7, v10

    .line 220
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 203
    :cond_2
    invoke-virtual {p2}, Ldi;->a()[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0, v3}, Ldk;->a(Lbd;I[I)V

    .line 205
    const/4 v1, 0x0

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ge v1, v0, :cond_0

    .line 206
    aget v2, v3, v1

    .line 207
    aget v4, v3, v0

    aput v4, v3, v1

    .line 208
    aput v2, v3, v0

    .line 205
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 212
    :cond_3
    const/16 v0, 0xf

    goto :goto_0

    .line 225
    :cond_4
    const/16 v10, 0x8

    if-le v2, v10, :cond_1

    .line 226
    const/16 v2, 0x8

    goto :goto_2

    .line 233
    :cond_5
    aput v2, v6, v10

    .line 234
    int-to-float v2, v2

    sub-float v2, v9, v2

    aput v2, v8, v10

    goto :goto_3

    .line 238
    :cond_6
    invoke-direct {p0, p3, v0}, Ldk;->a(ZI)V

    .line 240
    const/4 v2, 0x0

    .line 241
    const/4 v1, 0x0

    .line 242
    array-length v0, v5

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    :goto_5
    if-ltz v0, :cond_7

    .line 243
    mul-int/lit8 v1, v3, 0x9

    .line 244
    aget v2, v5, v0

    add-int/2addr v1, v2

    .line 245
    aget v2, v5, v0

    add-int/2addr v2, v4

    .line 242
    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v4, v2

    goto :goto_5

    .line 247
    :cond_7
    const/4 v2, 0x0

    .line 248
    const/4 v1, 0x0

    .line 249
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_8

    .line 250
    mul-int/lit8 v2, v2, 0x9

    .line 251
    aget v7, v6, v0

    add-int/2addr v2, v7

    .line 252
    aget v7, v6, v0

    add-int/2addr v1, v7

    .line 249
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 254
    :cond_8
    mul-int/lit8 v0, v2, 0x3

    add-int v2, v3, v0

    .line 256
    if-eqz p3, :cond_b

    .line 257
    and-int/lit8 v0, v4, 0x1

    if-nez v0, :cond_9

    const/16 v0, 0xc

    if-gt v4, v0, :cond_9

    const/4 v0, 0x4

    if-ge v4, v0, :cond_a

    .line 258
    :cond_9
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 260
    :cond_a
    rsub-int/lit8 v0, v4, 0xc

    div-int/lit8 v0, v0, 0x2

    .line 261
    sget-object v1, Ldk;->i:[I

    aget v1, v1, v0

    .line 262
    rsub-int/lit8 v3, v1, 0x9

    .line 263
    const/4 v4, 0x0

    invoke-static {v5, v1, v4}, Ldl;->a([IIZ)I

    move-result v1

    .line 264
    const/4 v4, 0x1

    invoke-static {v6, v3, v4}, Ldl;->a([IIZ)I

    move-result v3

    .line 265
    sget-object v4, Ldk;->e:[I

    aget v4, v4, v0

    .line 266
    sget-object v5, Ldk;->g:[I

    aget v5, v5, v0

    .line 267
    new-instance v0, Ldh;

    mul-int/2addr v1, v4

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v2}, Ldh;-><init>(II)V

    .line 279
    :goto_7
    return-object v0

    .line 269
    :cond_b
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_c

    const/16 v0, 0xa

    if-gt v1, v0, :cond_c

    const/4 v0, 0x4

    if-ge v1, v0, :cond_d

    .line 270
    :cond_c
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 272
    :cond_d
    rsub-int/lit8 v0, v1, 0xa

    div-int/lit8 v0, v0, 0x2

    .line 273
    sget-object v1, Ldk;->j:[I

    aget v1, v1, v0

    .line 274
    rsub-int/lit8 v3, v1, 0x9

    .line 275
    const/4 v4, 0x1

    invoke-static {v5, v1, v4}, Ldl;->a([IIZ)I

    move-result v1

    .line 276
    const/4 v4, 0x0

    invoke-static {v6, v3, v4}, Ldl;->a([IIZ)I

    move-result v3

    .line 277
    sget-object v4, Ldk;->f:[I

    aget v4, v4, v0

    .line 278
    sget-object v5, Ldk;->h:[I

    aget v5, v5, v0

    .line 279
    new-instance v0, Ldh;

    mul-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v2}, Ldh;-><init>(II)V

    goto :goto_7
.end method

.method private a(Lbd;IZ[I)Ldi;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 335
    aget v0, p4, v6

    invoke-virtual {p1, v0}, Lbd;->a(I)Z

    move-result v1

    .line 336
    aget v0, p4, v6

    add-int/lit8 v0, v0, -0x1

    .line 338
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lbd;->a(I)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_0

    .line 339
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_0
    add-int/lit8 v5, v0, 0x1

    .line 342
    aget v0, p4, v6

    sub-int v1, v0, v5

    .line 344
    iget-object v2, p0, Ldk;->a:[I

    .line 345
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_1

    .line 346
    add-int/lit8 v3, v0, -0x1

    aget v3, v2, v3

    aput v3, v2, v0

    .line 345
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 348
    :cond_1
    aput v1, v2, v6

    .line 349
    sget-object v0, Ldk;->a:[[I

    invoke-static {v2, v0}, Ldk;->a([I[[I)I

    move-result v1

    .line 351
    aget v4, p4, v7

    .line 352
    if-eqz p3, :cond_2

    .line 354
    invoke-virtual {p1}, Lbd;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, v5

    .line 355
    invoke-virtual {p1}, Lbd;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v4, v0, v4

    .line 357
    :goto_2
    new-instance v0, Ldi;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v5, v2, v6

    aget v5, p4, v7

    aput v5, v2, v7

    move v5, p2

    invoke-direct/range {v0 .. v5}, Ldi;-><init>(I[IIII)V

    return-object v0

    :cond_2
    move v3, v5

    goto :goto_2
.end method

.method private a(Lbd;ZILjava/util/Hashtable;)Ldj;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Ldk;->a(Lbd;IZ)[I

    move-result-object v3

    .line 163
    invoke-direct {p0, p1, p3, p2, v3}, Ldk;->a(Lbd;IZ[I)Ldi;

    move-result-object v4

    .line 165
    if-nez p4, :cond_2

    move-object v2, v1

    .line 168
    :goto_0
    if-eqz v2, :cond_1

    .line 169
    const/4 v0, 0x0

    aget v0, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x4000

    div-float/2addr v0, v3

    .line 170
    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p1}, Lbd;->a()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    sub-float v0, v3, v0

    .line 174
    :cond_0
    new-instance v3, Lp;

    int-to-float v5, p3

    invoke-direct {v3, v0, v5}, Lp;-><init>(FF)V

    invoke-interface {v2, v3}, Lq;->a(Lp;)V

    .line 177
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v4, v0}, Ldk;->a(Lbd;Ldi;Z)Ldh;

    move-result-object v2

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v4, v0}, Ldk;->a(Lbd;Ldi;Z)Ldh;

    move-result-object v3

    .line 179
    new-instance v0, Ldj;

    invoke-virtual {v2}, Ldh;->a()I

    move-result v5

    mul-int/lit16 v5, v5, 0x63d

    invoke-virtual {v3}, Ldh;->a()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ldh;->b()I

    move-result v2

    invoke-virtual {v3}, Ldh;->b()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    invoke-direct {v0, v5, v2, v4}, Ldj;-><init>(IILdi;)V

    .line 183
    :goto_1
    return-object v0

    .line 165
    :cond_2
    sget-object v0, Le;->h:Le;

    invoke-virtual {p4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq;
    :try_end_0
    .catch Lk; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 183
    goto :goto_1
.end method

.method private static a(Ldj;Ldj;)Ln;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 113
    const-wide/32 v2, 0x453af5

    invoke-virtual {p0}, Ldj;->a()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-virtual {p1}, Ldj;->a()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    .line 114
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 116
    new-instance v4, Ljava/lang/StringBuffer;

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 117
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    :goto_0
    if-lez v0, :cond_0

    .line 118
    const/16 v3, 0x30

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    move v3, v1

    .line 123
    :goto_1
    const/16 v0, 0xd

    if-ge v2, v0, :cond_2

    .line 124
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 125
    and-int/lit8 v5, v2, 0x1

    if-nez v5, :cond_1

    mul-int/lit8 v0, v0, 0x3

    :cond_1
    add-int/2addr v3, v0

    .line 123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 127
    :cond_2
    rem-int/lit8 v0, v3, 0xa

    rsub-int/lit8 v0, v0, 0xa

    .line 128
    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    move v0, v1

    .line 131
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p0}, Ldj;->a()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->a()[Lp;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Ldj;->a()Ldi;

    move-result-object v2

    invoke-virtual {v2}, Ldi;->a()[Lp;

    move-result-object v2

    .line 135
    new-instance v3, Ln;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Lp;

    aget-object v7, v0, v1

    aput-object v7, v6, v1

    aget-object v0, v0, v8

    aput-object v0, v6, v8

    const/4 v0, 0x2

    aget-object v1, v2, v1

    aput-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v1, v2, v8

    aput-object v1, v6, v0

    sget-object v0, La;->m:La;

    invoke-direct {v3, v4, v5, v6, v0}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    return-object v3
.end method

.method private static a(Ljava/util/Vector;Ldj;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 89
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 93
    const/4 v1, 0x0

    .line 94
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldj;

    .line 96
    invoke-virtual {v0}, Ldj;->a()I

    move-result v3

    invoke-virtual {p1}, Ldj;->a()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 97
    invoke-virtual {v0}, Ldj;->a()V

    .line 98
    const/4 v0, 0x1

    .line 102
    :goto_1
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(ZI)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const/16 v11, 0xc

    const/4 v10, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 379
    iget-object v2, p0, Ldk;->c:[I

    invoke-static {v2}, Ldk;->a([I)I

    move-result v7

    .line 380
    iget-object v2, p0, Ldk;->d:[I

    invoke-static {v2}, Ldk;->a([I)I

    move-result v8

    .line 381
    add-int v2, v7, v8

    sub-int v9, v2, p2

    .line 382
    and-int/lit8 v3, v7, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    :goto_0
    if-ne v3, v2, :cond_1

    move v6, v1

    .line 383
    :goto_1
    and-int/lit8 v2, v8, 0x1

    if-ne v2, v1, :cond_2

    move v5, v1

    .line 390
    :goto_2
    if-eqz p1, :cond_5

    .line 391
    if-le v7, v11, :cond_3

    move v3, v1

    move v4, v0

    .line 396
    :goto_3
    if-le v8, v11, :cond_4

    move v2, v0

    move v0, v1

    .line 426
    :goto_4
    if-ne v9, v1, :cond_b

    .line 427
    if-eqz v6, :cond_9

    .line 428
    if-eqz v5, :cond_8

    .line 429
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_0
    move v2, v0

    .line 382
    goto :goto_0

    :cond_1
    move v6, v0

    goto :goto_1

    :cond_2
    move v5, v0

    .line 383
    goto :goto_2

    .line 393
    :cond_3
    if-ge v7, v10, :cond_1d

    move v3, v0

    move v4, v1

    .line 394
    goto :goto_3

    .line 398
    :cond_4
    if-ge v8, v10, :cond_1b

    move v2, v1

    .line 399
    goto :goto_4

    .line 402
    :cond_5
    const/16 v2, 0xb

    if-le v7, v2, :cond_6

    move v3, v1

    move v4, v0

    .line 407
    :goto_5
    const/16 v2, 0xa

    if-le v8, v2, :cond_7

    move v2, v0

    move v0, v1

    .line 408
    goto :goto_4

    .line 404
    :cond_6
    const/4 v2, 0x5

    if-ge v7, v2, :cond_1c

    move v3, v0

    move v4, v1

    .line 405
    goto :goto_5

    .line 409
    :cond_7
    if-ge v8, v10, :cond_1b

    move v2, v1

    .line 410
    goto :goto_4

    :cond_8
    move v3, v4

    move v12, v1

    move v1, v2

    move v2, v12

    .line 473
    :goto_6
    if-eqz v3, :cond_15

    .line 474
    if-eqz v2, :cond_14

    .line 475
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 433
    :cond_9
    if-nez v5, :cond_a

    .line 434
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_a
    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    .line 436
    goto :goto_6

    .line 438
    :cond_b
    const/4 v10, -0x1

    if-ne v9, v10, :cond_f

    .line 439
    if-eqz v6, :cond_d

    .line 440
    if-eqz v5, :cond_c

    .line 441
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_c
    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    .line 443
    goto :goto_6

    .line 445
    :cond_d
    if-nez v5, :cond_e

    .line 446
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_e
    move v2, v3

    move v3, v4

    .line 448
    goto :goto_6

    .line 450
    :cond_f
    if-nez v9, :cond_13

    .line 451
    if-eqz v6, :cond_12

    .line 452
    if-nez v5, :cond_10

    .line 453
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 456
    :cond_10
    if-ge v7, v8, :cond_11

    move v0, v1

    move v12, v2

    move v2, v3

    move v3, v1

    move v1, v12

    .line 458
    goto :goto_6

    :cond_11
    move v2, v1

    move v3, v4

    .line 461
    goto :goto_6

    .line 464
    :cond_12
    if-eqz v5, :cond_1a

    .line 465
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 470
    :cond_13
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 477
    :cond_14
    iget-object v3, p0, Ldk;->c:[I

    iget-object v4, p0, Ldk;->a:[F

    invoke-static {v3, v4}, Ldk;->a([I[F)V

    .line 479
    :cond_15
    if-eqz v2, :cond_16

    .line 480
    iget-object v2, p0, Ldk;->c:[I

    iget-object v3, p0, Ldk;->a:[F

    invoke-static {v2, v3}, Ldk;->b([I[F)V

    .line 482
    :cond_16
    if-eqz v1, :cond_18

    .line 483
    if-eqz v0, :cond_17

    .line 484
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 486
    :cond_17
    iget-object v1, p0, Ldk;->d:[I

    iget-object v2, p0, Ldk;->a:[F

    invoke-static {v1, v2}, Ldk;->a([I[F)V

    .line 488
    :cond_18
    if-eqz v0, :cond_19

    .line 489
    iget-object v0, p0, Ldk;->d:[I

    iget-object v1, p0, Ldk;->b:[F

    invoke-static {v0, v1}, Ldk;->b([I[F)V

    .line 492
    :cond_19
    return-void

    :cond_1a
    move v1, v2

    move v2, v3

    move v3, v4

    goto :goto_6

    :cond_1b
    move v2, v0

    goto/16 :goto_4

    :cond_1c
    move v3, v0

    move v4, v0

    goto/16 :goto_5

    :cond_1d
    move v3, v0

    move v4, v0

    goto/16 :goto_3
.end method

.method private static a(Ldj;Ldj;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 143
    invoke-virtual {p0}, Ldj;->a()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->a()I

    move-result v0

    .line 144
    invoke-virtual {p1}, Ldj;->a()Ldi;

    move-result-object v1

    invoke-virtual {v1}, Ldi;->a()I

    move-result v1

    .line 145
    if-nez v0, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 148
    :cond_1
    invoke-virtual {p0}, Ldj;->b()I

    move-result v0

    invoke-virtual {p1}, Ldj;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x4f

    .line 149
    invoke-virtual {p0}, Ldj;->a()Ldi;

    move-result-object v0

    invoke-virtual {v0}, Ldi;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x9

    invoke-virtual {p1}, Ldj;->a()Ldi;

    move-result-object v2

    invoke-virtual {v2}, Ldi;->a()I

    move-result v2

    add-int/2addr v0, v2

    .line 151
    const/16 v2, 0x48

    if-le v0, v2, :cond_2

    .line 152
    add-int/lit8 v0, v0, -0x1

    .line 154
    :cond_2
    if-le v0, v3, :cond_3

    .line 155
    add-int/lit8 v0, v0, -0x1

    .line 157
    :cond_3
    if-ne v1, v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lbd;IZ)[I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 287
    iget-object v6, p0, Ldk;->a:[I

    .line 288
    aput v4, v6, v4

    .line 289
    aput v4, v6, v3

    .line 290
    aput v4, v6, v10

    .line 291
    aput v4, v6, v11

    .line 293
    invoke-virtual {p1}, Lbd;->a()I

    move-result v7

    move v0, v4

    move v1, p2

    .line 295
    :goto_0
    if-ge v1, v7, :cond_0

    .line 296
    invoke-virtual {p1, v1}, Lbd;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 297
    :goto_1
    if-ne p3, v0, :cond_2

    :cond_0
    move v5, v1

    move v2, v0

    move v0, v1

    move v1, v4

    .line 306
    :goto_2
    if-ge v5, v7, :cond_7

    .line 307
    invoke-virtual {p1, v5}, Lbd;->a(I)Z

    move-result v8

    .line 308
    xor-int/2addr v8, v2

    if-eqz v8, :cond_3

    .line 309
    aget v8, v6, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v1

    .line 306
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    move v0, v4

    .line 296
    goto :goto_1

    .line 301
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_3
    if-ne v1, v11, :cond_5

    .line 312
    invoke-static {v6}, Ldk;->a([I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 313
    new-array v1, v10, [I

    aput v0, v1, v4

    aput v5, v1, v3

    return-object v1

    .line 315
    :cond_4
    aget v8, v6, v4

    aget v9, v6, v3

    add-int/2addr v8, v9

    add-int/2addr v0, v8

    .line 316
    aget v8, v6, v10

    aput v8, v6, v4

    .line 317
    aget v8, v6, v11

    aput v8, v6, v3

    .line 318
    aput v4, v6, v10

    .line 319
    aput v4, v6, v11

    .line 320
    add-int/lit8 v1, v1, -0x1

    .line 324
    :goto_4
    aput v3, v6, v1

    .line 325
    if-nez v2, :cond_6

    move v2, v3

    goto :goto_3

    .line 322
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v2, v4

    .line 325
    goto :goto_3

    .line 328
    :cond_7
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public a(ILbd;Ljava/util/Hashtable;)Ln;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0, p2, v3, p1, p3}, Ldk;->a(Lbd;ZILjava/util/Hashtable;)Ldj;

    move-result-object v0

    .line 65
    iget-object v1, p0, Ldk;->a:Ljava/util/Vector;

    invoke-static {v1, v0}, Ldk;->a(Ljava/util/Vector;Ldj;)V

    .line 66
    invoke-virtual {p2}, Lbd;->b()V

    .line 67
    invoke-direct {p0, p2, v8, p1, p3}, Ldk;->a(Lbd;ZILjava/util/Hashtable;)Ldj;

    move-result-object v0

    .line 68
    iget-object v1, p0, Ldk;->b:Ljava/util/Vector;

    invoke-static {v1, v0}, Ldk;->a(Ljava/util/Vector;Ldj;)V

    .line 69
    invoke-virtual {p2}, Lbd;->b()V

    .line 70
    iget-object v0, p0, Ldk;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    .line 71
    iget-object v0, p0, Ldk;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v6

    move v4, v3

    .line 72
    :goto_0
    if-ge v4, v5, :cond_2

    .line 73
    iget-object v0, p0, Ldk;->a:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldj;

    .line 74
    invoke-virtual {v0}, Ldj;->c()I

    move-result v1

    if-le v1, v8, :cond_1

    move v2, v3

    .line 75
    :goto_1
    if-ge v2, v6, :cond_1

    .line 76
    iget-object v1, p0, Ldk;->b:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldj;

    .line 77
    invoke-virtual {v1}, Ldj;->c()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 78
    invoke-static {v0, v1}, Ldk;->a(Ldj;Ldj;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    invoke-static {v0, v1}, Ldk;->a(Ldj;Ldj;)Ln;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 72
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Ldk;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 109
    iget-object v0, p0, Ldk;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 110
    return-void
.end method
