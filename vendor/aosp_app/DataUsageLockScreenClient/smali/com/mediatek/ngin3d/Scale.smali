.class public Lcom/mediatek/ngin3d/Scale;
.super Ljava/lang/Object;
.source "Scale.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# instance fields
.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "xyz"

    .prologue
    .line 89
    invoke-direct {p0, p1, p1, p1}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    .line 90
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 67
    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    .line 68
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    .line 79
    iput p2, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    .line 80
    iput p3, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    .line 81
    return-void
.end method

.method public static newFromString(Ljava/lang/String;)Lcom/mediatek/ngin3d/Scale;
    .locals 5
    .parameter "positionString"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/mediatek/ngin3d/Utils;->parseStringToFloat(Ljava/lang/String;)[F

    move-result-object v0

    .line 162
    .local v0, xyz:[F
    new-instance v1, Lcom/mediatek/ngin3d/Scale;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mediatek/ngin3d/Scale;-><init>(FFF)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    if-ne p0, p1, :cond_1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 117
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

    .line 119
    check-cast v0, Lcom/mediatek/ngin3d/Scale;

    .line 121
    .local v0, scale:Lcom/mediatek/ngin3d/Scale;
    iget v3, v0, Lcom/mediatek/ngin3d/Scale;->x:F

    iget v4, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 122
    :cond_4
    iget v3, v0, Lcom/mediatek/ngin3d/Scale;->y:F

    iget v4, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 123
    :cond_5
    iget v3, v0, Lcom/mediatek/ngin3d/Scale;->z:F

    iget v4, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 135
    iget v2, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 136
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 137
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v2, v1

    .line 138
    return v0

    .line 135
    .end local v0           #result:I
    :cond_0
    iget v2, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    .line 136
    .restart local v0       #result:I
    :cond_1
    iget v2, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    .line 137
    :cond_2
    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_2
.end method

.method public set(FFF)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 100
    iput p1, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    .line 101
    iput p2, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    .line 102
    iput p3, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    .line 103
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Point:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Point:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Scale;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
