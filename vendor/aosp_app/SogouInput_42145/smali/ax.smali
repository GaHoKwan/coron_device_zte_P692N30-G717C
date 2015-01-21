.class final Lax;
.super Lal;
.source "SourceFile"


# direct methods
.method private static a(C)I
    .locals 1
    .parameter

    .prologue
    .line 236
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 237
    add-int/lit8 v0, p0, -0x30

    .line 241
    :goto_0
    return v0

    .line 238
    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    .line 239
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 240
    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 241
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 201
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 202
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 203
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 204
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 205
    sparse-switch v4, :sswitch_data_0

    .line 227
    invoke-static {v3, p1, v2}, Lax;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 203
    :cond_0
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :sswitch_1
    add-int/lit8 v4, v1, -0x2

    if-ge v0, v4, :cond_0

    .line 211
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 212
    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 215
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 217
    :try_start_0
    invoke-static {v4}, Lax;->a(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    invoke-static {v5}, Lax;->a(C)I

    move-result v5

    add-int/2addr v4, v5

    .line 218
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 231
    :cond_1
    invoke-static {v3, p1, v2}, Lax;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuffer;)V

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 219
    :catch_0
    move-exception v4

    goto :goto_2

    .line 205
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-static {p0, p1, p2}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public static a(Ln;)Lw;
    .locals 12
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 40
    invoke-virtual {p0}, Ln;->a()Ljava/lang/String;

    move-result-object v10

    .line 41
    if-eqz v10, :cond_0

    const-string v1, "BEGIN:VCARD"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v2

    .line 66
    :goto_0
    return-object v0

    .line 44
    :cond_1
    const-string v1, "FN"

    invoke-static {v1, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 45
    if-nez v1, :cond_2

    .line 47
    const-string v1, "N"

    invoke-static {v1, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lax;->a([Ljava/lang/String;)V

    .line 50
    :cond_2
    const-string v3, "TEL"

    invoke-static {v3, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string v4, "EMAIL"

    invoke-static {v4, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v4

    .line 52
    const-string v5, "NOTE"

    invoke-static {v5, v10, v0}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 53
    const-string v6, "ADR"

    invoke-static {v6, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    .line 54
    if-eqz v6, :cond_3

    .line 55
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 56
    aget-object v7, v6, v0

    invoke-static {v7}, Lax;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_3
    const-string v0, "ORG"

    invoke-static {v0, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 60
    const-string v0, "BDAY"

    invoke-static {v0, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 61
    invoke-static {v8}, Lax;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v8, v2

    .line 64
    :cond_4
    const-string v0, "TITLE"

    invoke-static {v0, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 65
    const-string v0, "URL"

    invoke-static {v0, v10, v11}, Lax;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 66
    new-instance v0, Lw;

    invoke-direct/range {v0 .. v10}, Lw;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 250
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 252
    if-nez p1, :cond_1

    .line 253
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 263
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    :cond_0
    return-void

    .line 256
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 259
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static a([Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 315
    if-eqz p0, :cond_1

    move v0, v1

    .line 316
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 317
    aget-object v4, p0, v0

    .line 318
    const/4 v2, 0x5

    new-array v5, v2, [Ljava/lang/String;

    move v2, v1

    move v3, v1

    .line 322
    :goto_1
    const/16 v6, 0x3b

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-lez v6, :cond_0

    .line 323
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 324
    add-int/lit8 v2, v2, 0x1

    .line 325
    add-int/lit8 v3, v6, 0x1

    goto :goto_1

    .line 327
    :cond_0
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 328
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 329
    const/4 v3, 0x3

    invoke-static {v5, v3, v2}, Lax;->a([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 330
    const/4 v3, 0x1

    invoke-static {v5, v3, v2}, Lax;->a([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 331
    const/4 v3, 0x2

    invoke-static {v5, v3, v2}, Lax;->a([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 332
    invoke-static {v5, v1, v2}, Lax;->a([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 333
    const/4 v3, 0x4

    invoke-static {v5, v3, v2}, Lax;->a([Ljava/lang/String;ILjava/lang/StringBuffer;)V

    .line 334
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 316
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method private static a([Ljava/lang/String;ILjava/lang/StringBuffer;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 340
    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    .line 341
    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    aget-object v0, p0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 273
    if-nez p0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-static {p0, v6}, Lax;->a(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    invoke-static {p0, v1, v5}, Lax;->a(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x5

    invoke-static {p0, v2, v4}, Lax;->a(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v6, v4}, Lax;->a(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 75
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    .line 77
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 78
    if-gez v1, :cond_3

    .line 169
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 170
    :cond_2
    const/4 v0, 0x0

    .line 172
    :goto_1
    return-object v0

    .line 82
    :cond_3
    if-lez v1, :cond_4

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    .line 84
    add-int/lit8 v2, v1, 0x1

    .line 85
    goto :goto_0

    .line 87
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 88
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_5

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x3b

    if-ne v1, v4, :cond_0

    :cond_5
    move v1, v2

    .line 93
    :goto_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_6

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 97
    :cond_6
    const/4 v5, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    if-le v1, v2, :cond_a

    .line 101
    add-int/lit8 v6, v2, 0x1

    move-object v9, v4

    move v4, v2

    move-object v2, v9

    .line 102
    :goto_3
    if-gt v6, v1, :cond_b

    .line 103
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3b

    if-eq v7, v8, :cond_7

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x3a

    if-ne v7, v8, :cond_8

    .line 104
    :cond_7
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 105
    const/16 v7, 0x3d

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 106
    if-ltz v7, :cond_17

    .line 107
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 108
    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    const-string v7, "ENCODING"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 110
    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 111
    const/4 v4, 0x1

    :goto_4
    move v5, v4

    move v4, v6

    .line 119
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 113
    :cond_9
    const-string v7, "CHARSET"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    move-object v2, v4

    move v4, v5

    .line 114
    goto :goto_4

    :cond_a
    move-object v2, v4

    .line 123
    :cond_b
    add-int/lit8 v4, v1, 0x1

    move v1, v4

    .line 127
    :goto_5
    const/16 v6, 0xa

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ltz v1, :cond_f

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-eq v6, v7, :cond_c

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_d

    .line 131
    :cond_c
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 132
    :cond_d
    if-eqz v5, :cond_f

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-eq v6, v7, :cond_e

    add-int/lit8 v6, v1, -0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_f

    .line 135
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 141
    :cond_f
    if-gez v1, :cond_10

    move-object v1, v0

    move v0, v3

    :goto_6
    move v2, v0

    move-object v0, v1

    .line 167
    goto/16 :goto_0

    .line 144
    :cond_10
    if-le v1, v4, :cond_15

    .line 146
    if-nez v0, :cond_11

    .line 147
    new-instance v0, Ljava/util/Vector;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/Vector;-><init>(I)V

    .line 149
    :cond_11
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_12

    .line 150
    add-int/lit8 v1, v1, -0x1

    .line 152
    :cond_12
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 153
    if-eqz p2, :cond_13

    .line 154
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 156
    :cond_13
    if-eqz v5, :cond_14

    .line 157
    invoke-static {v4, v2}, Lax;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    :goto_7
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 163
    goto :goto_6

    .line 159
    :cond_14
    invoke-static {v4}, Lax;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 164
    :cond_15
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_6

    .line 172
    :cond_16
    invoke-static {v0}, Lax;->a(Ljava/util/Vector;)[Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_17
    move v4, v5

    goto/16 :goto_4
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 177
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    move v0, v1

    .line 179
    :goto_0
    if-ge v2, v3, :cond_1

    .line 180
    if-eqz v0, :cond_0

    move v0, v1

    .line 179
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    packed-switch v0, :pswitch_data_0

    .line 193
    :pswitch_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_1

    .line 188
    :pswitch_1
    const/4 v0, 0x1

    .line 189
    goto :goto_1

    :pswitch_2
    move v0, v1

    .line 191
    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 292
    if-nez p0, :cond_0

    .line 293
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 296
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 297
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 298
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 299
    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    .line 300
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 297
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 302
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 305
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
