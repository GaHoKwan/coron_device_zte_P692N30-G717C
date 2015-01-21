.class public Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;
.super Ljava/lang/Object;
.source "JBIG2SegmentReader.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JBIG2Segment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;",
        ">;"
    }
.end annotation


# instance fields
.field public countOfReferredToSegments:I

.field public data:[B

.field public dataLength:J

.field public deferredNonRetain:Z

.field public headerData:[B

.field public page:I

.field public page_association_offset:I

.field public page_association_size:Z

.field public referredToSegmentNumbers:[I

.field public final segmentNumber:I

.field public segmentRetentionFlags:[Z

.field public type:I


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .parameter "segment_number"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->dataLength:J

    .line 113
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page:I

    .line 114
    iput-object v3, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->referredToSegmentNumbers:[I

    .line 115
    iput-object v3, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentRetentionFlags:[Z

    .line 116
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->type:I

    .line 117
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->deferredNonRetain:Z

    .line 118
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->countOfReferredToSegments:I

    .line 119
    iput-object v3, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->data:[B

    .line 120
    iput-object v3, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->headerData:[B

    .line 121
    iput-boolean v4, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_size:Z

    .line 122
    iput v2, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->page_association_offset:I

    .line 125
    iput p1, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    .line 126
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 129
    iget v0, p0, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    iget v1, p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->segmentNumber:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 109
    check-cast p1, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;->compareTo(Lcom/itextpdf/text/pdf/codec/JBIG2SegmentReader$JBIG2Segment;)I

    move-result v0

    return v0
.end method
