.class Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;
.super Ljava/lang/Object;
.source "LocationTextExtractionStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextChunk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;",
        ">;"
    }
.end annotation


# instance fields
.field final charSpaceWidth:F

.field final distParallelEnd:F

.field final distParallelStart:F

.field final distPerpendicular:I

.field final endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

.field final orientationMagnitude:I

.field final orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

.field final startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

.field final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/text/pdf/parser/Vector;Lcom/itextpdf/text/pdf/parser/Vector;F)V
    .locals 8
    .parameter "string"
    .parameter "startLocation"
    .parameter "endLocation"
    .parameter "charSpaceWidth"

    .prologue
    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 205
    iput-object p3, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 206
    iput p4, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->charSpaceWidth:F

    .line 208
    invoke-virtual {p3, p2}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v0

    .line 209
    .local v0, oVector:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/Vector;->length()F

    move-result v2

    cmpl-float v2, v2, v6

    if-nez v2, :cond_0

    .line 210
    new-instance v0, Lcom/itextpdf/text/pdf/parser/Vector;

    .end local v0           #oVector:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-direct {v0, v7, v6, v6}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    .line 212
    .restart local v0       #oVector:Lcom/itextpdf/text/pdf/parser/Vector;
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/text/pdf/parser/Vector;->normalize()Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    .line 213
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v2

    float-to-double v2, v2

    iget-object v4, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    .line 218
    new-instance v1, Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-direct {v1, v6, v6, v7}, Lcom/itextpdf/text/pdf/parser/Vector;-><init>(FFF)V

    .line 219
    .local v1, origin:Lcom/itextpdf/text/pdf/parser/Vector;
    invoke-virtual {p2, v1}, Lcom/itextpdf/text/pdf/parser/Vector;->subtract(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/Vector;->cross(Lcom/itextpdf/text/pdf/parser/Vector;)Lcom/itextpdf/text/pdf/parser/Vector;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/itextpdf/text/pdf/parser/Vector;->get(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    .line 221
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v2, p2}, Lcom/itextpdf/text/pdf/parser/Vector;->dot(Lcom/itextpdf/text/pdf/parser/Vector;)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    .line 222
    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationVector:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v2, p3}, Lcom/itextpdf/text/pdf/parser/Vector;->dot(Lcom/itextpdf/text/pdf/parser/Vector;)F

    move-result v2

    iput v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelEnd:F

    .line 223
    return-void
.end method

.method static synthetic access$000(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->printDiagnostics()V

    return-void
.end method

.method private static compareInts(II)I
    .locals 1
    .parameter "int1"
    .parameter "int2"

    .prologue
    .line 279
    if-ne p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private printDiagnostics()V
    .locals 3

    .prologue
    .line 226
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Text (@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->startLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->endLocation:Lcom/itextpdf/text/pdf/parser/Vector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 227
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orientationMagnitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distPerpendicular: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distParallel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)I
    .locals 3
    .parameter "rhs"

    .prologue
    .line 260
    if-ne p0, p1, :cond_1

    const/4 v0, 0x0

    .line 269
    :cond_0
    :goto_0
    return v0

    .line 263
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareInts(II)I

    move-result v0

    .line 264
    .local v0, rslt:I
    if-nez v0, :cond_0

    .line 266
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    invoke-static {v1, v2}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareInts(II)I

    move-result v0

    .line 267
    if-nez v0, :cond_0

    .line 269
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 181
    check-cast p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->compareTo(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)I

    move-result v0

    return v0
.end method

.method public distanceFromEndOf(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)F
    .locals 3
    .parameter "other"

    .prologue
    .line 251
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelStart:F

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distParallelEnd:F

    sub-float v0, v1, v2

    .line 252
    .local v0, distance:F
    return v0
.end method

.method public sameLine(Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;)Z
    .locals 3
    .parameter "as"

    .prologue
    const/4 v0, 0x0

    .line 237
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->orientationMagnitude:I

    if-eq v1, v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    iget v1, p0, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    iget v2, p1, Lcom/itextpdf/text/pdf/parser/LocationTextExtractionStrategy$TextChunk;->distPerpendicular:I

    if-ne v1, v2, :cond_0

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method
