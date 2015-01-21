.class public Lorg/achartengine/chart/BarChartSection;
.super Ljava/lang/Object;
.source "BarChartSection.java"


# instance fields
.field private color:I

.field private from:D

.field private to:D


# direct methods
.method public constructor <init>(DDI)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "color"

    .prologue
    const-wide/high16 v2, 0x4090

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    div-double v0, p1, v2

    iput-wide v0, p0, Lorg/achartengine/chart/BarChartSection;->from:D

    .line 19
    div-double v0, p3, v2

    iput-wide v0, p0, Lorg/achartengine/chart/BarChartSection;->to:D

    .line 20
    iput p5, p0, Lorg/achartengine/chart/BarChartSection;->color:I

    .line 21
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/achartengine/chart/BarChartSection;->color:I

    return v0
.end method

.method public getFrom()D
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lorg/achartengine/chart/BarChartSection;->from:D

    return-wide v0
.end method

.method public getTo()D
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lorg/achartengine/chart/BarChartSection;->to:D

    return-wide v0
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 44
    iput p1, p0, Lorg/achartengine/chart/BarChartSection;->color:I

    .line 45
    return-void
.end method

.method public setFrom(D)V
    .locals 0
    .parameter "from"

    .prologue
    .line 28
    iput-wide p1, p0, Lorg/achartengine/chart/BarChartSection;->from:D

    .line 29
    return-void
.end method

.method public setTo(D)V
    .locals 0
    .parameter "to"

    .prologue
    .line 36
    iput-wide p1, p0, Lorg/achartengine/chart/BarChartSection;->to:D

    .line 37
    return-void
.end method
