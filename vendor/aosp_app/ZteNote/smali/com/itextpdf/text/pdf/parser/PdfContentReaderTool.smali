.class public Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;
.super Ljava/lang/Object;
.source "PdfContentReaderTool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDictionaryDetail(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 1
    .parameter "dic"

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->getDictionaryDetail(Lcom/itextpdf/text/pdf/PdfDictionary;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDictionaryDetail(Lcom/itextpdf/text/pdf/PdfDictionary;I)Ljava/lang/String;
    .locals 9
    .parameter "dic"
    .parameter "depth"

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, builder:Ljava/lang/StringBuffer;
    const/16 v7, 0x28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v5, subDictionaries:Ljava/util/List;,"Ljava/util/List<Lcom/itextpdf/text/pdf/PdfName;>;"
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PdfName;

    .line 89
    .local v3, key:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v6

    .line 90
    .local v6, val:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/PdfObject;->isDictionary()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 91
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v7, 0x3d

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 94
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 95
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 97
    .end local v3           #key:Lcom/itextpdf/text/pdf/PdfName;
    .end local v6           #val:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 98
    const/16 v7, 0x29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PdfName;

    .line 100
    .local v4, pdfSubDictionaryName:Lcom/itextpdf/text/pdf/PdfName;
    const/16 v7, 0xa

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    add-int/lit8 v7, p1, 0x1

    if-ge v1, v7, :cond_2

    .line 102
    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    :cond_2
    const-string v7, "Subdictionary "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 106
    const-string v7, " = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    add-int/lit8 v8, p1, 0x1

    invoke-static {v7, v8}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->getDictionaryDetail(Lcom/itextpdf/text/pdf/PdfDictionary;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 109
    .end local v1           #i:I
    .end local v4           #pdfSubDictionaryName:Lcom/itextpdf/text/pdf/PdfName;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getXObjectDetail(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;
    .locals 10
    .parameter "resourceDic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v5, sb:Ljava/lang/StringBuilder;
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->XOBJECT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p0, v8}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v7

    .line 123
    .local v7, xobjects:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v7, :cond_0

    .line 124
    const-string v8, "No XObjects"

    .line 144
    :goto_0
    return-object v8

    .line 125
    :cond_0
    invoke-virtual {v7}, Lcom/itextpdf/text/pdf/PdfDictionary;->getKeys()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .line 126
    .local v2, entryName:Lcom/itextpdf/text/pdf/PdfName;
    invoke-virtual {v7, v2}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfStream;

    move-result-object v6

    .line 128
    .local v6, xobjectStream:Lcom/itextpdf/text/pdf/PdfStream;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - subtype = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->LENGTH:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfStream;->getAsNumber(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfNumber;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bytes ------\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v8, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v8}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->IMAGE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 132
    invoke-static {v6}, Lcom/itextpdf/text/pdf/parser/ContentByteUtils;->getContentBytesFromContentObject(Lcom/itextpdf/text/pdf/PdfObject;)[B

    move-result-object v1

    .line 134
    .local v1, contentBytes:[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 136
    .local v4, is:Ljava/io/InputStream;
    :goto_2
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_2

    .line 137
    int-to-char v8, v0

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 140
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - subtype = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->SUBTYPE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v6, v9}, Lcom/itextpdf/text/pdf/PdfStream;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "End of Content"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "------\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 144
    .end local v0           #ch:I
    .end local v1           #contentBytes:[B
    .end local v2           #entryName:Lcom/itextpdf/text/pdf/PdfName;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #xobjectStream:Lcom/itextpdf/text/pdf/PdfStream;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public static listContentStream(Ljava/io/File;ILjava/io/PrintWriter;)V
    .locals 2
    .parameter "pdfFile"
    .parameter "pageNum"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-static {v0, p1, p2}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->listContentStreamForPage(Lcom/itextpdf/text/pdf/PdfReader;ILjava/io/PrintWriter;)V

    .line 221
    return-void
.end method

.method public static listContentStream(Ljava/io/File;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "pdfFile"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Lcom/itextpdf/text/pdf/PdfReader;

    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 201
    .local v2, reader:Lcom/itextpdf/text/pdf/PdfReader;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfReader;->getNumberOfPages()I

    move-result v0

    .line 203
    .local v0, maxPageNum:I
    const/4 v1, 0x1

    .local v1, pageNum:I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 204
    invoke-static {v2, v1, p1}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->listContentStreamForPage(Lcom/itextpdf/text/pdf/PdfReader;ILjava/io/PrintWriter;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method

.method public static listContentStreamForPage(Lcom/itextpdf/text/pdf/PdfReader;ILjava/io/PrintWriter;)V
    .locals 8
    .parameter "reader"
    .parameter "pageNum"
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "==============Page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "===================="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v6, "- - - - - Dictionary - - - - - -"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;->getPageN(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v5

    .line 159
    .local v5, pageDictionary:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-static {v5}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->getDictionaryDetail(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v6, "- - - - - XObject Summary - - - - - -"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->getXObjectDetail(Lcom/itextpdf/text/pdf/PdfDictionary;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const-string v6, "- - - - - Content Stream - - - - - -"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/PdfReader;->getSafeFile()Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-result-object v3

    .line 167
    .local v3, f:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageContent(ILcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B

    move-result-object v1

    .line 168
    .local v1, contentBytes:[B
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->close()V

    .line 170
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 172
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 174
    .local v4, is:Ljava/io/InputStream;
    :goto_0
    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/4 v6, -0x1

    if-eq v0, v6, :cond_0

    .line 175
    int-to-char v6, v0

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 180
    const-string v6, "- - - - - Text Extraction - - - - - -"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v6, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;

    invoke-direct {v6}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;-><init>()V

    invoke-static {p0, p1, v6}, Lcom/itextpdf/text/pdf/parser/PdfTextExtractor;->getTextFromPage(Lcom/itextpdf/text/pdf/PdfReader;ILcom/itextpdf/text/pdf/parser/TextExtractionStrategy;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, extractedText:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    return-void

    .line 185
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No text found on page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v4, 0x1

    .line 229
    :try_start_0
    array-length v3, p0

    if-lt v3, v4, :cond_0

    array-length v3, p0

    if-le v3, v7, :cond_2

    .line 230
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Usage:  PdfContentReaderTool <pdf file> [<output file>|stdout] [<page num>]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 235
    .local v2, writer:Ljava/io/PrintWriter;
    array-length v3, p0

    if-lt v3, v6, :cond_3

    .line 236
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const-string v4, "stdout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 237
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing PDF content to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 238
    new-instance v2, Ljava/io/PrintWriter;

    .end local v2           #writer:Ljava/io/PrintWriter;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 242
    .restart local v2       #writer:Ljava/io/PrintWriter;
    :cond_3
    const/4 v1, -0x1

    .line 243
    .local v1, pageNum:I
    array-length v3, p0

    if-lt v3, v7, :cond_4

    .line 244
    const/4 v3, 0x2

    aget-object v3, p0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 247
    :cond_4
    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    .line 248
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->listContentStream(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 252
    :goto_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 254
    array-length v3, p0

    if-lt v3, v6, :cond_1

    .line 255
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 256
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished writing content to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v1           #pageNum:I
    .end local v2           #writer:Ljava/io/PrintWriter;
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    goto/16 :goto_0

    .line 250
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #pageNum:I
    .restart local v2       #writer:Ljava/io/PrintWriter;
    :cond_5
    :try_start_1
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v1, v2}, Lcom/itextpdf/text/pdf/parser/PdfContentReaderTool;->listContentStream(Ljava/io/File;ILjava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
