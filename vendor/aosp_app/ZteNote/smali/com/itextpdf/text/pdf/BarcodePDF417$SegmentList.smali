.class public Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;
.super Ljava/lang/Object;
.source "BarcodePDF417.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/BarcodePDF417;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SegmentList"
.end annotation


# instance fields
.field protected list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 1552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(CII)V
    .locals 2
    .parameter "type"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1556
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    new-instance v1, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;

    invoke-direct {v1, p1, p2, p3}, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;-><init>(CII)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1557
    return-void
.end method

.method public get(I)Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;
    .locals 1
    .parameter "idx"

    .prologue
    .line 1560
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1561
    :cond_0
    const/4 v0, 0x0

    .line 1562
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .parameter "idx"

    .prologue
    .line 1566
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1569
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$SegmentList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
