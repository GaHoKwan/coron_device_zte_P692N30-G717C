.class final Lbu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lbt;

.field private final a:[I


# direct methods
.method constructor <init>(Lbt;[I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 46
    :cond_1
    iput-object p1, p0, Lbu;->a:Lbt;

    .line 47
    array-length v1, p2

    .line 48
    if-le v1, v0, :cond_4

    aget v2, p2, v3

    if-nez v2, :cond_4

    .line 51
    :goto_0
    if-ge v0, v1, :cond_2

    aget v2, p2, v0

    if-nez v2, :cond_2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_2
    if-ne v0, v1, :cond_3

    .line 55
    invoke-virtual {p1}, Lbt;->a()Lbu;

    move-result-object v0

    iget-object v0, v0, Lbu;->a:[I

    iput-object v0, p0, Lbu;->a:[I

    .line 67
    :goto_1
    return-void

    .line 57
    :cond_3
    sub-int/2addr v1, v0

    new-array v1, v1, [I

    iput-object v1, p0, Lbu;->a:[I

    .line 58
    iget-object v1, p0, Lbu;->a:[I

    iget-object v2, p0, Lbu;->a:[I

    array-length v2, v2

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 65
    :cond_4
    iput-object p2, p0, Lbu;->a:[I

    goto :goto_1
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lbu;->a:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method a(I)I
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lbu;->a:[I

    iget-object v1, p0, Lbu;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    aget v0, v0, v1

    return v0
.end method

.method a(I)Lbu;
    .locals 5
    .parameter

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 172
    iget-object v0, p0, Lbu;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object p0

    .line 182
    :cond_0
    :goto_0
    return-object p0

    .line 174
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lbu;->a:[I

    array-length v1, v0

    .line 178
    new-array v2, v1, [I

    .line 179
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 180
    iget-object v3, p0, Lbu;->a:Lbt;

    iget-object v4, p0, Lbu;->a:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p1}, Lbt;->b(II)I

    move-result v3

    aput v3, v2, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 182
    :cond_2
    new-instance v0, Lbu;

    iget-object v1, p0, Lbu;->a:Lbt;

    invoke-direct {v0, v1, v2}, Lbu;-><init>(Lbt;[I)V

    move-object p0, v0

    goto :goto_0
.end method

.method a(II)Lbu;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 186
    if-gez p1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 189
    :cond_0
    if-nez p2, :cond_1

    .line 190
    iget-object v0, p0, Lbu;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object v0

    .line 197
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lbu;->a:[I

    array-length v1, v0

    .line 193
    add-int v0, v1, p1

    new-array v2, v0, [I

    .line 194
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 195
    iget-object v3, p0, Lbu;->a:Lbt;

    iget-object v4, p0, Lbu;->a:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4, p2}, Lbt;->b(II)I

    move-result v3

    aput v3, v2, v0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_2
    new-instance v0, Lbu;

    iget-object v1, p0, Lbu;->a:Lbt;

    invoke-direct {v0, v1, v2}, Lbu;-><init>(Lbt;[I)V

    goto :goto_0
.end method

.method a(Lbu;)Lbu;
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 119
    iget-object v0, p0, Lbu;->a:Lbt;

    iget-object v1, p1, Lbu;->a:Lbt;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    invoke-virtual {p0}, Lbu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :goto_0
    return-object p1

    .line 125
    :cond_1
    invoke-virtual {p1}, Lbu;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, p0

    .line 126
    goto :goto_0

    .line 129
    :cond_2
    iget-object v0, p0, Lbu;->a:[I

    .line 130
    iget-object v1, p1, Lbu;->a:[I

    .line 131
    array-length v2, v0

    array-length v3, v1

    if-le v2, v3, :cond_4

    .line 136
    :goto_1
    array-length v2, v0

    new-array v4, v2, [I

    .line 137
    array-length v2, v0

    array-length v3, v1

    sub-int v3, v2, v3

    .line 139
    invoke-static {v0, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    .line 141
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_3

    .line 142
    sub-int v5, v2, v3

    aget v5, v1, v5

    aget v6, v0, v2

    invoke-static {v5, v6}, Lbt;->a(II)I

    move-result v5

    aput v5, v4, v2

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_3
    new-instance p1, Lbu;

    iget-object v0, p0, Lbu;->a:Lbt;

    invoke-direct {p1, v0, v4}, Lbu;-><init>(Lbt;[I)V

    goto :goto_0

    :cond_4
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 84
    iget-object v1, p0, Lbu;->a:[I

    aget v1, v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method a()[I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lbu;->a:[I

    return-object v0
.end method

.method a(Lbu;)[Lbu;
    .locals 7
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lbu;->a:Lbt;

    iget-object v1, p1, Lbu;->a:Lbt;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_0
    invoke-virtual {p1}, Lbu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Divide by 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    iget-object v0, p0, Lbu;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object v0

    .line 211
    invoke-virtual {p1}, Lbu;->a()I

    move-result v1

    invoke-virtual {p1, v1}, Lbu;->a(I)I

    move-result v1

    .line 212
    iget-object v2, p0, Lbu;->a:Lbt;

    invoke-virtual {v2, v1}, Lbt;->c(I)I

    move-result v2

    move-object v1, v0

    move-object v0, p0

    .line 214
    :goto_0
    invoke-virtual {v0}, Lbu;->a()I

    move-result v3

    invoke-virtual {p1}, Lbu;->a()I

    move-result v4

    if-lt v3, v4, :cond_2

    invoke-virtual {v0}, Lbu;->a()Z

    move-result v3

    if-nez v3, :cond_2

    .line 215
    invoke-virtual {v0}, Lbu;->a()I

    move-result v3

    invoke-virtual {p1}, Lbu;->a()I

    move-result v4

    sub-int/2addr v3, v4

    .line 216
    iget-object v4, p0, Lbu;->a:Lbt;

    invoke-virtual {v0}, Lbu;->a()I

    move-result v5

    invoke-virtual {v0, v5}, Lbu;->a(I)I

    move-result v5

    invoke-virtual {v4, v5, v2}, Lbt;->b(II)I

    move-result v4

    .line 217
    invoke-virtual {p1, v3, v4}, Lbu;->a(II)Lbu;

    move-result-object v5

    .line 218
    iget-object v6, p0, Lbu;->a:Lbt;

    invoke-virtual {v6, v3, v4}, Lbt;->a(II)Lbu;

    move-result-object v3

    .line 219
    invoke-virtual {v1, v3}, Lbu;->a(Lbu;)Lbu;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v5}, Lbu;->a(Lbu;)Lbu;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [Lbu;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2
.end method

.method b(I)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    if-nez p1, :cond_1

    .line 100
    invoke-virtual {p0, v1}, Lbu;->a(I)I

    move-result v0

    .line 115
    :cond_0
    return v0

    .line 102
    :cond_1
    iget-object v2, p0, Lbu;->a:[I

    array-length v3, v2

    .line 103
    if-ne p1, v0, :cond_2

    move v0, v1

    .line 106
    :goto_0
    if-ge v1, v3, :cond_0

    .line 107
    iget-object v2, p0, Lbu;->a:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lbt;->a(II)I

    move-result v2

    .line 106
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 111
    :cond_2
    iget-object v2, p0, Lbu;->a:[I

    aget v1, v2, v1

    move v4, v0

    move v0, v1

    move v1, v4

    .line 112
    :goto_1
    if-ge v1, v3, :cond_0

    .line 113
    iget-object v2, p0, Lbu;->a:Lbt;

    invoke-virtual {v2, p1, v0}, Lbt;->b(II)I

    move-result v0

    iget-object v2, p0, Lbu;->a:[I

    aget v2, v2, v1

    invoke-static {v0, v2}, Lbt;->a(II)I

    move-result v2

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_1
.end method

.method b(Lbu;)Lbu;
    .locals 13
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lbu;->a:Lbt;

    iget-object v2, p1, Lbu;->a:Lbt;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GF256Polys do not have same GF256 field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lbu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lbu;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    :cond_1
    iget-object v0, p0, Lbu;->a:Lbt;

    invoke-virtual {v0}, Lbt;->a()Lbu;

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 155
    :cond_2
    iget-object v3, p0, Lbu;->a:[I

    .line 156
    array-length v4, v3

    .line 157
    iget-object v5, p1, Lbu;->a:[I

    .line 158
    array-length v6, v5

    .line 159
    add-int v0, v4, v6

    add-int/lit8 v0, v0, -0x1

    new-array v7, v0, [I

    move v2, v1

    .line 160
    :goto_1
    if-ge v2, v4, :cond_4

    .line 161
    aget v8, v3, v2

    move v0, v1

    .line 162
    :goto_2
    if-ge v0, v6, :cond_3

    .line 163
    add-int v9, v2, v0

    add-int v10, v2, v0

    aget v10, v7, v10

    iget-object v11, p0, Lbu;->a:Lbt;

    aget v12, v5, v0

    invoke-virtual {v11, v8, v12}, Lbt;->b(II)I

    move-result v11

    invoke-static {v10, v11}, Lbt;->a(II)I

    move-result v10

    aput v10, v7, v9

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 167
    :cond_4
    new-instance v0, Lbu;

    iget-object v1, p0, Lbu;->a:Lbt;

    invoke-direct {v0, v1, v7}, Lbu;-><init>(Lbt;[I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 227
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lbu;->a()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 228
    invoke-virtual {p0}, Lbu;->a()I

    move-result v0

    move v1, v0

    :goto_0
    if-ltz v1, :cond_8

    .line 229
    invoke-virtual {p0, v1}, Lbu;->a(I)I

    move-result v0

    .line 230
    if-eqz v0, :cond_3

    .line 231
    if-gez v0, :cond_4

    .line 232
    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    neg-int v0, v0

    .line 239
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    if-eq v0, v4, :cond_2

    .line 240
    :cond_1
    iget-object v3, p0, Lbu;->a:Lbt;

    invoke-virtual {v3, v0}, Lbt;->b(I)I

    move-result v0

    .line 241
    if-nez v0, :cond_5

    .line 242
    const/16 v0, 0x31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 250
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 251
    if-ne v1, v4, :cond_7

    .line 252
    const/16 v0, 0x78

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    :cond_3
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 236
    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 243
    :cond_5
    if-ne v0, v4, :cond_6

    .line 244
    const/16 v0, 0x61

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 246
    :cond_6
    const-string v3, "a^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 254
    :cond_7
    const-string v0, "x^"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 260
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
