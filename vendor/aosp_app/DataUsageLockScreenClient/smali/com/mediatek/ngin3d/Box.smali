.class public Lcom/mediatek/ngin3d/Box;
.super Ljava/lang/Object;
.source "Box.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# instance fields
.field public x1:F

.field public x2:F

.field public y1:F

.field public y2:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Box;->setBox(FFFF)V

    .line 86
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/ngin3d/Box;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iget v0, p1, Lcom/mediatek/ngin3d/Box;->x1:F

    iput v0, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    .line 71
    iget v0, p1, Lcom/mediatek/ngin3d/Box;->y1:F

    iput v0, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    .line 72
    iget v0, p1, Lcom/mediatek/ngin3d/Box;->x2:F

    iput v0, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    .line 73
    iget v0, p1, Lcom/mediatek/ngin3d/Box;->y2:F

    iput v0, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    .line 74
    return-void
.end method

.method private setBox(FFFF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 101
    cmpg-float v0, p3, p1

    if-ltz v0, :cond_0

    cmpg-float v0, p4, p2

    if-gez v0, :cond_1

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x1 should be less than x2; y1 should be less than y2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    iput p1, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    .line 105
    iput p2, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    .line 106
    iput p3, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    .line 107
    iput p4, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    .line 108
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    if-ne p0, p1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v1

    .line 164
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

    .line 166
    check-cast v0, Lcom/mediatek/ngin3d/Box;

    .line 168
    .local v0, box:Lcom/mediatek/ngin3d/Box;
    iget v3, v0, Lcom/mediatek/ngin3d/Box;->x1:F

    iget v4, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    .line 169
    :cond_4
    iget v3, v0, Lcom/mediatek/ngin3d/Box;->x2:F

    iget v4, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 170
    :cond_5
    iget v3, v0, Lcom/mediatek/ngin3d/Box;->y1:F

    iget v4, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 171
    :cond_6
    iget v3, v0, Lcom/mediatek/ngin3d/Box;->y2:F

    iget v4, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 133
    iget v0, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getSize()Lcom/mediatek/ngin3d/Dimension;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Lcom/mediatek/ngin3d/Dimension;

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    iget v2, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    iget v3, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    sub-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/mediatek/ngin3d/Dimension;-><init>(FF)V

    return-object v0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 184
    iget v2, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    move v0, v1

    .line 185
    .local v0, result:I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_1

    move v2, v1

    :goto_1
    add-int v0, v3, v2

    .line 186
    mul-int/lit8 v3, v0, 0x1f

    iget v2, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    cmpl-float v2, v2, v4

    if-nez v2, :cond_2

    move v2, v1

    :goto_2
    add-int v0, v3, v2

    .line 187
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v2, v1

    .line 188
    return v0

    .line 184
    .end local v0           #result:I
    :cond_0
    iget v2, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    .line 185
    .restart local v0       #result:I
    :cond_1
    iget v2, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_1

    .line 186
    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2

    .line 187
    :cond_3
    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_3
.end method

.method public set(FFFF)V
    .locals 0
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Box;->setBox(FFFF)V

    .line 98
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Box:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y2:F

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
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->x2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Box;->y2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
