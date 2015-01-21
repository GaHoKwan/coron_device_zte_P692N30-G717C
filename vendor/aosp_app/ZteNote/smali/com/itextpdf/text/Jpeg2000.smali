.class public Lcom/itextpdf/text/Jpeg2000;
.super Lcom/itextpdf/text/Image;
.source "Jpeg2000.java"


# static fields
.field public static final JP2_BPCC:I = 0x62706363

.field public static final JP2_COLR:I = 0x636f6c72

.field public static final JP2_DBTL:I = 0x6474626c

.field public static final JP2_FTYP:I = 0x66747970

.field public static final JP2_IHDR:I = 0x69686472

.field public static final JP2_JP:I = 0x6a502020

.field public static final JP2_JP2:I = 0x6a703220

.field public static final JP2_JP2C:I = 0x6a703263

.field public static final JP2_JP2H:I = 0x6a703268

.field public static final JP2_URL:I = 0x75726c20

.field public static final JPIP_JPIP:I = 0x6a706970


# instance fields
.field boxLength:I

.field boxType:I

.field inp:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/itextpdf/text/Image;)V
    .locals 0
    .parameter "image"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Lcom/itextpdf/text/Image;)V

    .line 84
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
    .line 94
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Image;-><init>(Ljava/net/URL;)V

    .line 95
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg2000;->processParameters()V

    .line 96
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
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    .line 109
    iput-object p1, p0, Lcom/itextpdf/text/Jpeg2000;->originalData:[B

    .line 110
    invoke-direct {p0}, Lcom/itextpdf/text/Jpeg2000;->processParameters()V

    .line 111
    return-void
.end method

.method public constructor <init>([BFF)V
    .locals 0
    .parameter "img"
    .parameter "width"
    .parameter "height"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/BadElementException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/itextpdf/text/Jpeg2000;-><init>([B)V

    .line 125
    iput p2, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 126
    iput p3, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 127
    return-void
.end method

.method private cio_read(I)I
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, v:I
    add-int/lit8 v0, p1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v3, v0, 0x3

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 131
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 134
    :cond_0
    return v1
.end method

.method private processParameters()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v6, 0x6a703268

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 158
    const/16 v4, 0x21

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->type:I

    .line 159
    iput v5, p0, Lcom/itextpdf/text/Jpeg2000;->originalType:I

    .line 160
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    if-nez v4, :cond_1

    .line 163
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->url:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 168
    :goto_0
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 169
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_a

    .line 170
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    .line 171
    const v4, 0x6a502020

    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v4, v5, :cond_2

    .line 172
    new-instance v4, Ljava/io/IOException;

    const-string v5, "expected.jp.marker"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    if-eqz v5, :cond_0

    .line 223
    :try_start_1
    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    :goto_1
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    :cond_0
    throw v4

    .line 166
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/itextpdf/text/Jpeg2000;->rawData:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    goto :goto_0

    .line 174
    :cond_2
    const v4, 0xd0a870a

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 175
    new-instance v4, Ljava/io/IOException;

    const-string v5, "error.with.jp.marker"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 179
    const v4, 0x66747970

    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v4, v5, :cond_4

    .line 180
    new-instance v4, Ljava/io/IOException;

    const-string v5, "expected.ftyp.marker"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 182
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    add-int/lit8 v5, v5, -0x8

    invoke-static {v4, v5}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 183
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 185
    :cond_5
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v6, v4, :cond_7

    .line 186
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    const v5, 0x6a703263

    if-ne v4, v5, :cond_6

    .line 187
    new-instance v4, Ljava/io/IOException;

    const-string v5, "expected.jp2h.marker"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_6
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    add-int/lit8 v5, v5, -0x8

    invoke-static {v4, v5}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 190
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 192
    :cond_7
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-ne v6, v4, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->jp2_read_boxhdr()V

    .line 194
    const v4, 0x69686472

    iget v5, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    if-eq v4, v5, :cond_8

    .line 195
    new-instance v4, Ljava/io/IOException;

    const-string v5, "expected.ihdr.marker"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 197
    :cond_8
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 198
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->setTop(F)V

    .line 199
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 200
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->setRight(F)V

    .line 201
    const/4 v4, -0x1

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->bpc:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    if-eqz v4, :cond_9

    .line 223
    :try_start_3
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 224
    :goto_3
    iput-object v7, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    .line 227
    :cond_9
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->getWidth()F

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->plainWidth:F

    .line 228
    invoke-virtual {p0}, Lcom/itextpdf/text/Jpeg2000;->getHeight()F

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->plainHeight:F

    .line 229
    return-void

    .line 203
    :cond_a
    :try_start_4
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const v5, -0xb000af

    if-ne v4, v5, :cond_b

    .line 204
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 205
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v1

    .line 206
    .local v1, x1:I
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v3

    .line 207
    .local v3, y1:I
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    .line 208
    .local v0, x0:I
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v2

    .line 209
    .local v2, y0:I
    iget-object v4, p0, Lcom/itextpdf/text/Jpeg2000;->inp:Ljava/io/InputStream;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/itextpdf/text/Utilities;->skip(Ljava/io/InputStream;I)V

    .line 210
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->colorspace:I

    .line 211
    const/16 v4, 0x8

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->bpc:I

    .line 212
    sub-int v4, v3, v2

    int-to-float v4, v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    .line 213
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledHeight:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->setTop(F)V

    .line 214
    sub-int v4, v1, v0

    int-to-float v4, v4

    iput v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    .line 215
    iget v4, p0, Lcom/itextpdf/text/Jpeg2000;->scaledWidth:F

    invoke-virtual {p0, v4}, Lcom/itextpdf/text/Jpeg2000;->setRight(F)V

    goto :goto_2

    .line 218
    .end local v0           #x0:I
    .end local v1           #x1:I
    .end local v2           #y0:I
    .end local v3           #y1:I
    :cond_b
    new-instance v4, Ljava/io/IOException;

    const-string v5, "not.a.valid.jpeg2000.file"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    :catch_0
    move-exception v5

    goto/16 :goto_1

    :catch_1
    move-exception v4

    goto :goto_3
.end method


# virtual methods
.method public jp2_read_boxhdr()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 138
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 139
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxType:I

    .line 140
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 141
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot.handle.box.sizes.higher.than.2.32"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_0
    invoke-direct {p0, v2}, Lcom/itextpdf/text/Jpeg2000;->cio_read(I)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    .line 145
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported.box.size.eq.eq.0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget v0, p0, Lcom/itextpdf/text/Jpeg2000;->boxLength:I

    if-nez v0, :cond_2

    .line 149
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported.box.size.eq.eq.0"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2
    return-void
.end method
