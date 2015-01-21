.class public Lcom/itextpdf/text/pdf/FdfReader;
.super Lcom/itextpdf/text/pdf/PdfReader;
.source "FdfReader.java"


# instance fields
.field encoding:Lcom/itextpdf/text/pdf/PdfName;

.field fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation
.end field

.field fileSpec:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/io/InputStream;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>(Ljava/net/URL;)V

    .line 80
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "pdfIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/itextpdf/text/pdf/PdfReader;-><init>([B)V

    .line 72
    return-void
.end method


# virtual methods
.method public getAttachedFile(Ljava/lang/String;)[B
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v5, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 177
    .local v1, field:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 178
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 179
    .local v3, ir:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/FdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 180
    .local v2, filespec:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->EF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 181
    .local v0, ef:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v3

    .end local v3           #ir:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    check-cast v3, Lcom/itextpdf/text/pdf/PRIndirectReference;

    .line 182
    .restart local v3       #ir:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfIndirectReference;->getNumber()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/itextpdf/text/pdf/FdfReader;->getPdfObject(I)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/text/pdf/PRStream;

    .line 183
    .local v4, stream:Lcom/itextpdf/text/pdf/PRStream;
    invoke-static {v4}, Lcom/itextpdf/text/pdf/FdfReader;->getStreamBytes(Lcom/itextpdf/text/pdf/PRStream;)[B

    move-result-object v5

    .line 185
    .end local v0           #ef:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v2           #filespec:Lcom/itextpdf/text/pdf/PdfDictionary;
    .end local v3           #ir:Lcom/itextpdf/text/pdf/PdfIndirectReference;
    .end local v4           #stream:Lcom/itextpdf/text/pdf/PRStream;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    new-array v5, v5, [B

    goto :goto_0
.end method

.method public getField(Ljava/lang/String;)Lcom/itextpdf/text/pdf/PdfDictionary;
    .locals 1
    .parameter "name"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    .line 195
    iget-object v5, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 196
    .local v1, field:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-object v4

    .line 198
    :cond_1
    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->V:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->get(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/text/pdf/FdfReader;->getPdfObject(Lcom/itextpdf/text/pdf/PdfObject;)Lcom/itextpdf/text/pdf/PdfObject;

    move-result-object v2

    .line 199
    .local v2, v:Lcom/itextpdf/text/pdf/PdfObject;
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isName()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    check-cast v2, Lcom/itextpdf/text/pdf/PdfName;

    .end local v2           #v:Lcom/itextpdf/text/pdf/PdfObject;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/itextpdf/text/pdf/PdfName;->decodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 203
    .restart local v2       #v:Lcom/itextpdf/text/pdf/PdfObject;
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfObject;->isString()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v3, v2

    .line 204
    check-cast v3, Lcom/itextpdf/text/pdf/PdfString;

    .line 205
    .local v3, vs:Lcom/itextpdf/text/pdf/PdfString;
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 206
    :cond_3
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->getBytes()[B

    move-result-object v0

    .line 208
    .local v0, b:[B
    array-length v4, v0

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 209
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 211
    :cond_5
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->SHIFT_JIS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 212
    new-instance v4, Ljava/lang/String;

    const-string v5, "SJIS"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v4

    .line 222
    :cond_6
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 213
    :cond_7
    :try_start_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->UHC:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 214
    new-instance v4, Ljava/lang/String;

    const-string v5, "MS949"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_8
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->GBK:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 216
    new-instance v4, Ljava/lang/String;

    const-string v5, "GBK"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto/16 :goto_0

    .line 217
    :cond_9
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->BIGFIVE:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 218
    new-instance v4, Ljava/lang/String;

    const-string v5, "Big5"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/itextpdf/text/pdf/PdfDictionary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFileSpec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->fileSpec:Ljava/lang/String;

    return-object v0
.end method

.method protected kidNode(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;)V
    .locals 8
    .parameter "merged"
    .parameter "name"

    .prologue
    .line 111
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v2

    .line 112
    .local v2, kids:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 114
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 115
    :cond_1
    iget-object v6, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    invoke-virtual {v6, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_2
    return-void

    .line 118
    :cond_3
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {p1, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 119
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 120
    new-instance v0, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 121
    .local v0, dic:Lcom/itextpdf/text/pdf/PdfDictionary;
    invoke-virtual {v0, p1}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 122
    invoke-virtual {v2, v1}, Lcom/itextpdf/text/pdf/PdfArray;->getAsDict(I)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v3

    .line 123
    .local v3, newDic:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v5

    .line 124
    .local v5, t:Lcom/itextpdf/text/pdf/PdfString;
    move-object v4, p2

    .line 125
    .local v4, newName:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_4
    invoke-virtual {v0, v3}, Lcom/itextpdf/text/pdf/PdfDictionary;->merge(Lcom/itextpdf/text/pdf/PdfDictionary;)V

    .line 128
    sget-object v6, Lcom/itextpdf/text/pdf/PdfName;->T:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/PdfDictionary;->remove(Lcom/itextpdf/text/pdf/PdfName;)V

    .line 129
    invoke-virtual {p0, v0, v4}, Lcom/itextpdf/text/pdf/FdfReader;->kidNode(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;)V

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected readFields()V
    .locals 6

    .prologue
    .line 135
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->trailer:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->ROOT:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    .line 136
    iget-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->catalog:Lcom/itextpdf/text/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/text/pdf/PdfName;->FDF:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsDict(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfDictionary;

    move-result-object v0

    .line 137
    .local v0, fdf:Lcom/itextpdf/text/pdf/PdfDictionary;
    if-nez v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->F:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfString;

    move-result-object v2

    .line 140
    .local v2, fs:Lcom/itextpdf/text/pdf/PdfString;
    if-eqz v2, :cond_2

    .line 141
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->fileSpec:Ljava/lang/String;

    .line 142
    :cond_2
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->FIELDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfArray;

    move-result-object v1

    .line 143
    .local v1, fld:Lcom/itextpdf/text/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 145
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->ENCODING:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v0, v4}, Lcom/itextpdf/text/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/text/pdf/PdfName;)Lcom/itextpdf/text/pdf/PdfName;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/pdf/FdfReader;->encoding:Lcom/itextpdf/text/pdf/PdfName;

    .line 146
    new-instance v3, Lcom/itextpdf/text/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/text/pdf/PdfDictionary;-><init>()V

    .line 147
    .local v3, merged:Lcom/itextpdf/text/pdf/PdfDictionary;
    sget-object v4, Lcom/itextpdf/text/pdf/PdfName;->KIDS:Lcom/itextpdf/text/pdf/PdfName;

    invoke-virtual {v3, v4, v1}, Lcom/itextpdf/text/pdf/PdfDictionary;->put(Lcom/itextpdf/text/pdf/PdfName;Lcom/itextpdf/text/pdf/PdfObject;)V

    .line 148
    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/itextpdf/text/pdf/FdfReader;->kidNode(Lcom/itextpdf/text/pdf/PdfDictionary;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected readPdf()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->fields:Ljava/util/HashMap;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->checkFdfHeader()V

    .line 96
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/FdfReader;->rebuildXref()V

    .line 97
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/FdfReader;->readDocObj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/FdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/FdfReader;->readFields()V

    .line 108
    return-void

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/text/pdf/FdfReader;->tokens:Lcom/itextpdf/text/pdf/PRTokeniser;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/PRTokeniser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 105
    :goto_1
    throw v0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
