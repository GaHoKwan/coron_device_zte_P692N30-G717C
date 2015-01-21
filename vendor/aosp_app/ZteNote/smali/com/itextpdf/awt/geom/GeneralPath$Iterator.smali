.class Lcom/itextpdf/awt/geom/GeneralPath$Iterator;
.super Ljava/lang/Object;
.source "GeneralPath.java"

# interfaces
.implements Lcom/itextpdf/awt/geom/PathIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/awt/geom/GeneralPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Iterator"
.end annotation


# instance fields
.field p:Lcom/itextpdf/awt/geom/GeneralPath;

.field pointIndex:I

.field t:Lcom/itextpdf/awt/geom/AffineTransform;

.field final synthetic this$0:Lcom/itextpdf/awt/geom/GeneralPath;

.field typeIndex:I


# direct methods
.method constructor <init>(Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/GeneralPath;)V
    .locals 1
    .parameter
    .parameter "path"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;-><init>(Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/AffineTransform;)V

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/GeneralPath;Lcom/itextpdf/awt/geom/AffineTransform;)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "at"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->this$0:Lcom/itextpdf/awt/geom/GeneralPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p2, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    .line 121
    iput-object p3, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    .line 122
    return-void
.end method


# virtual methods
.method public currentSegment([D)I
    .locals 9
    .parameter "coords"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->typeIndex:I

    aget-byte v8, v0, v1

    .line 142
    .local v8, type:I
    sget-object v0, Lcom/itextpdf/awt/geom/GeneralPath;->pointShift:[I

    aget v6, v0, v8

    .line 143
    .local v6, count:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_1

    .line 144
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    add-int/2addr v1, v7

    aget v0, v0, v1

    float-to-double v0, v0

    aput-wide v0, p1, v7

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    div-int/lit8 v5, v6, 0x2

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([DI[DII)V

    .line 149
    :cond_2
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    .line 150
    return v8
.end method

.method public currentSegment([F)I
    .locals 8
    .parameter "coords"

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-virtual {p0}, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "awt.4B"

    invoke-static {v1}, Lcom/itextpdf/awt/geom/misc/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/GeneralPath;->types:[B

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->typeIndex:I

    aget-byte v7, v0, v1

    .line 159
    .local v7, type:I
    sget-object v0, Lcom/itextpdf/awt/geom/GeneralPath;->pointShift:[I

    aget v6, v0, v7

    .line 160
    .local v6, count:I
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    iget-object v0, v0, Lcom/itextpdf/awt/geom/GeneralPath;->points:[F

    iget v1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    invoke-static {v0, v1, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 161
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->t:Lcom/itextpdf/awt/geom/AffineTransform;

    div-int/lit8 v5, v6, 0x2

    move-object v1, p1

    move-object v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/awt/geom/AffineTransform;->transform([FI[FII)V

    .line 164
    :cond_1
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->pointIndex:I

    .line 165
    return v7
.end method

.method public getWindingRule()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    invoke-virtual {v0}, Lcom/itextpdf/awt/geom/GeneralPath;->getWindingRule()I

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->typeIndex:I

    iget-object v1, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->p:Lcom/itextpdf/awt/geom/GeneralPath;

    iget v1, v1, Lcom/itextpdf/awt/geom/GeneralPath;->typeSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->typeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itextpdf/awt/geom/GeneralPath$Iterator;->typeIndex:I

    .line 134
    return-void
.end method
