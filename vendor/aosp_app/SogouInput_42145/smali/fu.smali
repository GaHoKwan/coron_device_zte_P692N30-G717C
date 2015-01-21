.class public final Lfu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lfs;)I
    .locals 2
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lfu;->a(Lfs;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lfu;->a(Lfs;Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lfs;Z)I
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x5

    const/4 v5, 0x0

    .line 179
    .line 181
    const/4 v1, -0x1

    .line 190
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lfs;->a()I

    move-result v0

    move v8, v0

    .line 191
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lfs;->b()I

    move-result v0

    .line 192
    :goto_1
    invoke-virtual {p0}, Lfs;->a()[[B

    move-result-object v9

    move v7, v5

    move v3, v5

    .line 193
    :goto_2
    if-ge v7, v8, :cond_7

    move v4, v5

    move v6, v5

    .line 194
    :goto_3
    if-ge v4, v0, :cond_6

    .line 195
    if-eqz p1, :cond_3

    aget-object v2, v9, v7

    aget-byte v2, v2, v4

    .line 196
    :goto_4
    if-ne v2, v1, :cond_5

    .line 197
    add-int/lit8 v2, v6, 0x1

    .line 200
    if-ne v2, v10, :cond_4

    .line 201
    add-int/lit8 v3, v3, 0x3

    .line 194
    :cond_0
    :goto_5
    add-int/lit8 v4, v4, 0x1

    move v6, v2

    goto :goto_3

    .line 190
    :cond_1
    invoke-virtual {p0}, Lfs;->b()I

    move-result v0

    move v8, v0

    goto :goto_0

    .line 191
    :cond_2
    invoke-virtual {p0}, Lfs;->a()I

    move-result v0

    goto :goto_1

    .line 195
    :cond_3
    aget-object v2, v9, v4

    aget-byte v2, v2, v7

    goto :goto_4

    .line 202
    :cond_4
    if-le v2, v10, :cond_0

    .line 205
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 208
    :cond_5
    const/4 v1, 0x1

    move v11, v2

    move v2, v1

    move v1, v11

    .line 209
    goto :goto_5

    .line 193
    :cond_6
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_2

    .line 214
    :cond_7
    return v3
.end method

.method public static a(III)Z
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-static {p0}, Lfw;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid mask pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    packed-switch p0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid mask pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :pswitch_0
    add-int v0, p2, p1

    and-int/lit8 v0, v0, 0x1

    .line 173
    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 147
    :pswitch_1
    and-int/lit8 v0, p2, 0x1

    .line 148
    goto :goto_0

    .line 150
    :pswitch_2
    rem-int/lit8 v0, p1, 0x3

    goto :goto_0

    .line 153
    :pswitch_3
    add-int v0, p2, p1

    rem-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 156
    :pswitch_4
    ushr-int/lit8 v0, p2, 0x1

    div-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 157
    goto :goto_0

    .line 159
    :pswitch_5
    mul-int v0, p2, p1

    .line 160
    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    .line 161
    goto :goto_0

    .line 163
    :pswitch_6
    mul-int v0, p2, p1

    .line 164
    and-int/lit8 v1, v0, 0x1

    rem-int/lit8 v0, v0, 0x3

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_7
    mul-int v0, p2, p1

    .line 168
    rem-int/lit8 v0, v0, 0x3

    add-int v1, p2, p1

    and-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    .line 169
    goto :goto_0

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static b(Lfs;)I
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 38
    .line 39
    invoke-virtual {p0}, Lfs;->a()[[B

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lfs;->b()I

    move-result v5

    .line 41
    invoke-virtual {p0}, Lfs;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 42
    :goto_0
    add-int/lit8 v1, v6, -0x1

    if-ge v3, v1, :cond_2

    move v1, v2

    .line 43
    :goto_1
    add-int/lit8 v7, v5, -0x1

    if-ge v1, v7, :cond_1

    .line 44
    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    .line 45
    aget-object v8, v4, v3

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    aget-byte v8, v8, v1

    if-ne v7, v8, :cond_0

    add-int/lit8 v8, v3, 0x1

    aget-object v8, v4, v8

    add-int/lit8 v9, v1, 0x1

    aget-byte v8, v8, v9

    if-ne v7, v8, :cond_0

    .line 46
    add-int/lit8 v0, v0, 0x3

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 42
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 50
    :cond_2
    return v0
.end method

.method public static c(Lfs;)I
    .locals 10
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 57
    .line 58
    invoke-virtual {p0}, Lfs;->a()[[B

    move-result-object v4

    .line 59
    invoke-virtual {p0}, Lfs;->b()I

    move-result v5

    .line 60
    invoke-virtual {p0}, Lfs;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 61
    :goto_0
    if-ge v3, v6, :cond_7

    move v1, v2

    .line 62
    :goto_1
    if-ge v1, v5, :cond_6

    .line 64
    add-int/lit8 v7, v1, 0x6

    if-ge v7, v5, :cond_2

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x3

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x4

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x5

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x6

    aget-byte v7, v7, v8

    if-ne v7, v9, :cond_2

    add-int/lit8 v7, v1, 0xa

    if-ge v7, v5, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x7

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x8

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0x9

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, 0xa

    aget-byte v7, v7, v8

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v7, v1, -0x4

    if-ltz v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x2

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x3

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    aget-object v7, v4, v3

    add-int/lit8 v8, v1, -0x4

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    .line 82
    :cond_1
    add-int/lit8 v0, v0, 0x28

    .line 84
    :cond_2
    add-int/lit8 v7, v3, 0x6

    if-ge v7, v6, :cond_5

    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0x5

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, 0x6

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-ne v7, v9, :cond_5

    add-int/lit8 v7, v3, 0xa

    if-ge v7, v6, :cond_3

    add-int/lit8 v7, v3, 0x7

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x8

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0x9

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_3

    add-int/lit8 v7, v3, 0xa

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-eqz v7, :cond_4

    :cond_3
    add-int/lit8 v7, v3, -0x4

    if-ltz v7, :cond_5

    add-int/lit8 v7, v3, -0x1

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x2

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x3

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    add-int/lit8 v7, v3, -0x4

    aget-object v7, v4, v7

    aget-byte v7, v7, v1

    if-nez v7, :cond_5

    .line 102
    :cond_4
    add-int/lit8 v0, v0, 0x28

    .line 62
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 61
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 106
    :cond_7
    return v0
.end method

.method public static d(Lfs;)I
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    .line 120
    invoke-virtual {p0}, Lfs;->a()[[B

    move-result-object v4

    .line 121
    invoke-virtual {p0}, Lfs;->b()I

    move-result v5

    .line 122
    invoke-virtual {p0}, Lfs;->a()I

    move-result v6

    move v3, v2

    move v0, v2

    .line 123
    :goto_0
    if-ge v3, v6, :cond_2

    move v1, v2

    .line 124
    :goto_1
    if-ge v1, v5, :cond_1

    .line 125
    aget-object v7, v4, v3

    aget-byte v7, v7, v1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 126
    add-int/lit8 v0, v0, 0x1

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lfs;->a()I

    move-result v1

    invoke-virtual {p0}, Lfs;->b()I

    move-result v2

    mul-int/2addr v1, v2

    .line 131
    int-to-double v2, v0

    int-to-double v0, v1

    div-double v0, v2, v0

    .line 132
    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4049

    sub-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0xa

    return v0
.end method
