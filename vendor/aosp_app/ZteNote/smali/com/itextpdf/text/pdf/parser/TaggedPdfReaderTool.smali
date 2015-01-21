.class public Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;
.super Ljava/lang/Object;
.source "TaggedPdfReaderTool.java"


# instance fields
.field out:Ljava/io/PrintWriter;

.field reader:Lcom/itextpdf/text/pdf/PdfReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixTagName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "tag"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_15

    .line 177
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 178
    .local v0, c:C
    const/16 v7, 0x3a

    if-eq v0, v7, :cond_c

    const/16 v7, 0x41

    if-lt v0, v7, :cond_0

    const/16 v7, 0x5a

    if-le v0, v7, :cond_c

    :cond_0
    const/16 v7, 0x5f

    if-eq v0, v7, :cond_c

    const/16 v7, 0x61

    if-lt v0, v7, :cond_1

    const/16 v7, 0x7a

    if-le v0, v7, :cond_c

    :cond_1
    const/16 v7, 0xc0

    if-lt v0, v7, :cond_2

    const/16 v7, 0xd6

    if-le v0, v7, :cond_c

    :cond_2
    const/16 v7, 0xd8

    if-lt v0, v7, :cond_3

    const/16 v7, 0xf6

    if-le v0, v7, :cond_c

    :cond_3
    const/16 v7, 0xf8

    if-lt v0, v7, :cond_4

    const/16 v7, 0x2ff

    if-le v0, v7, :cond_c

    :cond_4
    const/16 v7, 0x370

    if-lt v0, v7, :cond_5

    const/16 v7, 0x37d

    if-le v0, v7, :cond_c

    :cond_5
    const/16 v7, 0x37f

    if-lt v0, v7, :cond_6

    const/16 v7, 0x1fff

    if-le v0, v7, :cond_c

    :cond_6
    const/16 v7, 0x200c

    if-lt v0, v7, :cond_7

    const/16 v7, 0x200d

    if-le v0, v7, :cond_c

    :cond_7
    const/16 v7, 0x2070

    if-lt v0, v7, :cond_8

    const/16 v7, 0x218f

    if-le v0, v7, :cond_c

    :cond_8
    const/16 v7, 0x2c00

    if-lt v0, v7, :cond_9

    const/16 v7, 0x2fef

    if-le v0, v7, :cond_c

    :cond_9
    const/16 v7, 0x3001

    if-lt v0, v7, :cond_a

    const v7, 0xd7ff

    if-le v0, v7, :cond_c

    :cond_a
    const v7, 0xf900

    if-lt v0, v7, :cond_b

    const v7, 0xfdcf

    if-le v0, v7, :cond_c

    :cond_b
    const v7, 0xfdf0

    if-lt v0, v7, :cond_12

    const v7, 0xfffd

    if-gt v0, v7, :cond_12

    :cond_c
    move v3, v6

    .line 194
    .local v3, nameStart:Z
    :goto_1
    const/16 v7, 0x2d

    if-eq v0, v7, :cond_10

    const/16 v7, 0x2e

    if-eq v0, v7, :cond_10

    const/16 v7, 0x30

    if-lt v0, v7, :cond_d

    const/16 v7, 0x39

    if-le v0, v7, :cond_10

    :cond_d
    const/16 v7, 0xb7

    if-eq v0, v7, :cond_10

    const/16 v7, 0x300

    if-lt v0, v7, :cond_e

    const/16 v7, 0x36f

    if-le v0, v7, :cond_10

    :cond_e
    const/16 v7, 0x203f

    if-lt v0, v7, :cond_f

    const/16 v7, 0x2040

    if-le v0, v7, :cond_10

    :cond_f
    if-eqz v3, :cond_13

    :cond_10
    move v2, v6

    .line 202
    .local v2, nameMiddle:Z
    :goto_2
    if-nez v1, :cond_14

    .line 203
    if-nez v3, :cond_11

    .line 204
    const/16 v0, 0x5f

    .line 210
    :cond_11
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2           #nameMiddle:Z
    .end local v3           #nameStart:Z
    :cond_12
    move v3, v5

    .line 178
    goto :goto_1

    .restart local v3       #nameStart:Z
    :cond_13
    move v2, v5

    .line 194
    goto :goto_2

    .line 207
    .restart local v2       #nameMiddle:Z
    :cond_14
    if-nez v2, :cond_11

    .line 208
    const/16 v0, 0x2d

    goto :goto_3

    .line 212
    .end local v0           #c:C
    .end local v2           #nameMiddle:Z
    .end local v3           #nameStart:Z
    :cond_15
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public convertToXml(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "reader"
    .parameter "os"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->convertToXml(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public convertToXml(Lcom/itextpdf/text/pdf/PdfReader;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 6
    .parameter "reader"
    .parameter "os"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->reader:Lcom/itextpdf/text/pdf/PdfReader;

    .line 87
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 88
    .local v1, outs:Ljava/io/OutputStreamWriter;
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    .line 90
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfReader;->getCatalog()Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 91
    .local v0, catalog:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->STRUCTTREEROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v2

    .line 92
    .local v2, struct:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v2, :cond_0

    .line 93
    new-instance v3, Ljava/io/IOException;

    const-string v4, "no.structtreeroot.found"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :cond_0
    sget-object v3, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 96
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    .line 97
    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 98
    return-void
.end method

.method public inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V
    .locals 1
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p1, :cond_1

    .line 129
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 125
    .restart local p1
    :cond_1
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v0, :cond_2

    .line 126
    check-cast p1, Lcom/itextpdf/text/pdf/PdfArray;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChildArray(Lcom/itextpdf/text/pdf/PdfArray;)V

    goto :goto_0

    .line 127
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChildDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0
.end method

.method public inspectChildArray(Lcom/itextpdf/text/pdf/PdfArray;)V
    .locals 2
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    if-nez p1, :cond_1

    .line 144
    :cond_0
    return-void

    .line 141
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 142
    invoke-virtual {p1, v0}, Lcom/itextpdf/text/pdf/PdfArray;->getDirectObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inspectChildDictionary(Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 6
    .parameter "k"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 172
    :goto_0
    return-void

    .line 156
    :cond_0
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->S:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v1

    .line 157
    .local v1, s:Lcom/itextpdf/text/pdf/PdfName;
    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, tagN:Ljava/lang/String;
    invoke-static {v3}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->fixTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, tag:Ljava/lang/String;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 161
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 162
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 163
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 164
    .local v0, dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v0, :cond_1

    .line 165
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v0}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 166
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 167
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string v5, "</"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v4, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 169
    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0           #dict:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #tag:Ljava/lang/String;
    .end local v3           #tagN:Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->K:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->inspectChild(Lcom/itextpdf/text/pdf/PdfObject;)V

    goto :goto_0
.end method

.method public parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V
    .locals 12
    .parameter "tag"
    .parameter "object"
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 229
    instance-of v9, p2, Lcom/itextpdf/text/pdf/PdfNumber;

    if-eqz v9, :cond_1

    move-object v4, p2

    .line 230
    check-cast v4, Lcom/itextpdf/text/pdf/PdfNumber;

    .line 231
    .local v4, mcid:Lcom/itextpdf/text/pdf/PdfNumber;
    new-instance v1, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/PdfNumber;->intValue()I

    move-result v9

    invoke-direct {v1, v9}, Lcom/itextpdf/text/pdf/parser/MarkedContentRenderFilter;-><init>(I)V

    .line 232
    .local v1, filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    new-instance v8, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;

    invoke-direct {v8}, Lcom/itextpdf/text/pdf/parser/SimpleTextExtractionStrategy;-><init>()V

    .line 233
    .local v8, strategy:Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;
    new-instance v3, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;

    new-array v9, v11, [Lcom/itextpdf/text/pdf/parser/RenderFilter;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-direct {v3, v8, v9}, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;-><init>(Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;[Lcom/itextpdf/text/pdf/parser/RenderFilter;)V

    .line 235
    .local v3, listener:Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;
    new-instance v7, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;

    invoke-direct {v7, v3}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;-><init>(Lcom/itextpdf/text/pdf/parser/RenderListener;)V

    .line 237
    .local v7, processor:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
    invoke-static {p3}, Lcom/itextpdf/text/pdf/PdfReader;->getPageContent(Lcom/itextpdf/text/pdf/PdfDictionary;)[B

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->RESOURCES:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p3, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;->processContent([BLcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 239
    iget-object v9, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;->getResultantText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lcom/itextpdf/text/xml/XMLUtil;->escapeXML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    .end local v1           #filter:Lcom/itextpdf/text/pdf/parser/RenderFilter;
    .end local v3           #listener:Lcom/itextpdf/text/pdf/parser/FilteredTextRenderListener;
    .end local v4           #mcid:Lcom/itextpdf/text/pdf/PdfNumber;
    .end local v7           #processor:Lcom/itextpdf/text/pdf/parser/PdfContentStreamProcessor;
    .end local v8           #strategy:Lcom/itextpdf/text/pdf/parser/TextExtractionStrategy;
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    instance-of v9, p2, Lcom/itextpdf/text/pdf/PdfArray;

    if-eqz v9, :cond_3

    move-object v0, p2

    .line 244
    check-cast v0, Lcom/itextpdf/text/pdf/PdfArray;

    .line 245
    .local v0, arr:Lcom/itextpdf/text/pdf/PdfArray;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    .line 246
    .local v6, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_0

    .line 247
    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/PdfArray;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    invoke-virtual {p0, p1, v9, p3}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 248
    add-int/lit8 v9, v6, -0x1

    if-ge v2, v9, :cond_2

    .line 249
    iget-object v9, p0, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->out:Ljava/io/PrintWriter;

    invoke-virtual {v9}, Ljava/io/PrintWriter;->println()V

    .line 246
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    .end local v0           #arr:Lcom/itextpdf/text/pdf/PdfArray;
    .end local v2           #i:I
    .end local v6           #n:I
    :cond_3
    instance-of v9, p2, Lcom/itextpdf/text/pdf/PdfDictionary;

    if-eqz v9, :cond_0

    move-object v5, p2

    .line 255
    check-cast v5, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 256
    .local v5, mcr:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v9, Lcom/itextpdf/text/pdf/PdfName;->MCID:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v9}, Lcom/itextpdf/text/pdf/PdfDictionary;->getDirectObject(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v9

    sget-object v10, Lcom/itextpdf/text/pdf/PdfName;->PG:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v5, v10}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {p0, p1, v9, v10}, Lcom/itextpdf/text/pdf/parser/TaggedPdfReaderTool;->parseTag(Ljava/lang/String;Lcom/itextpdf/text/pdf/PdfObject;Lcom/itextpdf/text/pdf/PdfDictionary;)V

    goto :goto_0
.end method
