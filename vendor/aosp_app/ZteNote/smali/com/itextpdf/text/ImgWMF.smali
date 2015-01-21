.class public Lcom/itextpdf/text/ImgWMF;
.super Lcom/itextpdf/text/Image;
.source "ImgWMF.java"


# direct methods
.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Lcom/itextpdf/text/Utilities;->toURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/text/ImgWMF;-><init>(Ljava/net/URL;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 82
    invoke-direct {p0}, Lcom/itextpdf/text/ImgWMF;->processParameters()V

    .line 83
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "img"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const/4 v0, 0x0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 108
    iput-object p1, p0, Lcom/itextpdf/text/ImgWMF;->rawData:[B

    .line 109
    iput-object p1, p0, Lcom/itextpdf/text/ImgWMF;->originalData:[B

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/text/ImgWMF;->processParameters()V

    .line 111
    return-void
.end method

.method private processParameters()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v11, 0x4290

    .line 120
    const/16 v9, 0x23

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->type:I

    .line 121
    const/4 v9, 0x6

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->originalType:I

    .line 122
    const/4 v4, 0x0

    .line 125
    .local v4, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v9, p0, Lcom/itextpdf/text/ImgWMF;->rawData:[B

    if-nez v9, :cond_1

    .line 126
    iget-object v9, p0, Lcom/itextpdf/text/ImgWMF;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 127
    iget-object v9, p0, Lcom/itextpdf/text/ImgWMF;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, errorID:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;

    invoke-direct {v2, v4}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;-><init>(Ljava/io/InputStream;)V

    .line 134
    .local v2, in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readInt()I

    move-result v9

    const v10, -0x65393229

    if-eq v9, v10, :cond_2

    .line 135
    new-instance v9, Lcom/itextpdf/text/BadElementException;

    const-string v10, "1.is.not.a.valid.placeable.windows.metafile"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/text/BadElementException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v1           #errorID:Ljava/lang/String;
    .end local v2           #in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;
    :catchall_0
    move-exception v9

    :goto_1
    if-eqz v4, :cond_0

    .line 152
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getWidth()F

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/ImgWMF;->plainWidth:F

    .line 155
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getHeight()F

    move-result v10

    iput v10, p0, Lcom/itextpdf/text/ImgWMF;->plainHeight:F

    throw v9

    .line 130
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v9, p0, Lcom/itextpdf/text/ImgWMF;->rawData:[B

    invoke-direct {v5, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v4           #is:Ljava/io/InputStream;
    .local v5, is:Ljava/io/InputStream;
    :try_start_2
    const-string v1, "Byte array"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v1       #errorID:Ljava/lang/String;
    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 137
    .restart local v2       #in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    .line 138
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v6

    .line 139
    .local v6, left:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v8

    .line 140
    .local v8, top:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v7

    .line 141
    .local v7, right:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readShort()I

    move-result v0

    .line 142
    .local v0, bottom:I
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;->readWord()I

    move-result v3

    .line 143
    .local v3, inch:I
    const/16 v9, 0x48

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->dpiX:I

    .line 144
    const/16 v9, 0x48

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->dpiY:I

    .line 145
    sub-int v9, v0, v8

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    mul-float/2addr v9, v11

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->scaledHeight:F

    .line 146
    iget v9, p0, Lcom/itextpdf/text/ImgWMF;->scaledHeight:F

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/ImgWMF;->setTop(F)V

    .line 147
    sub-int v9, v7, v6

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    mul-float/2addr v9, v11

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->scaledWidth:F

    .line 148
    iget v9, p0, Lcom/itextpdf/text/ImgWMF;->scaledWidth:F

    invoke-virtual {p0, v9}, Lcom/itextpdf/text/ImgWMF;->setRight(F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    if-eqz v4, :cond_3

    .line 152
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getWidth()F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->plainWidth:F

    .line 155
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getHeight()F

    move-result v9

    iput v9, p0, Lcom/itextpdf/text/ImgWMF;->plainHeight:F

    .line 157
    return-void

    .line 151
    .end local v0           #bottom:I
    .end local v1           #errorID:Ljava/lang/String;
    .end local v2           #in:Lcom/itextpdf/text/pdf/codec/wmf/InputMeta;
    .end local v3           #inch:I
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #left:I
    .end local v7           #right:I
    .end local v8           #top:I
    .restart local v5       #is:Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    goto :goto_1
.end method


# virtual methods
.method public readWMF(Lcom/itextpdf/text/pdf/PdfTemplate;)V
    .locals 4
    .parameter "template"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/ImgWMF;->setTemplateData(Lcom/itextpdf/text/pdf/PdfTemplate;)V

    .line 166
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getWidth()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setWidth(F)V

    .line 167
    invoke-virtual {p0}, Lcom/itextpdf/text/ImgWMF;->getHeight()F

    move-result v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/text/pdf/PdfTemplate;->setHeight(F)V

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, is:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/text/ImgWMF;->rawData:[B

    if-nez v3, :cond_1

    .line 171
    iget-object v3, p0, Lcom/itextpdf/text/ImgWMF;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 176
    :goto_0
    new-instance v2, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;

    invoke-direct {v2, v0, p1}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;-><init>(Ljava/io/InputStream;Lcom/itextpdf/text/pdf/PdfContentByte;)V

    .line 177
    .local v2, meta:Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;
    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;->readAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 184
    :cond_0
    return-void

    .line 174
    .end local v2           #meta:Lcom/itextpdf/text/pdf/codec/wmf/MetaDo;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/itextpdf/text/ImgWMF;->rawData:[B

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .restart local v0       #is:Ljava/io/InputStream;
    goto :goto_0

    .line 180
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v3
.end method
