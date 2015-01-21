.class public abstract Lcom/itextpdf/text/DocWriter;
.super Ljava/lang/Object;
.source "DocWriter.java"

# interfaces
.implements Lcom/itextpdf/text/DocListener;


# static fields
.field public static final EQUALS:B = 0x3dt

.field public static final FORWARD:B = 0x2ft

.field public static final GT:B = 0x3et

.field public static final LT:B = 0x3ct

.field public static final NEWLINE:B = 0xat

.field public static final QUOTE:B = 0x22t

.field public static final SPACE:B = 0x20t

.field public static final TAB:B = 0x9t


# instance fields
.field protected closeStream:Z

.field protected document:Lcom/itextpdf/text/Document;

.field protected open:Z

.field protected os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

.field protected pageSize:Lcom/itextpdf/text/Rectangle;

.field protected pause:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->open:Z

    .line 111
    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->pause:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->closeStream:Z

    .line 119
    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/text/Document;Ljava/io/OutputStream;)V
    .locals 2
    .parameter "document"
    .parameter "os"

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->open:Z

    .line 111
    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->pause:Z

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->closeStream:Z

    .line 129
    iput-object p1, p0, Lcom/itextpdf/text/DocWriter;->document:Lcom/itextpdf/text/Document;

    .line 130
    new-instance v0, Lcom/itextpdf/text/pdf/OutputStreamCounter;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    .line 131
    return-void
.end method

.method public static final getISOBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "text"

    .prologue
    .line 252
    if-nez p0, :cond_1

    .line 253
    const/4 v0, 0x0

    .line 258
    :cond_0
    return-object v0

    .line 254
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 255
    .local v2, len:I
    new-array v0, v2, [B

    .line 256
    .local v0, b:[B
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 257
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 256
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/itextpdf/text/Element;)Z
    .locals 1
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/text/DocumentException;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method protected addTabs(I)V
    .locals 3
    .parameter "indent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    iget-object v1, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 320
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 320
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 231
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/text/DocWriter;->open:Z

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->flush()V

    .line 234
    iget-boolean v1, p0, Lcom/itextpdf/text/DocWriter;->closeStream:Z

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, ioe:Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v1, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public isCloseStream()Z
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->closeStream:Z

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->pause:Z

    return v0
.end method

.method public newPage()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->open:Z

    if-nez v0, :cond_0

    .line 196
    const/4 v0, 0x0

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->open:Z

    .line 156
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->pause:Z

    .line 267
    return-void
.end method

.method public resetPageCount()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/DocWriter;->pause:Z

    .line 285
    return-void
.end method

.method public setCloseStream(Z)V
    .locals 0
    .parameter "closeStream"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/itextpdf/text/DocWriter;->closeStream:Z

    .line 417
    return-void
.end method

.method public setMarginMirroring(Z)Z
    .locals 1
    .parameter "MarginMirroring"

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public setMarginMirroringTopBottom(Z)Z
    .locals 1
    .parameter "MarginMirroring"

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public setMargins(FFFF)Z
    .locals 1
    .parameter "marginLeft"
    .parameter "marginRight"
    .parameter "marginTop"
    .parameter "marginBottom"

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public setPageCount(I)V
    .locals 0
    .parameter "pageN"

    .prologue
    .line 223
    return-void
.end method

.method public setPageSize(Lcom/itextpdf/text/Rectangle;)Z
    .locals 1
    .parameter "pageSize"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/itextpdf/text/DocWriter;->pageSize:Lcom/itextpdf/text/Rectangle;

    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method protected write(Ljava/lang/String;)V
    .locals 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-static {p1}, Lcom/itextpdf/text/DocWriter;->getISOBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write([B)V

    .line 309
    return-void
.end method

.method protected write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x22

    .line 335
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 336
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/DocWriter;->write(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 338
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 339
    invoke-virtual {p0, p2}, Lcom/itextpdf/text/DocWriter;->write(Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    invoke-virtual {v0, v2}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 341
    return-void
.end method

.method protected writeEnd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 379
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 380
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 381
    return-void
.end method

.method protected writeEnd(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 366
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 367
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/DocWriter;->write(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 369
    return-void
.end method

.method protected writeMarkupAttributes(Ljava/util/Properties;)Z
    .locals 3
    .parameter "markup"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 400
    :goto_0
    return v2

    .line 393
    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 395
    .local v0, attributeIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/text/DocWriter;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v1           #name:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/util/Properties;->clear()V

    .line 400
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected writeStart(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/itextpdf/text/DocWriter;->os:Lcom/itextpdf/text/pdf/OutputStreamCounter;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/OutputStreamCounter;->write(I)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/DocWriter;->write(Ljava/lang/String;)V

    .line 354
    return-void
.end method
