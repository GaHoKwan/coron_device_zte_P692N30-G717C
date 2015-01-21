.class public Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
.super Ljava/lang/Object;
.source "JBIG2SegmentReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;,
        Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    }
.end annotation


# static fields
.field public static final END_OF_FILE:I = 0x33

.field public static final END_OF_PAGE:I = 0x31

.field public static final END_OF_STRIPE:I = 0x32

.field public static final EXTENSION:I = 0x3e

.field public static final IMMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x2a

.field public static final IMMEDIATE_GENERIC_REGION:I = 0x26

.field public static final IMMEDIATE_HALFTONE_REGION:I = 0x16

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REFINEMENT_REGION:I = 0x2b

.field public static final IMMEDIATE_LOSSLESS_GENERIC_REGION:I = 0x27

.field public static final IMMEDIATE_LOSSLESS_HALFTONE_REGION:I = 0x17

.field public static final IMMEDIATE_LOSSLESS_TEXT_REGION:I = 0x7

.field public static final IMMEDIATE_TEXT_REGION:I = 0x6

.field public static final INTERMEDIATE_GENERIC_REFINEMENT_REGION:I = 0x28

.field public static final INTERMEDIATE_GENERIC_REGION:I = 0x24

.field public static final INTERMEDIATE_HALFTONE_REGION:I = 0x14

.field public static final INTERMEDIATE_TEXT_REGION:I = 0x4

.field public static final PAGE_INFORMATION:I = 0x30

.field public static final PATTERN_DICTIONARY:I = 0x10

.field public static final PROFILES:I = 0x34

.field public static final SYMBOL_DICTIONARY:I = 0x0

.field public static final TABLES:I = 0x35


# instance fields
.field private final globals:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;",
            ">;"
        }
    .end annotation
.end field

.field private number_of_pages:I

.field private number_of_pages_known:Z

.field private final pages:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;",
            ">;"
        }
    .end annotation
.end field

.field private ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

.field private read:Z

.field private final segments:Ljava/util/SortedMap;
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

.field private sequential:Z


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;)V
    .locals 1
    .parameter "ra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->segments:Ljava/util/SortedMap;

    .line 97
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    .line 98
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->globals:Ljava/util/SortedSet;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->number_of_pages:I

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read:Z

    .line 195
    iput-object p1, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    .line 196
    return-void
.end method

