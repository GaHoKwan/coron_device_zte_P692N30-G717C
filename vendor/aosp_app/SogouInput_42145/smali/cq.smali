.class public final Lcq;
.super Lda;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final a:[C

.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcq;->a:[C

    .line 45
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcq;->a:[I

    .line 53
    sget-object v0, Lcq;->a:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcq;->a:I

    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x14t 0x1t 0x0t 0x0t
        0x48t 0x1t 0x0t 0x0t
        0x44t 0x1t 0x0t 0x0t
        0x42t 0x1t 0x0t 0x0t
        0x28t 0x1t 0x0t 0x0t
        0x24t 0x1t 0x0t 0x0t
        0x22t 0x1t 0x0t 0x0t
        0x50t 0x1t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0xat 0x1t 0x0t 0x0t
        0xa8t 0x1t 0x0t 0x0t
        0xa4t 0x1t 0x0t 0x0t
        0xa2t 0x1t 0x0t 0x0t
        0x94t 0x1t 0x0t 0x0t
        0x92t 0x1t 0x0t 0x0t
        0x8at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
        0x64t 0x1t 0x0t 0x0t
        0x62t 0x1t 0x0t 0x0t
        0x34t 0x1t 0x0t 0x0t
        0x1at 0x1t 0x0t 0x0t
        0x58t 0x1t 0x0t 0x0t
        0x4ct 0x1t 0x0t 0x0t
        0x46t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x16t 0x1t 0x0t 0x0t
        0xb4t 0x1t 0x0t 0x0t
        0xb2t 0x1t 0x0t 0x0t
        0xact 0x1t 0x0t 0x0t
        0xa6t 0x1t 0x0t 0x0t
        0x96t 0x1t 0x0t 0x0t
        0x9at 0x1t 0x0t 0x0t
        0x6ct 0x1t 0x0t 0x0t
        0x66t 0x1t 0x0t 0x0t
        0x36t 0x1t 0x0t 0x0t
        0x3at 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xd4t 0x1t 0x0t 0x0t
        0xd2t 0x1t 0x0t 0x0t
        0xcat 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x76t 0x1t 0x0t 0x0t
        0xaet 0x1t 0x0t 0x0t
        0x26t 0x1t 0x0t 0x0t
        0xdat 0x1t 0x0t 0x0t
        0xd6t 0x1t 0x0t 0x0t
        0x32t 0x1t 0x0t 0x0t
        0x5et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lda;-><init>()V

    return-void
.end method

.method private static a(I)C
    .locals 2
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcq;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 189
    sget-object v1, Lcq;->a:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 190
    sget-object v1, Lcq;->a:[C

    aget-char v0, v1, v0

    return v0

    .line 188
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0
.end method

.method private static a([I)I
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 161
    array-length v7, p0

    move v0, v2

    move v6, v2

    .line 163
    :goto_0
    if-ge v0, v7, :cond_0

    .line 164
    aget v1, p0, v0

    add-int/2addr v1, v6

    .line 163
    add-int/lit8 v0, v0, 0x1

    move v6, v1

    goto :goto_0

    :cond_0
    move v5, v2

    move v0, v2

    .line 167
    :goto_1
    if-ge v5, v7, :cond_2

    .line 168
    aget v1, p0, v5

    shl-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x9

    div-int v3, v1, v6

    .line 169
    shr-int/lit8 v1, v3, 0x8

    .line 170
    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x7f

    if-le v3, v4, :cond_6

    .line 171
    add-int/lit8 v1, v1, 0x1

    move v4, v1

    .line 173
    :goto_2
    const/4 v1, 0x1

    if-lt v4, v1, :cond_1

    const/4 v1, 0x4

    if-le v4, v1, :cond_3

    .line 174
    :cond_1
    const/4 v0, -0x1

    .line 184
    :cond_2
    return v0

    .line 176
    :cond_3
    and-int/lit8 v1, v5, 0x1

    if-nez v1, :cond_4

    move v1, v2

    .line 177
    :goto_3
    if-ge v1, v4, :cond_5

    .line 178
    shl-int/lit8 v0, v0, 0x1

    or-int/lit8 v3, v0, 0x1

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_3

    .line 181
    :cond_4
    shl-int/2addr v0, v4

    .line 167
    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_6
    move v4, v1

    goto :goto_2
.end method

.method private static a(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x5a

    const/16 v6, 0x41

    .line 197
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    .line 198
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    .line 199
    :goto_0
    if-ge v2, v3, :cond_7

    .line 200
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .line 201
    const/16 v5, 0x61

    if-lt v0, v5, :cond_6

    const/16 v5, 0x64

    if-gt v0, v5, :cond_6

    .line 202
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    .line 204
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 242
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    add-int/lit8 v0, v2, 0x1

    .line 199
    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    .line 207
    :pswitch_0
    if-lt v5, v6, :cond_0

    if-gt v5, v7, :cond_0

    .line 208
    add-int/lit8 v0, v5, 0x20

    int-to-char v0, v0

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 215
    :pswitch_1
    if-lt v5, v6, :cond_1

    if-gt v5, v7, :cond_1

    .line 216
    add-int/lit8 v0, v5, -0x40

    int-to-char v0, v0

    goto :goto_1

    .line 218
    :cond_1
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 223
    :pswitch_2
    if-lt v5, v6, :cond_2

    const/16 v0, 0x45

    if-gt v5, v0, :cond_2

    .line 224
    add-int/lit8 v0, v5, -0x26

    int-to-char v0, v0

    goto :goto_1

    .line 225
    :cond_2
    const/16 v0, 0x46

    if-lt v5, v0, :cond_3

    const/16 v0, 0x57

    if-gt v5, v0, :cond_3

    .line 226
    add-int/lit8 v0, v5, -0xb

    int-to-char v0, v0

    goto :goto_1

    .line 228
    :cond_3
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 233
    :pswitch_3
    if-lt v5, v6, :cond_4

    const/16 v0, 0x4f

    if-gt v5, v0, :cond_4

    .line 234
    add-int/lit8 v0, v5, -0x20

    int-to-char v0, v0

    goto :goto_1

    .line 235
    :cond_4
    if-ne v5, v7, :cond_5

    .line 236
    const/16 v0, 0x3a

    goto :goto_1

    .line 238
    :cond_5
    invoke-static {}, Lg;->a()Lg;

    move-result-object v0

    throw v0

    .line 246
    :cond_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v2

    goto :goto_2

    .line 249
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 254
    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    invoke-static {p0, v1, v2}, Lcq;->a(Ljava/lang/StringBuffer;II)V

    .line 255
    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcq;->a(Ljava/lang/StringBuffer;II)V

    .line 256
    return-void
.end method

.method private static a(Ljava/lang/StringBuffer;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 260
    .line 261
    const/4 v2, 0x0

    .line 262
    add-int/lit8 v0, p1, -0x1

    move v4, v1

    move v6, v2

    move v2, v0

    move v0, v6

    :goto_0
    if-ltz v2, :cond_1

    .line 263
    const-string v3, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    .line 264
    add-int/lit8 v0, v4, 0x1

    if-le v0, p2, :cond_0

    move v0, v1

    .line 262
    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v4, v0

    move v0, v3

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    sget-object v2, Lcq;->a:[C

    rem-int/lit8 v0, v0, 0x2f

    aget-char v0, v2, v0

    if-eq v1, v0, :cond_2

    .line 269
    invoke-static {}, Ld;->a()Ld;

    move-result-object v0

    throw v0

    .line 271
    :cond_2
    return-void
.end method

.method private static a(Lbd;)[I
    .locals 13
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lbd;->a()I

    move-result v8

    move v0, v4

    .line 121
    :goto_0
    if-ge v0, v8, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Lbd;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    const/4 v1, 0x6

    new-array v9, v1, [I

    .line 132
    array-length v10, v9

    move v7, v0

    move v2, v4

    move v1, v4

    .line 134
    :goto_1
    if-ge v7, v8, :cond_7

    .line 135
    invoke-virtual {p0, v7}, Lbd;->a(I)Z

    move-result v5

    .line 136
    xor-int/2addr v5, v2

    if-eqz v5, :cond_2

    .line 137
    aget v5, v9, v1

    add-int/lit8 v5, v5, 0x1

    aput v5, v9, v1

    .line 134
    :goto_2
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_1

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v5, v10, -0x1

    if-ne v1, v5, :cond_5

    .line 140
    invoke-static {v9}, Lcq;->a([I)I

    move-result v5

    sget v11, Lcq;->a:I

    if-ne v5, v11, :cond_3

    .line 141
    new-array v1, v6, [I

    aput v0, v1, v4

    aput v7, v1, v3

    return-object v1

    .line 143
    :cond_3
    aget v5, v9, v4

    aget v11, v9, v3

    add-int/2addr v5, v11

    add-int/2addr v0, v5

    move v5, v6

    .line 144
    :goto_3
    if-ge v5, v10, :cond_4

    .line 145
    add-int/lit8 v11, v5, -0x2

    aget v12, v9, v5

    aput v12, v9, v11

    .line 144
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 147
    :cond_4
    add-int/lit8 v5, v10, -0x2

    aput v4, v9, v5

    .line 148
    add-int/lit8 v5, v10, -0x1

    aput v4, v9, v5

    .line 149
    add-int/lit8 v1, v1, -0x1

    .line 153
    :goto_4
    aput v3, v9, v1

    .line 154
    if-nez v2, :cond_6

    move v2, v3

    goto :goto_2

    .line 151
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    move v2, v4

    .line 154
    goto :goto_2

    .line 157
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
    .line 58
    invoke-static {p2}, Lcq;->a(Lbd;)[I

    move-result-object v3

    .line 59
    const/4 v0, 0x1

    aget v0, v3, v0

    .line 60
    invoke-virtual {p2}, Lbd;->a()I

    move-result v4

    .line 63
    :goto_0
    if-ge v0, v4, :cond_0

    invoke-virtual {p2, v0}, Lbd;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v5, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 68
    const/4 v1, 0x6

    new-array v6, v1, [I

    .line 72
    :goto_1
    invoke-static {p2, v0, v6}, Lcq;->a(Lbd;I[I)V

    .line 73
    invoke-static {v6}, Lcq;->a([I)I

    move-result v1

    .line 74
    if-gez v1, :cond_1

    .line 75
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 77
    :cond_1
    invoke-static {v1}, Lcq;->a(I)C

    move-result v7

    .line 78
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 80
    const/4 v1, 0x0

    move v2, v0

    :goto_2
    array-length v8, v6

    if-ge v1, v8, :cond_7

    .line 81
    aget v8, v6, v1

    add-int/2addr v2, v8

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 84
    :goto_3
    if-ge v1, v4, :cond_2

    invoke-virtual {p2, v1}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    :cond_2
    const/16 v2, 0x2a

    if-ne v7, v2, :cond_6

    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 91
    if-eq v1, v4, :cond_3

    invoke-virtual {p2, v1}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 92
    :cond_3
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 95
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v4, 0x2

    if-ge v2, v4, :cond_5

    .line 97
    invoke-static {}, Lk;->a()Lk;

    move-result-object v0

    throw v0

    .line 100
    :cond_5
    invoke-static {v5}, Lcq;->a(Ljava/lang/StringBuffer;)V

    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 104
    invoke-static {v5}, Lcq;->a(Ljava/lang/StringBuffer;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v4, 0x1

    aget v4, v3, v4

    const/4 v5, 0x0

    aget v3, v3, v5

    add-int/2addr v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    .line 107
    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    .line 108
    new-instance v1, Ln;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Lp;

    const/4 v6, 0x0

    new-instance v7, Lp;

    int-to-float v8, p1

    invoke-direct {v7, v3, v8}, Lp;-><init>(FF)V

    aput-object v7, v5, v6

    const/4 v3, 0x1

    new-instance v6, Lp;

    int-to-float v7, p1

    invoke-direct {v6, v0, v7}, Lp;-><init>(FF)V

    aput-object v6, v5, v3

    sget-object v0, La;->j:La;

    invoke-direct {v1, v2, v4, v5, v0}, Ln;-><init>(Ljava/lang/String;[B[Lp;La;)V

    return-object v1

    :cond_6
    move v0, v1

    goto/16 :goto_1

    :cond_7
    move v1, v2

    goto :goto_3
.end method
