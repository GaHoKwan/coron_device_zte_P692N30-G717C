.class public Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;
.super Ljava/lang/Object;
.source "JBIG2SegmentReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JBIG2Page"
.end annotation


# instance fields
.field public final page:I

.field public pageBitmapHeight:I

.field public pageBitmapWidth:I

.field private final segs:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private final sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;


# direct methods
.method public constructor <init>(ILcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;)V
    .locals 2
    .parameter "page"
    .parameter "sr"

    .prologue
    const/4 v1, -0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->segs:Ljava/util/SortedMap;

    .line 142
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapWidth:I

    .line 143
    iput v1, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapHeight:I

    .line 145
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->page:I

    .line 146
    iput-object p2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->sr:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;

    .line 147
    return-void
.end method


# virtual methods
.method public addSegment(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->segs:Ljava/util/SortedMap;

    iget v1, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public getData(Z)[B
    .locals 9
    .parameter "for_embedding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 157
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    .local v2, os:Ljava/io/ByteArrayOutputStream;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->segs:Ljava/util/SortedMap;

    invoke-interface {v5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 159
    .local v4, sn:Ljava/lang/Integer;
    iget-object v5, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->segs:Ljava/util/SortedMap;

    invoke-interface {v5, v4}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    .line 163
    .local v3, s:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    if-eqz p1, :cond_1

    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v6, 0x33

    if-eq v5, v6, :cond_0

    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v6, 0x31

    if-eq v5, v6, :cond_0

    .line 168
    :cond_1
    if-eqz p1, :cond_3

    .line 170
    iget-object v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->headerData:[B

    invoke-static {v5}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->copyByteArray([B)[B

    move-result-object v0

    .line 171
    .local v0, headerData_emb:[B
    iget-boolean v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_size:Z

    if-eqz v5, :cond_2

    .line 172
    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    aput-byte v7, v0, v5

    .line 173
    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    add-int/lit8 v5, v5, 0x1

    aput-byte v7, v0, v5

    .line 174
    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    add-int/lit8 v5, v5, 0x2

    aput-byte v7, v0, v5

    .line 175
    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    add-int/lit8 v5, v5, 0x3

    aput-byte v8, v0, v5

    .line 179
    :goto_1
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 183
    .end local v0           #headerData_emb:[B
    :goto_2
    iget-object v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->data:[B

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_0

    .line 177
    .restart local v0       #headerData_emb:[B
    :cond_2
    iget v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    aput-byte v8, v0, v5

    goto :goto_1

    .line 181
    .end local v0           #headerData_emb:[B
    :cond_3
    iget-object v5, v3, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->headerData:[B

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 185
    .end local v3           #s:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    .end local v4           #sn:Ljava/lang/Integer;
    :cond_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 186
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method