.method public static copyByteArray([B)[B
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 199
    array-length v1, p0

    new-array v0, v1, [B

    .line 200
    .local v0, bc:[B
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    return-object v0
.end method


# virtual methods
.method public getGlobal(Z)[B
    .locals 8
    .parameter "for_embedding"

    .prologue
    .line 407
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 409
    .local v4, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->globals:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    .line 410
    .local v2, element:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    move-object v0, v2

    check-cast v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    move-object v5, v0

    .line 411
    .local v5, s:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    if-eqz p1, :cond_1

    iget v6, v5, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v7, 0x33

    if-eq v6, v7, :cond_0

    iget v6, v5, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v7, 0x31

    if-eq v6, v7, :cond_0

    .line 415
    :cond_1
    iget-object v6, v5, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->headerData:[B

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 416
    iget-object v6, v5, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->data:[B

    invoke-virtual {v4, v6}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v2           #element:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #s:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    :catch_0
    move-exception v1

    .line 420
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 422
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 423
    const/4 v6, 0x0

    .line 425
    :goto_2
    return-object v6

    .line 418
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 425
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_2
.end method

.method public getPage(I)Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;
    .locals 2
    .parameter "page"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    return-object v0
.end method

.method public getPageHeight(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapHeight:I

    return v0
.end method

.method public getPageWidth(I)I
    .locals 2
    .parameter "i"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    iget v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapWidth:I

    return v0
.end method

.method public numberOfPages()I
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public read()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read:Z

    if-eqz v2, :cond_0

    .line 206
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "already.attempted.a.read.on.this.jbig2.file"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read:Z

    .line 210
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->readFileHeader()V

    .line 212
    iget-boolean v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->sequential:Z

    if-eqz v2, :cond_3

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->readHeader()Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    move-result-object v1

    .line 216
    .local v1, tmp:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    invoke-virtual {p0, v1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->readSegment(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)V

    .line 217
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->segments:Ljava/util/SortedMap;

    iget v3, v1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 231
    :cond_2
    return-void

    .line 223
    .end local v1           #tmp:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->readHeader()Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    move-result-object v1

    .line 224
    .restart local v1       #tmp:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->segments:Ljava/util/SortedMap;

    iget v3, v1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget v2, v1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v3, 0x33

    if-ne v2, v3, :cond_3

    .line 226
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->segments:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 227
    .local v0, segs:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 228
    iget-object v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->segments:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    invoke-virtual {p0, v2}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->readSegment(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)V

    goto :goto_0
.end method

.method readFileHeader()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 364
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 365
    new-array v2, v9, [B

    .line 366
    .local v2, idstring:[B
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4, v2}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([B)I

    .line 368
    new-array v3, v9, [B

    fill-array-data v3, :array_0

    .line 370
    .local v3, refidstring:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 371
    aget-byte v4, v2, v1

    aget-byte v7, v3, v1

    if-eq v4, v7, :cond_0

    .line 372
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "file.header.idstring.not.good.at.byte.1"

    invoke-static {v5, v1}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v0

    .line 378
    .local v0, fileheaderflags:I
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v5, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->sequential:Z

    .line 379
    and-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v5, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->number_of_pages_known:Z

    .line 381
    and-int/lit16 v4, v0, 0xfc

    if-eqz v4, :cond_4

    .line 382
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "file.header.flags.bits.2.7.not.0"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move v4, v6

    .line 378
    goto :goto_1

    :cond_3
    move v5, v6

    .line 379
    goto :goto_2

    .line 385
    :cond_4
    iget-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->number_of_pages_known:Z

    if-eqz v4, :cond_5

    .line 386
    iget-object v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v4}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v4

    iput v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->number_of_pages:I

    .line 388
    :cond_5
    return-void

    .line 368
    :array_0
    .array-data 0x1
        0x97t
        0x4at
        0x42t
        0x32t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method readHeader()Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v11, v0

    .line 264
    .local v11, ptr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v19

    .line 265
    .local v19, segment_number:I
    new-instance v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    move/from16 v0, v19

    invoke-direct {v15, v0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;-><init>(I)V

    .line 268
    .local v15, s:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v18

    .line 269
    .local v18, segment_header_flags:I
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    const/4 v4, 0x1

    .line 270
    .local v4, deferred_non_retain:Z
    :goto_0
    iput-boolean v4, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->deferredNonRetain:Z

    .line 271
    and-int/lit8 v23, v18, 0x40

    const/16 v24, 0x40

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/4 v10, 0x1

    .line 272
    .local v10, page_association_size:Z
    :goto_1
    and-int/lit8 v22, v18, 0x3f

    .line 273
    .local v22, segment_type:I
    move/from16 v0, v22

    iput v0, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v12

    .line 277
    .local v12, referred_to_byte0:I
    and-int/lit16 v0, v12, 0xe0

    move/from16 v23, v0

    shr-int/lit8 v3, v23, 0x5

    .line 278
    .local v3, count_of_referred_to_segments:I
    const/4 v14, 0x0

    .line 279
    .local v14, referred_to_segment_numbers:[I
    const/16 v21, 0x0

    .line 281
    .local v21, segment_retention_flags:[Z
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v3, v0, :cond_6

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v24

    const-wide/16 v26, 0x1

    sub-long v24, v24, v26

    invoke-virtual/range {v23 .. v25}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v23

    const v24, 0x1fffffff

    and-int v3, v23, v24

    .line 285
    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v21, v0

    .line 286
    const/4 v7, 0x0

    .line 287
    .local v7, i:I
    const/4 v13, 0x0

    .line 289
    .local v13, referred_to_current_byte:I
    :cond_0
    rem-int/lit8 v8, v7, 0x8

    .line 290
    .local v8, j:I
    if-nez v8, :cond_1

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v13

    .line 293
    :cond_1
    const/16 v23, 0x1

    shl-int v23, v23, v8

    and-int v23, v23, v13

    shr-int v23, v23, v8

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v23, 0x1

    :goto_2
    aput-boolean v23, v21, v7

    .line 294
    add-int/lit8 v7, v7, 0x1

    .line 295
    if-le v7, v3, :cond_0

    .line 308
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v13           #referred_to_current_byte:I
    :cond_2
    move-object/from16 v0, v21

    iput-object v0, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentRetentionFlags:[Z

    .line 309
    iput v3, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->countOfReferredToSegments:I

    .line 312
    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v23

    new-array v14, v0, [I

    .line 313
    const/4 v7, 0x1

    .restart local v7       #i:I
    :goto_3
    if-gt v7, v3, :cond_c

    .line 314
    const/16 v23, 0x100

    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_a

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v23

    aput v23, v14, v7

    .line 313
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 269
    .end local v3           #count_of_referred_to_segments:I
    .end local v4           #deferred_non_retain:Z
    .end local v7           #i:I
    .end local v10           #page_association_size:Z
    .end local v12           #referred_to_byte0:I
    .end local v14           #referred_to_segment_numbers:[I
    .end local v21           #segment_retention_flags:[Z
    .end local v22           #segment_type:I
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 271
    .restart local v4       #deferred_non_retain:Z
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 293
    .restart local v3       #count_of_referred_to_segments:I
    .restart local v7       #i:I
    .restart local v8       #j:I
    .restart local v10       #page_association_size:Z
    .restart local v12       #referred_to_byte0:I
    .restart local v13       #referred_to_current_byte:I
    .restart local v14       #referred_to_segment_numbers:[I
    .restart local v21       #segment_retention_flags:[Z
    .restart local v22       #segment_type:I
    :cond_5
    const/16 v23, 0x0

    goto :goto_2

    .line 297
    .end local v7           #i:I
    .end local v8           #j:I
    .end local v13           #referred_to_current_byte:I
    :cond_6
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v3, v0, :cond_8

    .line 299
    add-int/lit8 v23, v3, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v21, v0

    .line 300
    and-int/lit8 v12, v12, 0x1f

    .line 301
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    if-gt v7, v3, :cond_2

    .line 302
    const/16 v23, 0x1

    shl-int v23, v23, v7

    and-int v23, v23, v12

    shr-int v23, v23, v7

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    const/16 v23, 0x1

    :goto_6
    aput-boolean v23, v21, v7

    .line 301
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 302
    :cond_7
    const/16 v23, 0x0

    goto :goto_6

    .line 305
    .end local v7           #i:I
    :cond_8
    const/16 v23, 0x5

    move/from16 v0, v23

    if-eq v3, v0, :cond_9

    const/16 v23, 0x6

    move/from16 v0, v23

    if-ne v3, v0, :cond_2

    .line 306
    :cond_9
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "count.of.referred.to.segments.had.bad.value.in.header.for.segment.1.starting.at.2"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 316
    .restart local v7       #i:I
    :cond_a
    const/high16 v23, 0x1

    move/from16 v0, v19

    move/from16 v1, v23

    if-gt v0, v1, :cond_b

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedShort()I

    move-result v23

    aput v23, v14, v7

    goto :goto_4

    .line 319
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    aput v23, v14, v7

    goto/16 :goto_4

    .line 322
    :cond_c
    iput-object v14, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->referredToSegmentNumbers:[I

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    sub-int v9, v23, v11

    .line 327
    .local v9, page_association_offset:I
    if-eqz v10, :cond_d

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v20

    .line 332
    .local v20, segment_page_association:I
    :goto_7
    if-gez v20, :cond_e

    .line 333
    new-instance v23, Ljava/lang/IllegalStateException;

    const-string v24, "page.1.invalid.for.segment.2.starting.at.3"

    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x2

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    invoke-static/range {v24 .. v25}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 330
    .end local v20           #segment_page_association:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read()I

    move-result v20

    .restart local v20       #segment_page_association:I
    goto :goto_7

    .line 335
    :cond_e
    move/from16 v0, v20

    iput v0, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page:I

    .line 337
    iput-boolean v10, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_size:Z

    .line 338
    iput v9, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    .line 340
    if-lez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    new-instance v25, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;-><init>(ILcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;)V

    invoke-interface/range {v23 .. v25}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    :cond_f
    if-lez v20, :cond_10

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    move-object/from16 v23, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->addSegment(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)V

    .line 350
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readUnsignedInt()J

    move-result-wide v16

    .line 352
    .local v16, segment_data_length:J
    move-wide/from16 v0, v16

    iput-wide v0, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->dataLength:J

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v23

    move-wide/from16 v0, v23

    long-to-int v5, v0

    .line 355
    .local v5, end_ptr:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    int-to-long v0, v11

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 356
    sub-int v23, v5, v11

    move/from16 v0, v23

    new-array v6, v0, [B

    .line 357
    .local v6, header_data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([B)I

    .line 358
    iput-object v6, v15, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->headerData:[B

    .line 360
    return-object v15

    .line 346
    .end local v5           #end_ptr:I
    .end local v6           #header_data:[B
    .end local v16           #segment_data_length:J
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->globals:Ljava/util/SortedSet;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v0, v15}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method readSegment(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)V
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v6

    long-to-int v5, v6

    .line 236
    .local v5, ptr:I
    iget-wide v6, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->dataLength:J

    const-wide v8, 0xffffffffL

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-wide v6, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->dataLength:J

    long-to-int v6, v6

    new-array v0, v6, [B

    .line 242
    .local v0, data:[B
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6, v0}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->read([B)I

    .line 243
    iput-object v0, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->data:[B

    .line 245
    iget v6, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    const/16 v7, 0x30

    if-ne v6, v7, :cond_0

    .line 246
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->getFilePointer()J

    move-result-wide v6

    long-to-int v1, v6

    .line 247
    .local v1, last:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 248
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v4

    .line 249
    .local v4, page_bitmap_width:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    invoke-virtual {v6}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->readInt()I

    move-result v3

    .line 250
    .local v3, page_bitmap_height:I
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->ra:Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8}, Lcom/itextpdf/text/pdf/RandomAccessFileOrArray;->seek(J)V

    .line 251
    iget-object v6, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->pages:Ljava/util/SortedMap;

    iget v7, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;

    .line 252
    .local v2, p:Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;
    if-nez v2, :cond_2

    .line 253
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "referring.to.widht.height.of.page.we.havent.seen.yet.1"

    iget v8, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page:I

    invoke-static {v7, v8}, Lcom/itextpdf/text/error_messages/MessageLocalization;->getComposedMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 256
    :cond_2
    iput v4, v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapWidth:I

    .line 257
    iput v3, v2, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Page;->pageBitmapHeight:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->read:Z

    if-eqz v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Jbig2SegmentReader: number of pages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;->numberOfPages()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "Jbig2SegmentReader in indeterminate state."

    goto :goto_0
.end method
