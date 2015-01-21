.class public Lcom/itextpdf/text/pdf/codec/JBIG2Image;
.super Ljava/lang/Object;
.source "JBIG2Image.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalSegment(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)[B
    .locals 3
    .parameter "ra"

    .prologue
    .line 68
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 69
    .local v1, sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read()V

    .line 70
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->getGlobal(Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    .end local v1           #sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    :goto_0
    return-object v2

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getJbig2Image(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;I)Lcom/itextpdf/text/Image;
    .locals 8
    .parameter "ra"
    .parameter "page"

    .prologue
    const/4 v4, 0x1

    .line 83
    if-ge p1, v4, :cond_0

    .line 84
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "the.page.number.must.be.gt.eq.1"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 87
    :cond_0
    :try_start_0
    new-instance v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;

    invoke-direct {v3, p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 88
    .local v3, sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    invoke-virtual {v3}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read()V

    .line 89
    invoke-virtual {v3, p1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->getPage(I)Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    move-result-object v2

    .line 90
    .local v2, p:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;
    new-instance v1, Lcom/itextpdf/text/ImgJBIG2;

    iget v4, v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapWidth:I

    iget v5, v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapHeight:I

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->getData(Z)[B

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->getGlobal(Z)[B

    move-result-object v7

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/itextpdf/text/ImgJBIG2;-><init>(II[B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .local v1, img:Lcom/itextpdf/text/Image;
    return-object v1

    .line 92
    .end local v1           #img:Lcom/itextpdf/text/Image;
    .end local v2           #p:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;
    .end local v3           #sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v4, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public static getNumberOfPages(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)I
    .locals 3
    .parameter "ra"

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;

    invoke-direct {v1, p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;-><init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V

    .line 105
    .local v1, sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read()V

    .line 106
    invoke-virtual {v1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->numberOfPages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 107
    .end local v1           #sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/text/ExceptionConverter;

    invoke-direct {v2, v0}, Lcom/itextpdf/text/ExceptionConverter;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
