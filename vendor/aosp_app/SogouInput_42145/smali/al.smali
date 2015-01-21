.class public abstract Lal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(C)I
    .locals 1
    .parameter

    .prologue
    .line 187
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    .line 188
    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 189
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    .line 200
    :goto_0
    return v0

    .line 191
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    .line 192
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    .line 193
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 195
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    .line 196
    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 197
    add-int/lit8 v0, p0, -0x30

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a([C)I
    .locals 4
    .parameter

    .prologue
    .line 176
    array-length v1, p0

    .line 177
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 178
    aget-char v2, p0, v0

    .line 179
    const/16 v3, 0x2b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x25

    if-ne v2, v3, :cond_1

    .line 183
    :cond_0
    :goto_1
    return v0

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static a(Ln;)Lah;
    .locals 3
    .parameter

    .prologue
    .line 42
    invoke-static {p0}, Lat;->a(Ln;)Las;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v0

    .line 44
    :cond_1
    invoke-static {p0}, Lba;->a(Ln;)Laz;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "================================WEIXIN====================="

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-static {p0}, Ly;->a(Ln;)Lau;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    invoke-static {p0}, Lv;->a(Ln;)Lw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lac;->a(Ln;)Laa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0}, Lu;->a(Ln;)Lw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {p0}, Lax;->a(Ln;)Lw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {p0}, Lx;->a(Ln;)Lw;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-static {p0}, Lay;->a(Ln;)Lz;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    invoke-static {p0}, Lab;->a(Ln;)Laa;

    move-result-object v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {p0}, Laq;->a(Ln;)Lap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {p0}, Lam;->a(Ln;)Lan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 67
    invoke-static {p0}, Lao;->a(Ln;)Lan;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {p0}, Lbc;->a(Ln;)Lbb;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    invoke-static {p0}, Law;->a(Ln;)Lau;

    move-result-object v0

    if-nez v0, :cond_0

    .line 73
    invoke-static {p0}, Lav;->a(Ln;)Lau;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {p0}, Lag;->a(Ln;)Laf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {p0}, Lak;->a(Ln;)Laj;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {p0}, Lae;->a(Ln;)Lad;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lar;

    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lar;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x5c

    const/4 v1, 0x0

    .line 107
    if-eqz p0, :cond_3

    .line 108
    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 109
    if-ltz v0, :cond_3

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 111
    new-instance v4, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v3, -0x1

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v4, v2, v1, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move v2, v0

    move v0, v1

    .line 114
    :goto_0
    if-ge v2, v3, :cond_2

    .line 115
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 116
    if-nez v0, :cond_0

    if-eq v5, v6, :cond_1

    .line 117
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .line 114
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    :cond_3
    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-static {p0, p1, p2, p3}, Lal;->a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v0

    .line 310
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 3
    .parameter

    .prologue
    .line 239
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 240
    if-gez v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    .line 243
    :cond_0
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 246
    :goto_1
    const/16 v2, 0x26

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_1

    .line 247
    invoke-static {p0, v0, v2, v1}, Lal;->a(Ljava/lang/String;IILjava/util/Hashtable;)V

    .line 248
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 250
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p0, v0, v2, v1}, Lal;->a(Ljava/lang/String;IILjava/util/Hashtable;)V

    move-object v0, v1

    .line 251
    goto :goto_0
.end method

.method private static a(Ljava/lang/String;IILjava/util/Hashtable;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    const/16 v0, 0x3d

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 256
    if-ltz v0, :cond_0

    .line 258
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 259
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 260
    invoke-static {v0}, Lal;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    return-void
.end method

.method protected static a(Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 204
    if-nez p0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 208
    if-ne p1, v1, :cond_0

    move v1, v0

    .line 211
    :goto_1
    if-ge v1, p1, :cond_2

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 213
    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    const/16 v3, 0x39

    if-gt v2, v3, :cond_0

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 217
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 221
    if-nez p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 225
    add-int v2, p1, p2

    .line 226
    if-lt v1, v2, :cond_0

    .line 229
    :goto_1
    if-ge p1, v2, :cond_2

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 231
    const/16 v3, 0x30

    if-lt v1, v3, :cond_0

    const/16 v3, 0x39

    if-gt v1, v3, :cond_0

    .line 229
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 235
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 103
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 267
    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    move v0, v3

    move-object v1, v2

    .line 270
    :goto_0
    if-ge v0, v7, :cond_0

    .line 271
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 272
    if-gez v0, :cond_2

    .line 302
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_1
    move-object v0, v2

    .line 305
    :goto_1
    return-object v0

    .line 275
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int v6, v0, v4

    move v4, v3

    move-object v0, v1

    move v1, v6

    .line 278
    :goto_2
    if-nez v4, :cond_7

    .line 279
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 280
    if-gez v8, :cond_3

    .line 282
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v4, v5

    .line 283
    goto :goto_2

    .line 284
    :cond_3
    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v9, 0x5c

    if-ne v1, v9, :cond_4

    .line 286
    add-int/lit8 v1, v8, 0x1

    goto :goto_2

    .line 289
    :cond_4
    if-nez v0, :cond_5

    .line 290
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 292
    :cond_5
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lal;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    if-eqz p3, :cond_6

    .line 294
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 296
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    add-int/lit8 v1, v8, 0x1

    move v4, v5

    .line 299
    goto :goto_2

    :cond_7
    move v10, v1

    move-object v1, v0

    move v0, v10

    .line 301
    goto :goto_0

    .line 305
    :cond_8
    invoke-static {v1}, Lal;->a(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static a(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 315
    new-array v3, v2, [Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 317
    invoke-virtual {p0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    .line 316
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 319
    :cond_0
    return-object v3
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x25

    .line 132
    if-nez p0, :cond_1

    .line 133
    const/4 p0, 0x0

    .line 172
    :cond_0
    :goto_0
    return-object p0

    .line 135
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 137
    invoke-static {v1}, Lal;->a([C)I

    move-result v0

    .line 138
    if-ltz v0, :cond_0

    .line 142
    array-length v2, v1

    .line 144
    new-instance v3, Ljava/lang/StringBuffer;

    add-int/lit8 v4, v2, -0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 146
    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 148
    :goto_1
    if-ge v0, v2, :cond_7

    .line 149
    aget-char v4, v1, v0

    .line 150
    const/16 v5, 0x2b

    if-ne v4, v5, :cond_2

    .line 152
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 148
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 153
    :cond_2
    if-ne v4, v7, :cond_6

    .line 155
    add-int/lit8 v4, v2, -0x2

    if-lt v0, v4, :cond_3

    .line 156
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 158
    :cond_3
    add-int/lit8 v0, v0, 0x1

    aget-char v4, v1, v0

    invoke-static {v4}, Lal;->a(C)I

    move-result v4

    .line 159
    add-int/lit8 v0, v0, 0x1

    aget-char v5, v1, v0

    invoke-static {v5}, Lal;->a(C)I

    move-result v5

    .line 160
    if-ltz v4, :cond_4

    if-gez v5, :cond_5

    .line 162
    :cond_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 163
    add-int/lit8 v6, v0, -0x1

    aget-char v6, v1, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 164
    aget-char v6, v1, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 166
    :cond_5
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 169
    :cond_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 172
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
