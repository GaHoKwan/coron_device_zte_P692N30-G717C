.class public final Lcl;
.super Lda;
.source "SourceFile"


# static fields
.field private static final a:[C

.field private static final a:[I

.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "0123456789-$:/.+ABCDTN"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcl;->a:[C

    .line 42
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcl;->a:[I

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcl;->b:[C

    return-void

    .line 42
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x60t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x42t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x48t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
        0x54t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1at 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
    .end array-data

    .line 56
    :array_1
    .array-data 0x2
        0x45t 0x0t
        0x2at 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x54t 0x0t
        0x4et 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lda;-><init>()V

    return-void
.end method

.method private static a([I)C
    .locals 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 226
    array-length v6, p0

    .line 229
    const v0, 0x7fffffff

    move v2, v4

    move v1, v4

    .line 230
    :goto_0
    if-ge v2, v6, :cond_2

    .line 231
    aget v3, p0, v2

    if-ge v3, v0, :cond_0

    .line 232
    aget v0, p0, v2

    .line 234
    :cond_0
    aget v3, p0, v2

    if-le v3, v1, :cond_1

    .line 235
    aget v1, p0, v2

    .line 230
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v5, v4

    move v2, v4

    move v3, v4

    .line 244
    :goto_1
    if-ge v5, v6, :cond_4

    .line 245
    aget v7, p0, v5

    if-le v7, v1, :cond_3

    .line 246
    const/4 v7, 0x1

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v5

    shl-int/2addr v7, v8

    or-int/2addr v2, v7

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 244
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 251
    :cond_4
    const/4 v5, 0x2

    if-eq v3, v5, :cond_5

    const/4 v5, 0x3

    if-ne v3, v5, :cond_7

    :cond_5
    move v3, v4

    .line 252
    :goto_2
    sget-object v5, Lcl;->a:[I

    array-length v5, v5

    if-ge v3, v5, :cond_7

    .line 253
    sget-object v5, Lcl;->a:[I

    aget v5, v5, v3

    if-ne v5, v2, :cond_6

    .line 254
    sget-object v0, Lcl;->a:[C

    aget-char v0, v0, v3

    .line 260
    :goto_3
    return v0

    .line 252
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 258
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 259
    if-gt v1, v0, :cond_2

    .line 260
    const/16 v0, 0x21

    goto :goto_3
.end method

.method private static a([CC)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 212
    if-eqz p0, :cond_0

    move v0, v1

    .line 213
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 214
    aget-char v2, p0, v0

    if-ne v2, p1, :cond_1

    .line 215
    const/4 v1, 0x1

    .line 219
    :cond_0
    return v1

    .line 213
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Lbd;)[I
    .locals 14
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 163
    invoke-virtual {p0}, Lbd;->a()I

    move-result v7

    move v0, v6

    .line 165
    :goto_0
    if-ge v0, v7, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lbd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    const/4 v1, 0x7

    new-array v8, v1, [I

    .line 176
    array-length v9, v8

    move v5, v0

    move v2, v6

    move v1, v6

    .line 178
    :goto_1
    if-ge v5, v7, :cond_6

    .line 179
    invoke-virtual {p0, v5}, Lbd;->a(I)Z

    move-result v3

    .line 180
    xor-int/2addr v3, v2

    if-eqz v3, :cond_2

    .line 181
    aget v3, v8, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v8, v1

    move v13, v2

    move v2, v1

    move v1, v0

    move v0, v13

    .line 178
    :goto_2
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v13, v0

    move v0, v1

    move v1, v2

    move v2, v13

    goto :goto_1

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v3, v9, -0x1

    if-ne v1, v3, :cond_5

    .line 185
    :try_start_0
    sget-object v3, Lcl;->b:[C

    invoke-static {v8}, Lcl;->a([I)C

    move-result v10

    invoke-static {v3, v10}, Lcl;->a([CC)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 187
    const/4 v3, 0x0

    sub-int v10, v5, v0

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v0, v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v10, 0x0

    invoke-virtual {p0, v3, v0, v10}, Lbd;->a(IIZ)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 188
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v10, 0x0

    aput v0, v3, v10

    const/4 v10, 0x1

    aput v5, v3, v10
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 191
    :catch_0
    move-exception v3

    .line 194
    :cond_3
    aget v3, v8, v6

    aget v10, v8, v12

    add-int/2addr v3, v10

    add-int/2addr v0, v3

    move v3, v4

    .line 195
    :goto_3
    if-ge v3, v9, :cond_4

    .line 196
    add-int/lit8 v10, v3, -0x2

    aget v11, v8, v3

    aput v11, v8, v10

    .line 195
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 198
    :cond_4
    add-int/lit8 v3, v9, -0x2

    aput v6, v8, v3

    .line 199
    add-int/lit8 v3, v9, -0x1

    aput v6, v8, v3

    .line 200
    add-int/lit8 v1, v1, -0x1

    .line 204
    :goto_4
    aput v12, v8, v1

    .line 205
    xor-int/lit8 v2, v2, 0x1

    move v13, v2

    move v2, v1

    move v1, v0

    move v0, v13

    goto :goto_2

    .line 202
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 208
    :cond_6
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
    .line 64
    invoke-static {p2}, Lcl;->a(Lbd;)[I

    move-result-object v4

    .line 65
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v4, v0

    .line 66
    const/4 v0, 0x1

    aget v0, v4, v0

    .line 67
    invoke-virtual {p2}, Lbd;->a()I

    move-result v5

    .line 70
    :goto_0
    if-ge v0, v5, :cond_0

    invoke-virtual {p2, v0}, Lbd;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 80
    :goto_1
    const/4 v1, 0x7

    new-array v7, v1, [I

    fill-array-data v7, :array_0

    .line 81
    invoke-static {p2, v0, v7}, Lcl;->a(Lbd;I[I)V

    .line 83
    invoke-static {v7}, Lcl;->a([I)C

    move-result v1

    .line 84
    const/16 v2, 0x21

    if-ne v1, v2, :cond_1

    .line 85
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 87
    :cond_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 89
    const/4 v1, 0x0

    move v2, v0

    :goto_2
    array-length v3, v7

    if-ge v1, v3, :cond_b

    .line 90
    aget v3, v7, v1

    add-int/2addr v2, v3

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :goto_3
    if-ge v1, v5, :cond_2

    invoke-virtual {p2, v1}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 97
    :cond_2
    if-lt v1, v5, :cond_a

    .line 100
    const/4 v3, 0x0

    .line 101
    const/4 v2, 0x0

    :goto_4
    array-length v8, v7

    if-ge v2, v8, :cond_3

    .line 102
    aget v8, v7, v2

    add-int/2addr v3, v8

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 105
    :cond_3
    sub-int v2, v1, v0

    sub-int/2addr v2, v3

    .line 108
    if-eq v1, v5, :cond_4

    div-int/lit8 v2, v2, 0x2

    if-ge v2, v3, :cond_4

    .line 109
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 113
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    .line 115
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 118
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    .line 119
    sget-object v2, Lcl;->b:[C

    invoke-static {v2, v3}, Lcl;->a([CC)Z

    move-result v2

    if-nez v2, :cond_6

    .line 122
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 126
    :cond_6
    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 128
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_7

    .line 131
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eq v5, v7, :cond_7

    .line 133
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v6, v2, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 126
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 140
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_9

    .line 142
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 151
    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v4, v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    .line 152
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 153
    new-instance v1, Ln;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lp;

    const/4 v6, 0x0

    new-instance v7, Lp;

    int-to-float v8, p1

    invoke-direct {v7, v2, v8}, Lp;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v2, 0x1

    new-instance v6, Lp;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lp;-><init>(FF)V

    aput-object v6, v5, v2

    sget-object v0, La;->k:La;

    invoke-direct {v1, v3, v4, v5, v0}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    return-object v1

    .line 148
    :cond_9
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    :cond_a
    move v0, v1

    goto/16 :goto_1

    :cond_b
    move v1, v2

    goto/16 :goto_3

    .line 80
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
