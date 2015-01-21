.class public Lcom/ibm/icu/text/CharsetMatch;
.super Ljava/lang/Object;
.source "CharsetMatch.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/ibm/icu/text/CharsetMatch;",
        ">;"
    }
.end annotation


# instance fields
.field private fCharsetName:Ljava/lang/String;

.field private fConfidence:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLang:Ljava/lang/String;

.field private fRawInput:[B

.field private fRawLength:I


# direct methods
.method constructor <init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;I)V
    .locals 1
    .parameter "det"
    .parameter "rec"
    .parameter "conf"

    .prologue
    const/4 v0, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    .line 237
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 192
    iput p3, p0, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    .line 197
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    .line 201
    iget v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawLength:I

    .line 203
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 204
    invoke-virtual {p2}, Lcom/ibm/icu/text/CharsetRecognizer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 205
    invoke-virtual {p2}, Lcom/ibm/icu/text/CharsetRecognizer;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    .line 206
    return-void
.end method

.method constructor <init>(Lcom/ibm/icu/text/CharsetDetector;Lcom/ibm/icu/text/CharsetRecognizer;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "det"
    .parameter "rec"
    .parameter "conf"
    .parameter "csName"
    .parameter "lang"

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    .line 237
    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 212
    iput p3, p0, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    .line 217
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawInput:[B

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    .line 221
    iget v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fRawLength:I

    iput v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawLength:I

    .line 223
    :cond_0
    iget-object v0, p1, Lcom/ibm/icu/text/CharsetDetector;->fInputStream:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 224
    iput-object p4, p0, Lcom/ibm/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    .line 225
    iput-object p5, p0, Lcom/ibm/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ibm/icu/text/CharsetMatch;)I
    .locals 3
    .parameter "other"

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, compareResult:I
    iget v1, p0, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    if-le v1, v2, :cond_1

    .line 181
    const/4 v0, 0x1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    iget v1, p0, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    iget v2, p1, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    if-ge v1, v2, :cond_0

    .line 183
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/ibm/icu/text/CharsetMatch;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/ibm/icu/text/CharsetMatch;->compareTo(Lcom/ibm/icu/text/CharsetMatch;)I

    move-result v0

    return v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fConfidence:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fLang:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ibm/icu/text/CharsetMatch;->fCharsetName:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 5

    .prologue
    .line 46
    iget-object v1, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    .line 48
    .local v1, inputStream:Ljava/io/InputStream;
    if-nez v1, :cond_0

    .line 49
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .end local v1           #inputStream:Ljava/io/InputStream;
    iget-object v2, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    const/4 v3, 0x0

    iget v4, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawLength:I

    invoke-direct {v1, v2, v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 53
    .restart local v1       #inputStream:Ljava/io/InputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V

    .line 54
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v2

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/ibm/icu/text/CharsetMatch;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 11
    .parameter "maxLength"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x400

    const/4 v9, 0x0

    .line 88
    const/4 v5, 0x0

    .line 89
    .local v5, result:Ljava/lang/String;
    iget-object v8, p0, Lcom/ibm/icu/text/CharsetMatch;->fInputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_2

    .line 90
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v6, sb:Ljava/lang/StringBuilder;
    new-array v0, v10, [C

    .line 92
    .local v0, buffer:[C
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetMatch;->getReader()Ljava/io/Reader;

    move-result-object v4

    .line 93
    .local v4, reader:Ljava/io/Reader;
    if-gez p1, :cond_0

    const v2, 0x7fffffff

    .line 94
    .local v2, max:I
    :goto_0
    const/4 v1, 0x0

    .line 96
    .local v1, bytesRead:I
    :goto_1
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4, v0, v9, v8}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-ltz v1, :cond_1

    .line 97
    invoke-virtual {v6, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 98
    sub-int/2addr v2, v1

    goto :goto_1

    .end local v1           #bytesRead:I
    .end local v2           #max:I
    :cond_0
    move v2, p1

    .line 93
    goto :goto_0

    .line 101
    .restart local v1       #bytesRead:I
    .restart local v2       #max:I
    :cond_1
    invoke-virtual {v4}, Ljava/io/Reader;->close()V

    .line 103
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    .end local v0           #buffer:[C
    .end local v1           #bytesRead:I
    .end local v2           #max:I
    .end local v4           #reader:Ljava/io/Reader;
    .end local v6           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-object v8

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/ibm/icu/text/CharsetMatch;->getName()Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, name:Ljava/lang/String;
    const-string v8, "_rtl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_4

    const-string v8, "_ltr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 112
    .local v7, startSuffix:I
    :goto_3
    if-lez v7, :cond_3

    .line 113
    invoke-virtual {v3, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 115
    :cond_3
    new-instance v5, Ljava/lang/String;

    .end local v5           #result:Ljava/lang/String;
    iget-object v8, p0, Lcom/ibm/icu/text/CharsetMatch;->fRawInput:[B

    invoke-direct {v5, v8, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .restart local v5       #result:Ljava/lang/String;
    move-object v8, v5

    .line 117
    goto :goto_2

    .line 111
    .end local v7           #startSuffix:I
    :cond_4
    const-string v8, "_rtl"

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_3
.end method
