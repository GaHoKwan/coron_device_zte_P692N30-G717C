.class final Leh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbd;

.field private final a:Leb;

.field private final a:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lbd;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Leb;

    invoke-direct {v0}, Leb;-><init>()V

    iput-object v0, p0, Leh;->a:Leb;

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Leh;->a:Ljava/lang/StringBuffer;

    .line 43
    iput-object p1, p0, Leh;->a:Lbd;

    .line 44
    return-void
.end method

.method static a(Lbd;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 105
    const/16 v1, 0x20

    if-le p2, v1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "extractNumberValueFromBitArray can\'t handle more than 32 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v0

    .line 110
    :goto_0
    if-ge v1, p2, :cond_2

    .line 111
    add-int v2, p1, v1

    invoke-virtual {p0, v2}, Lbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    const/4 v2, 0x1

    sub-int v3, p2, v1

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 110
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_2
    return v0
.end method

.method private a()Lea;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 162
    :goto_0
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->a(I)Lee;

    move-result-object v1

    .line 164
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v1}, Lee;->c()I

    move-result v2

    iput v2, v0, Leb;->a:I

    .line 166
    invoke-virtual {v1}, Lee;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {v1}, Lee;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    new-instance v0, Led;

    iget-object v1, p0, Leh;->a:Leb;

    iget v1, v1, Leb;->a:I

    iget-object v2, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Led;-><init>(ILjava/lang/String;)V

    .line 173
    :goto_1
    new-instance v1, Lea;

    invoke-direct {v1, v0, v4}, Lea;-><init>(Led;Z)V

    move-object v0, v1

    .line 188
    :goto_2
    return-object v0

    .line 171
    :cond_0
    new-instance v0, Led;

    iget-object v2, p0, Leh;->a:Leb;

    iget v2, v2, Leb;->a:I

    iget-object v3, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lee;->b()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Led;-><init>(ILjava/lang/String;I)V

    goto :goto_1

    .line 175
    :cond_1
    iget-object v0, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lee;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v1}, Lee;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    new-instance v1, Led;

    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    iget-object v2, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Led;-><init>(ILjava/lang/String;)V

    .line 179
    new-instance v0, Lea;

    invoke-direct {v0, v1, v4}, Lea;-><init>(Led;Z)V

    goto :goto_2

    .line 181
    :cond_2
    iget-object v0, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lee;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 184
    :cond_3
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->f(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->b()V

    .line 186
    iget-object v0, p0, Leh;->a:Leb;

    iget v1, v0, Leb;->a:I

    add-int/lit8 v1, v1, 0x4

    iput v1, v0, Leb;->a:I

    .line 188
    :cond_4
    new-instance v0, Lea;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lea;-><init>(Z)V

    goto :goto_2
.end method

.method private a(I)Lec;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x5a

    const/16 v2, 0xf

    const/4 v0, 0x5

    .line 275
    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v1

    .line 276
    if-ne v1, v2, :cond_0

    .line 277
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    .line 316
    :goto_0
    return-object v0

    .line 280
    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 281
    new-instance v0, Lec;

    add-int/lit8 v2, p1, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lec;-><init>(IC)V

    goto :goto_0

    .line 284
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v1

    .line 286
    const/16 v0, 0x40

    if-lt v1, v0, :cond_2

    if-ge v1, v3, :cond_2

    .line 287
    new-instance v0, Lec;

    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lec;-><init>(IC)V

    goto :goto_0

    .line 290
    :cond_2
    if-lt v1, v3, :cond_3

    const/16 v0, 0x74

    if-ge v1, v0, :cond_3

    .line 291
    new-instance v0, Lec;

    add-int/lit8 v2, p1, 0x7

    add-int/lit8 v1, v1, 0x7

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lec;-><init>(IC)V

    goto :goto_0

    .line 294
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v0

    .line 295
    packed-switch v0, :pswitch_data_0

    .line 319
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Decoding invalid ISO/IEC 646 value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 296
    :pswitch_0
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 297
    :pswitch_1
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 298
    :pswitch_2
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 299
    :pswitch_3
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 300
    :pswitch_4
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 301
    :pswitch_5
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 302
    :pswitch_6
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x29

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 303
    :pswitch_7
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 304
    :pswitch_8
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2b

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 305
    :pswitch_9
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 306
    :pswitch_a
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 307
    :pswitch_b
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 308
    :pswitch_c
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 309
    :pswitch_d
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3a

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 310
    :pswitch_e
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3b

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 311
    :pswitch_f
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3c

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 312
    :pswitch_10
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3d

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 313
    :pswitch_11
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3e

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 314
    :pswitch_12
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x3f

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 315
    :pswitch_13
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 316
    :pswitch_14
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x8

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto/16 :goto_0

    .line 295
    nop

    :pswitch_data_0
    .packed-switch 0xe8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private a()Led;
    .locals 4

    .prologue
    .line 139
    :cond_0
    iget-object v0, p0, Leh;->a:Leb;

    iget v2, v0, Leb;->a:I

    .line 141
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Leh;->c()Lea;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lea;->a()Z

    move-result v1

    .line 152
    :goto_0
    iget-object v3, p0, Leh;->a:Leb;

    iget v3, v3, Leb;->a:I

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    .line 153
    :goto_1
    if-nez v2, :cond_4

    if-nez v1, :cond_4

    .line 158
    :goto_2
    invoke-virtual {v0}, Lea;->a()Led;

    move-result-object v0

    return-object v0

    .line 144
    :cond_1
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    invoke-direct {p0}, Leh;->b()Lea;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lea;->a()Z

    move-result v1

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0}, Leh;->a()Lea;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lea;->a()Z

    move-result v1

    goto :goto_0

    .line 152
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 156
    :cond_4
    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method private a(I)Lee;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0xa

    .line 85
    add-int/lit8 v0, p1, 0x7

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    if-le v0, v1, :cond_1

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v1

    .line 87
    if-nez v1, :cond_0

    .line 88
    new-instance v0, Lee;

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    invoke-direct {v0, v1, v3, v3}, Lee;-><init>(III)V

    .line 97
    :goto_0
    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lee;

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v2, v1, v3}, Lee;-><init>(III)V

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v0

    .line 94
    add-int/lit8 v1, v0, -0x8

    div-int/lit8 v1, v1, 0xb

    .line 95
    add-int/lit8 v0, v0, -0x8

    rem-int/lit8 v2, v0, 0xb

    .line 97
    new-instance v0, Lee;

    add-int/lit8 v3, p1, 0x7

    invoke-direct {v0, v3, v1, v2}, Lee;-><init>(III)V

    goto :goto_0
