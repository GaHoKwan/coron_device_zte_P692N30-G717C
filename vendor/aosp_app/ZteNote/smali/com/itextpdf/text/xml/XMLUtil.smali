.class public Lcom/itextpdf/text/xml/XMLUtil;
.super Ljava/lang/Object;
.source "XMLUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeXML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "s"
    .parameter "onlyASCII"

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 63
    .local v1, cc:[C
    array-length v3, v1

    .line 64
    .local v3, len:I
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 65
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, k:I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 66
    aget-char v0, v1, v2

    .line 67
    .local v0, c:I
    sparse-switch v0, :sswitch_data_0

    .line 84
    invoke-static {v0}, Lcom/itextpdf/text/xml/XMLUtil;->isValidCharacterValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 85
    if-eqz p1, :cond_1

    const/16 v5, 0x7f

    if-le v0, v5, :cond_1

    .line 86
    const-string v5, "&#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 65
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    :sswitch_0
    const-string v5, "&lt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 72
    :sswitch_1
    const-string v5, "&gt;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 75
    :sswitch_2
    const-string v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 78
    :sswitch_3
    const-string v5, "&quot;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 81
    :sswitch_4
    const-string v5, "&apos;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :cond_1
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 92
    .end local v0           #c:I
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 67
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static findInArray(C[CI)I
    .locals 3
    .parameter "needle"
    .parameter "haystack"
    .parameter "start"

    .prologue
    .line 192
    move v0, p2

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 193
    aget-char v1, p1, v0

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 196
    .end local v0           #i:I
    :goto_1
    return v0

    .line 192
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getEncodingName([B)Ljava/lang/String;
    .locals 9
    .parameter "b4"

    .prologue
    const/16 v8, 0xff

    const/16 v7, 0xfe

    const/16 v6, 0x3f

    const/16 v5, 0x3c

    .line 220
    const/4 v4, 0x0

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 221
    .local v0, b0:I
    const/4 v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 222
    .local v1, b1:I
    if-ne v0, v7, :cond_0

    if-ne v1, v8, :cond_0

    .line 224
    const-string v4, "UTF-16BE"

    .line 275
    :goto_0
    return-object v4

    .line 226
    :cond_0
    if-ne v0, v8, :cond_1

    if-ne v1, v7, :cond_1

    .line 228
    const-string v4, "UTF-16LE"

    goto :goto_0

    .line 232
    :cond_1
    const/4 v4, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 233
    .local v2, b2:I
    const/16 v4, 0xef

    if-ne v0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_2

    .line 234
    const-string v4, "UTF-8"

    goto :goto_0

    .line 238
    :cond_2
    const/4 v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 239
    .local v3, b3:I
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v5, :cond_3

    .line 241
    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 243
    :cond_3
    if-ne v0, v5, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    .line 245
    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 247
    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-ne v2, v5, :cond_5

    if-nez v3, :cond_5

    .line 250
    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 252
    :cond_5
    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    .line 255
    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    .line 257
    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v5, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_7

    .line 261
    const-string v4, "UTF-16BE"

    goto :goto_0

    .line 263
    :cond_7
    if-ne v0, v5, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v6, :cond_8

    if-nez v3, :cond_8

    .line 266
    const-string v4, "UTF-16LE"

    goto :goto_0

    .line 268
    :cond_8
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_9

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_9

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_9

    const/16 v4, 0x94

    if-ne v3, v4, :cond_9

    .line 271
    const-string v4, "CP037"

    goto :goto_0

    .line 275
    :cond_9
    const-string v4, "UTF-8"

    goto :goto_0
.end method

.method public static isValidCharacterValue(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 178
    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_2

    const/16 v0, 0xd

    if-eq p0, v0, :cond_2

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_2

    :cond_0
    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_2

    :cond_1
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_3

    const v0, 0x10ffff

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidCharacterValue(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 164
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 165
    .local v0, i:I
    invoke-static {v0}, Lcom/itextpdf/text/xml/XMLUtil;->isValidCharacterValue(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 168
    .end local v0           #i:I
    :goto_0
    return v2

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, nfe:Ljava/lang/NumberFormatException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static unescape(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 144
    const-string v0, "apos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/16 v0, 0x27

    .line 154
    :goto_0
    return v0

    .line 146
    :cond_0
    const-string v0, "quot"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    const/16 v0, 0x22

    goto :goto_0

    .line 148
    :cond_1
    const-string v0, "lt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    const/16 v0, 0x3c

    goto :goto_0

    .line 150
    :cond_2
    const-string v0, "gt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    const/16 v0, 0x3e

    goto :goto_0

    .line 152
    :cond_3
    const-string v0, "amp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    const/16 v0, 0x26

    goto :goto_0

    .line 154
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static unescapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "s"

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 103
    .local v1, cc:[C
    array-length v4, v1

    .line 104
    .local v4, len:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 108
    aget-char v0, v1, v3

    .line 109
    .local v0, c:I
    const/16 v8, 0x26

    if-ne v0, v8, :cond_0

    .line 110
    const/16 v8, 0x3b

    add-int/lit8 v9, v3, 0x3

    invoke-static {v8, v1, v9}, Lcom/itextpdf/text/xml/XMLUtil;->findInArray(C[CI)I

    move-result v5

    .line 111
    .local v5, pos:I
    const/4 v8, -0x1

    if-le v5, v8, :cond_0

    .line 112
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    sub-int v9, v5, v3

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v2, v1, v8, v9}, Ljava/lang/String;-><init>([CII)V

    .line 113
    .local v2, esc:Ljava/lang/String;
    const-string v8, "#"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 114
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/itextpdf/text/xml/XMLUtil;->isValidCharacterValue(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-char v0, v8

    .line 117
    move v3, v5

    .line 132
    .end local v2           #esc:Ljava/lang/String;
    .end local v5           #pos:I
    :cond_0
    :goto_1
    int-to-char v8, v0

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .restart local v2       #esc:Ljava/lang/String;
    .restart local v5       #pos:I
    :cond_1
    move v3, v5

    .line 120
    goto :goto_2

    .line 124
    :cond_2
    invoke-static {v2}, Lcom/itextpdf/text/xml/XMLUtil;->unescape(Ljava/lang/String;)I

    move-result v7

    .line 125
    .local v7, tmp:I
    if-lez v7, :cond_0

    .line 126
    move v0, v7

    .line 127
    move v3, v5

    goto :goto_1

    .line 134
    .end local v0           #c:I
    .end local v2           #esc:Ljava/lang/String;
    .end local v5           #pos:I
    .end local v7           #tmp:I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method
