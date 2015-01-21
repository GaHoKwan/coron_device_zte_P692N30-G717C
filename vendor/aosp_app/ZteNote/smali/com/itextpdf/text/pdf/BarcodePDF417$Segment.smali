.class public Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;
.super Ljava/lang/Object;
.source "BarcodePDF417.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/BarcodePDF417;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Segment"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field public type:C


# direct methods
.method public constructor <init>(CII)V
    .locals 0
    .parameter "type"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1546
    iput-char p1, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;->type:C

    .line 1547
    iput p2, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;->start:I

    .line 1548
    iput p3, p0, Lcom/itextpdf/text/pdf/BarcodePDF417$Segment;->end:I

    .line 1549
    return-void
.end method