.end method

.method private a(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 71
    add-int/lit8 v1, p1, 0x7

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    if-le v1, v2, :cond_2

    .line 72
    add-int/lit8 v1, p1, 0x4

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    if-gt v1, v2, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v0

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, p1

    .line 75
    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_3

    .line 76
    iget-object v2, p0, Leh;->a:Lbd;

    invoke-virtual {v2, v1}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Leh;->a:Lbd;

    add-int/lit8 v1, p1, 0x3

    invoke-virtual {v0, v1}, Lbd;->a(I)Z

    move-result v0

    goto :goto_0
.end method

.method private b()Lea;
    .locals 3

    .prologue
    .line 192
    :goto_0
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->b(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->a(I)Lec;

    move-result-object v0

    .line 194
    iget-object v1, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Lec;->c()I

    move-result v2

    iput v2, v1, Leb;->a:I

    .line 196
    invoke-virtual {v0}, Lec;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    new-instance v1, Led;

    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    iget-object v2, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Led;-><init>(ILjava/lang/String;)V

    .line 198
    new-instance v0, Lea;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lea;-><init>(Led;Z)V

    .line 215
    :goto_1
    return-object v0

    .line 200
    :cond_0
    iget-object v1, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lec;->a()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 204
    iget-object v0, p0, Leh;->a:Leb;

    iget v1, v0, Leb;->a:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Leb;->a:I

    .line 205
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->a()V

    .line 215
    :cond_2
    :goto_2
    new-instance v0, Lea;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lea;-><init>(Z)V

    goto :goto_1

    .line 206
    :cond_3
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 207
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    if-ge v0, v1, :cond_4

    .line 208
    iget-object v0, p0, Leh;->a:Leb;

    iget v1, v0, Leb;->a:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Leb;->a:I

    .line 213
    :goto_3
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->b()V

    goto :goto_2

    .line 210
    :cond_4
    iget-object v0, p0, Leh;->a:Leb;

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    iput v1, v0, Leb;->a:I

    goto :goto_3
.end method

.method private b(I)Lec;
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0xf

    const/4 v0, 0x5

    .line 342
    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v1

    .line 343
    if-ne v1, v2, :cond_0

    .line 344
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    .line 362
    :goto_0
    return-object v0

    .line 347
    :cond_0
    if-lt v1, v0, :cond_1

    if-ge v1, v2, :cond_1

    .line 348
    new-instance v0, Lec;

    add-int/lit8 v2, p1, 0x5

    add-int/lit8 v1, v1, 0x30

    add-int/lit8 v1, v1, -0x5

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lec;-><init>(IC)V

    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Leh;->a(II)I

    move-result v1

    .line 353
    const/16 v0, 0x20

    if-lt v1, v0, :cond_2

    const/16 v0, 0x3a

    if-ge v1, v0, :cond_2

    .line 354
    new-instance v0, Lec;

    add-int/lit8 v2, p1, 0x6

    add-int/lit8 v1, v1, 0x21

    int-to-char v1, v1

    invoke-direct {v0, v2, v1}, Lec;-><init>(IC)V

    goto :goto_0

    .line 357
    :cond_2
    packed-switch v1, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Decoding invalid alphanumeric value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    :pswitch_0
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x2a

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 359
    :pswitch_1
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x2c

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 360
    :pswitch_2
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x2d

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 361
    :pswitch_3
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x2e

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 362
    :pswitch_4
    new-instance v0, Lec;

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x2f

    invoke-direct {v0, v1, v2}, Lec;-><init>(IC)V

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private b(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    add-int/lit8 v2, p1, 0x5

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-le v2, v3, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    invoke-virtual {p0, p1, v4}, Leh;->a(II)I

    move-result v2

    .line 252
    if-lt v2, v4, :cond_2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_2

    move v1, v0

    .line 253
    goto :goto_0

    .line 256
    :cond_2
    add-int/lit8 v2, p1, 0x7

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-gt v2, v3, :cond_0

    .line 260
    const/4 v2, 0x7

    invoke-virtual {p0, p1, v2}, Leh;->a(II)I

    move-result v2

    .line 261
    const/16 v3, 0x40

    if-lt v2, v3, :cond_3

    const/16 v3, 0x74

    if-ge v2, v3, :cond_3

    move v1, v0

    .line 262
    goto :goto_0

    .line 265
    :cond_3
    add-int/lit8 v2, p1, 0x8

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-gt v2, v3, :cond_0

    .line 269
    const/16 v2, 0x8

    invoke-virtual {p0, p1, v2}, Leh;->a(II)I

    move-result v2

    .line 270
    const/16 v3, 0xe8

    if-lt v2, v3, :cond_4

    const/16 v3, 0xfd

    if-ge v2, v3, :cond_4

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private c()Lea;
    .locals 3

    .prologue
    .line 219
    :goto_0
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->b(I)Lec;

    move-result-object v0

    .line 221
    iget-object v1, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Lec;->c()I

    move-result v2

    iput v2, v1, Leb;->a:I

    .line 223
    invoke-virtual {v0}, Lec;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    new-instance v1, Led;

    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    iget-object v2, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Led;-><init>(ILjava/lang/String;)V

    .line 225
    new-instance v0, Lea;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lea;-><init>(Led;Z)V

    .line 243
    :goto_1
    return-object v0

    .line 228
    :cond_0
    iget-object v1, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lec;->a()C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 231
    :cond_1
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->e(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Leh;->a:Leb;

    iget v1, v0, Leb;->a:I

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Leb;->a:I

    .line 233
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->a()V

    .line 243
    :cond_2
    :goto_2
    new-instance v0, Lea;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lea;-><init>(Z)V

    goto :goto_1

    .line 234
    :cond_3
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    invoke-direct {p0, v0}, Leh;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Leh;->a:Leb;

    iget v0, v0, Leb;->a:I

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    if-ge v0, v1, :cond_4

    .line 236
    iget-object v0, p0, Leh;->a:Leb;

    iget v1, v0, Leb;->a:I

    add-int/lit8 v1, v1, 0x5

    iput v1, v0, Leb;->a:I

    .line 241
    :goto_3
    iget-object v0, p0, Leh;->a:Leb;

    invoke-virtual {v0}, Leb;->c()V

    goto :goto_2

    .line 238
    :cond_4
    iget-object v0, p0, Leh;->a:Leb;

    iget-object v1, p0, Leh;->a:Lbd;

    iget v1, v1, Lbd;->a:I

    iput v1, v0, Leb;->a:I

    goto :goto_3
.end method

.method private c(I)Z
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 323
    add-int/lit8 v2, p1, 0x5

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-le v2, v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-virtual {p0, p1, v4}, Leh;->a(II)I

    move-result v2

    .line 329
    if-lt v2, v4, :cond_2

    if-ge v2, v5, :cond_2

    move v1, v0

    .line 330
    goto :goto_0

    .line 333
    :cond_2
    add-int/lit8 v2, p1, 0x6

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-gt v2, v3, :cond_0

    .line 337
    const/4 v2, 0x6

    invoke-virtual {p0, p1, v2}, Leh;->a(II)I

    move-result v2

    .line 338
    if-lt v2, v5, :cond_3

    const/16 v3, 0x3f

    if-ge v2, v3, :cond_3

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private d(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 369
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    if-le v1, v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 373
    :goto_1
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    add-int v2, v1, p1

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-ge v2, v3, :cond_4

    .line 374
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 375
    iget-object v2, p0, Leh;->a:Lbd;

    add-int/lit8 v3, p1, 0x2

    invoke-virtual {v2, v3}, Lbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    :cond_3
    iget-object v2, p0, Leh;->a:Lbd;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lbd;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 383
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private e(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 388
    add-int/lit8 v1, p1, 0x3

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    if-le v1, v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, p1

    .line 392
    :goto_1
    add-int/lit8 v2, p1, 0x3

    if-ge v1, v2, :cond_2

    .line 393
    iget-object v2, p0, Leh;->a:Lbd;

    invoke-virtual {v2, v1}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 397
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private f(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 403
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Leh;->a:Lbd;

    iget v2, v2, Lbd;->a:I

    if-le v1, v2, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    .line 407
    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    add-int v2, v1, p1

    iget-object v3, p0, Leh;->a:Lbd;

    iget v3, v3, Lbd;->a:I

    if-ge v2, v3, :cond_2

    .line 408
    iget-object v2, p0, Leh;->a:Lbd;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lbd;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 407
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(II)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Leh;->a:Lbd;

    invoke-static {v0, p1, p2}, Leh;->a(Lbd;II)I

    move-result v0

    return v0
.end method

.method a(ILjava/lang/String;)Led;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Leh;->a:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 122
    if-eqz p2, :cond_0

    .line 123
    iget-object v0, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    iget-object v0, p0, Leh;->a:Leb;

    iput p1, v0, Leb;->a:I

    .line 128
    invoke-direct {p0}, Leh;->a()Led;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Led;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Led;

    iget-object v2, p0, Leh;->a:Leb;

    iget v2, v2, Leb;->a:I

    iget-object v3, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Led;->a()I

    move-result v1

    invoke-direct {v0, v2, v3, v1}, Led;-><init>(ILjava/lang/String;I)V

    .line 132
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Led;

    iget-object v1, p0, Leh;->a:Leb;

    iget v1, v1, Leb;->a:I

    iget-object v2, p0, Leh;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Led;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/StringBuffer;I)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    move-object v0, v1

    .line 50
    :goto_0
    invoke-virtual {p0, p2, v0}, Leh;->a(ILjava/lang/String;)Led;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Led;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    invoke-virtual {v2}, Led;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v2}, Led;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_1
    invoke-virtual {v2}, Led;->c()I

    move-result v3

    if-ne p2, v3, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 56
    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {v2}, Led;->c()I

    move-result p2

    goto :goto_0
.end method
