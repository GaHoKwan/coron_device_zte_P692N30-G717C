.class public Lcom/mediatek/ngin3d/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/mediatek/ngin3d/Geometry;->x:I

    .line 58
    iput p2, p0, Lcom/mediatek/ngin3d/Geometry;->y:I

    .line 59
    iput p3, p0, Lcom/mediatek/ngin3d/Geometry;->width:I

    .line 60
    iput p4, p0, Lcom/mediatek/ngin3d/Geometry;->height:I

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/mediatek/ngin3d/Geometry;

    .line 70
    .local v0, geometry:Lcom/mediatek/ngin3d/Geometry;
    iget v3, p0, Lcom/mediatek/ngin3d/Geometry;->height:I

    iget v4, v0, Lcom/mediatek/ngin3d/Geometry;->height:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 71
    :cond_4
    iget v3, p0, Lcom/mediatek/ngin3d/Geometry;->width:I

    iget v4, v0, Lcom/mediatek/ngin3d/Geometry;->width:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 72
    :cond_5
    iget v3, p0, Lcom/mediatek/ngin3d/Geometry;->x:I

    iget v4, v0, Lcom/mediatek/ngin3d/Geometry;->x:I

    if-eq v3, v4, :cond_6

    move v1, v2

    goto :goto_0

    .line 73
    :cond_6
    iget v3, p0, Lcom/mediatek/ngin3d/Geometry;->y:I

    iget v4, v0, Lcom/mediatek/ngin3d/Geometry;->y:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/ngin3d/Geometry;->x:I

    .line 81
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Geometry;->y:I

    add-int v0, v1, v2

    .line 82
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Geometry;->width:I

    add-int v0, v1, v2

    .line 83
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Geometry;->height:I

    add-int v0, v1, v2

    .line 84
    return v0
.end method
