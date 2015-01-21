.class public Lcom/itextpdf/text/pdf/parser/LineSegment;
.super Ljava/lang/Object;
.source "LineSegment.java"


# instance fields
.field private final endPoint:Lcom/itextpdf/text/pdf/parser/Vector;

.field private final startPoint:Lcom/itextpdf/text/pdf/parser/Vector;


# direct methods
.method public constructor <init>(Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;)V
    .locals 0
    .parameter "startPoint"
    .parameter "endPoint"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->startPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 66
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->endPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 67
    return-void
.end method


# virtual methods
.method public getBoundingRectange()Lcom/itextpdf/awt/geom/Rectangle2D$Float;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v0

    .line 101
    .local v0, x1:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v2

    .line 102
    .local v2, y1:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v1

    .line 103
    .local v1, x2:F
    invoke-virtual {p0}, Lcom/itextpdf/text/pdf/parser/LineSegment;->getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v3

    .line 104
    .local v3, y2:F
    new-instance v4, Lcom/itextpdf/awt/geom/Rectangle2D$Float;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v7, v1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sub-float v8, v3, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/itextpdf/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v4
.end method

.method public getEndPoint()Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->endPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    return-object v0
.end method

.method public getLength()F
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->endPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    iget-object v1, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->startPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v0, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/Vector;->length()F

    move-result v0

    return v0
.end method

.method public getStartPoint()Lcom/itextpdf/text/pdf/parser/Vector;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->startPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    return-object v0
.end method

.method public transformBy(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/LineSegment;
    .locals 3
    .parameter "m"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->startPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v1

    .line 115
    .local v1, newStart:Lcom/itextpdf/text/pdf/parser/Vector;
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LineSegment;->endPoint:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v2, p1}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Matrix;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v0

    .line 116
    .local v0, newEnd:Lcom/itextpdf/text/pdf/parser/Vector;
    new-instance v2, Lcom/itextpdf/text/pdf/parser/LineSegment;

    invoke-direct {v2, v1, v0}, Lcom/itextpdf/text/pdf/parser/LineSegment;-><init>(Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;)V

    return-object v2
.end method
