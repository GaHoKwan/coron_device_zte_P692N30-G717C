.class public Lcom/zte/backup/format/vxx/Vxx;
.super Ljava/lang/Object;
.source "Vxx.java"


# static fields
.field public static final FORMAT_QP_TITLE:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE"

.field public static final FORMAT_UTF8_TITLE:Ljava/lang/String; = "CHARSET=UTF-8"

.field public static final QP_UTF8_TITLE:Ljava/lang/String; = "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

.field public static final UTF8_QP_TITLE:Ljava/lang/String; = "CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendItem(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "buf"
    .parameter "title"
    .parameter "data"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/zte/backup/format/vxx/Vxx;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 42
    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 43
    const/4 v0, 0x1

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static appendItemWithQP(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "buf"
    .parameter "title"
    .parameter "data"

    .prologue
    .line 50
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/zte/backup/format/vxx/Vxx;->checkString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/zte/backup/format/vxx/Vxx;->makeUtf8QPStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkString(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 34
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final decodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "str"

    .prologue
    const/4 v10, -0x1

    const/4 v3, 0x0

    .line 236
    if-nez p0, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-object v3

    .line 239
    :cond_1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 240
    .local v2, bytes:[B
    if-eqz v2, :cond_0

    .line 243
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v2

    if-lt v5, v8, :cond_2

    .line 269
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    .local v3, dstStr:Ljava/lang/String;
    goto :goto_0

    .line 245
    .end local v3           #dstStr:Ljava/lang/String;
    :cond_2
    aget-byte v0, v2, v5

    .line 246
    .local v0, b:I
    const/16 v8, 0x3d

    if-ne v0, v8, :cond_5

    .line 248
    add-int/lit8 v5, v5, 0x1

    :try_start_0
    aget-byte v8, v2, v5

    int-to-char v8, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 249
    .local v7, u:I
    add-int/lit8 v5, v5, 0x1

    aget-byte v8, v2, v5

    int-to-char v8, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 250
    .local v6, l:I
    if-eq v7, v10, :cond_3

    if-ne v6, v10, :cond_4

    .line 253
    :cond_3
    const-string v8, "Invalid quoted-printable encoding"

    invoke-static {v8}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v6           #l:I
    .end local v7           #u:I
    :catch_0
    move-exception v4

    .line 261
    .local v4, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "Invalid quoted-printable encoding"

    invoke-static {v8}, Lcom/zte/backup/common/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v4           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v6       #l:I
    .restart local v7       #u:I
    :cond_4
    shl-int/lit8 v8, v7, 0x4

    add-int/2addr v8, v6

    int-to-char v8, v8

    :try_start_1
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    .end local v6           #l:I
    .end local v7           #u:I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static encodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    const/16 v6, 0x10

    .line 194
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 195
    :cond_0
    const-string v5, ""

    .line 232
    :goto_0
    return-object v5

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 200
    .local v2, index:I
    const/4 v3, 0x0

    .line 201
    .local v3, lineCount:I
    const/4 v4, 0x0

    check-cast v4, [B

    .line 204
    .local v4, strArray:[B
    :try_start_0
    const-string v5, "utf-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 212
    :cond_2
    :goto_1
    array-length v5, v4

    if-lt v2, v5, :cond_3

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 212
    goto :goto_1

    .line 213
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_3
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    aget-byte v5, v4, v2

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v5, v5, 0x4

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 215
    aget-byte v5, v4, v2

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    add-int/lit8 v2, v2, 0x1

    .line 217
    add-int/lit8 v3, v3, 0x3

    .line 219
    const/16 v5, 0x43

    if-lt v3, v5, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 227
    const-string v5, "=\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static encodeQuotedPrintable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "title"
    .parameter "data"

    .prologue
    const/16 v8, 0x10

    .line 140
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v1, p0

    .line 190
    :goto_0
    return-object v1

    .line 144
    :cond_1
    const/4 v5, 0x0

    .line 145
    .local v5, startIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x100

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 146
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_2

    .line 147
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 150
    :cond_2
    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const/4 v3, 0x0

    .line 153
    .local v3, index:I
    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int v4, v5, v7

    .line 154
    .local v4, lineCount:I
    const/4 v6, 0x0

    check-cast v6, [B

    .line 157
    .local v6, strArray:[B
    :try_start_0
    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 165
    :cond_3
    :goto_1
    array-length v7, v6

    if-lt v3, v7, :cond_4

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, dstStr:Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v1           #dstStr:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 162
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 165
    goto :goto_1

    .line 168
    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :cond_4
    const-string v7, "="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    aget-byte v7, v6, v3

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    aget-byte v7, v6, v3

    and-int/lit8 v7, v7, 0xf

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    add-int/lit8 v3, v3, 0x1

    .line 174
    add-int/lit8 v4, v4, 0x3

    .line 176
    const/16 v7, 0x43

    if-lt v4, v7, :cond_3

    array-length v7, v6

    if-ge v3, v7, :cond_3

    .line 184
    const-string v7, "=\r\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getItemDataByBeginStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 70
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 60
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, item:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 59
    .end local v1           #item:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getItemDataByContainsStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, oneVcs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    .line 86
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 75
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 76
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 78
    .local v1, index1:I
    const/4 v4, -0x1

    if-eq v4, v1, :cond_1

    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, item:Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 74
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getUtf8QPStr(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, data:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, -0x1

    .line 95
    const/4 v5, 0x0

    .line 96
    .local v5, item:Ljava/lang/String;
    const/4 v0, 0x0

    .line 98
    .local v0, bFound:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-lt v2, v7, :cond_2

    .line 132
    :cond_0
    move-object v1, v5

    .line 133
    .local v1, dstStr:Ljava/lang/String;
    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 134
    invoke-static {v5}, Lcom/zte/backup/format/vxx/Vxx;->decodeQuotedPrintable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_1
    return-object v1

    .line 99
    .end local v1           #dstStr:Ljava/lang/String;
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    .local v6, str:Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 101
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 102
    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 105
    add-int/lit8 v2, v2, -0x1

    .line 98
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    :cond_4
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    add-int/lit8 v2, v2, -0x1

    .line 114
    goto :goto_1

    .line 117
    :cond_5
    invoke-virtual {v6, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 118
    .local v3, index1:I
    if-eq v9, v3, :cond_3

    .line 119
    const-string v7, "ENCODING=QUOTED-PRINTABLE;CHARSET=UTF-8:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 120
    .local v4, index2:I
    if-gez v4, :cond_6

    .line 121
    const-string v7, "CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 123
    :cond_6
    if-eq v9, v4, :cond_3

    .line 124
    const-string v7, "CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 125
    const/4 v0, 0x1

    .line 126
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 127
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public static makeUtf8QPStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "title"
    .parameter "data"

    .prologue
    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/zte/backup/format/vxx/Vxx;->encodeQuotedPrintable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, dstStr:Ljava/lang/String;
    return-object v0
.end method
