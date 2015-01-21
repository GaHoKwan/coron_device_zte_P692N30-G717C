.class public Lcom/itextpdf/text/pdf/GlyphList;
.super Ljava/lang/Object;
.source "GlyphList.java"


# static fields
.field private static names2unicode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static unicode2names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 54
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/itextpdf/text/pdf/GlyphList;->unicode2names:Ljava/util/HashMap;

    .line 55
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/itextpdf/text/pdf/GlyphList;->names2unicode:Ljava/util/HashMap;

    .line 58
    const/4 v3, 0x0

    .line 60
    .local v3, is:Ljava/io/InputStream;
    :try_start_0
    const-string v13, "com/itextpdf/text/pdf/fonts/glyphlist.txt"

    new-instance v14, Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;

    invoke-direct {v14}, Lcom/itextpdf/text/pdf/fonts/FontsResourceAnchor;-><init>()V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/itextpdf/text/pdf/BaseFont;->getResourceStream(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/InputStream;

    move-result-object v3

    .line 61
    if-nez v3, :cond_1

    .line 62
    const-string v5, "glyphlist.txt not found as resource. (It must exist as resource in the package com.itextpdf.text.pdf.fonts)"

    .line 63
    .local v5, msg:Ljava/lang/String;
    new-instance v13, Ljava/lang/Exception;

    invoke-direct {v13, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .end local v5           #msg:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 96
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "glyphlist.txt loading error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v3, :cond_0

    .line 101
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const/16 v13, 0x400

    :try_start_3
    new-array v0, v13, [B

    .line 66
    .local v0, buf:[B
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 68
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    :goto_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .line 69
    .local v10, size:I
    if-gez v10, :cond_4

    .line 73
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 74
    const/4 v3, 0x0

    .line 75
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/itextpdf/text/pdf/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 76
    .local v9, s:Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, "\r\n"

    invoke-direct {v12, v9, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v12, tk:Ljava/util/StringTokenizer;
    :cond_2
    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 78
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, line:Ljava/lang/String;
    const-string v13, "#"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 81
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, " ;\r\n\t\u000c"

    invoke-direct {v11, v4, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v11, t2:Ljava/util/StringTokenizer;
    const/4 v6, 0x0

    .line 83
    .local v6, name:Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, hex:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 86
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 87
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 89
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 90
    const/16 v13, 0x10

    invoke-static {v2, v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    .line 91
    .local v7, num:Ljava/lang/Integer;
    sget-object v13, Lcom/itextpdf/text/pdf/GlyphList;->unicode2names:Ljava/util/HashMap;

    invoke-virtual {v13, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v13, Lcom/itextpdf/text/pdf/GlyphList;->names2unicode:Ljava/util/HashMap;

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v16

    aput v16, v14, v15

    invoke-virtual {v13, v6, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 99
    .end local v0           #buf:[B
    .end local v2           #hex:Ljava/lang/String;
    .end local v4           #line:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #num:Ljava/lang/Integer;
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #size:I
    .end local v11           #t2:Ljava/util/StringTokenizer;
    .end local v12           #tk:Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v13

    if-eqz v3, :cond_3

    .line 101
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 105
    :cond_3
    :goto_3
    throw v13

    .line 71
    .restart local v0       #buf:[B
    .restart local v8       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #size:I
    :cond_4
    const/4 v13, 0x0

    :try_start_5
    invoke-virtual {v8, v0, v13, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 99
    .restart local v9       #s:Ljava/lang/String;
    .restart local v12       #tk:Ljava/util/StringTokenizer;
    :cond_5
    if-eqz v3, :cond_0

    .line 101
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 103
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .end local v0           #buf:[B
    .end local v8           #out:Ljava/io/ByteArrayOutputStream;
    .end local v9           #s:Ljava/lang/String;
    .end local v10           #size:I
    .end local v12           #tk:Ljava/util/StringTokenizer;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v13

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v14

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static nameToUnicode(Ljava/lang/String;)[I
    .locals 1
    .parameter "name"

    .prologue
    .line 111
    sget-object v0, Lcom/itextpdf/text/pdf/GlyphList;->names2unicode:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static unicodeToName(I)Ljava/lang/String;
    .locals 2
    .parameter "num"

    .prologue
    .line 115
    sget-object v0, Lcom/itextpdf/text/pdf/GlyphList;->unicode2names:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
