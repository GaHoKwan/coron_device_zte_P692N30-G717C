.class public Lcom/mediatek/ngin3d/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# static fields
.field public static final NATURAL_SIZE:F = -1.0f


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x4080

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput v0, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 67
    iput v0, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 68
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 77
    iput p2, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 78
    return-void
.end method

.method public static isValidSize(F)Z
    .locals 1
    .parameter "size"

    .prologue
    .line 98
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x4080

    cmpl-float v0, p0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(FF)Z
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 108
    iget v0, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    if-ne p1, p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    instance-of v3, p1, Lcom/mediatek/ngin3d/Dimension;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 123
    check-cast v0, Lcom/mediatek/ngin3d/Dimension;

    .line 124
    .local v0, d:Lcom/mediatek/ngin3d/Dimension;
    iget v3, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    iget v4, v0, Lcom/mediatek/ngin3d/Dimension;->width:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    iget v4, v0, Lcom/mediatek/ngin3d/Dimension;->height:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #d:Lcom/mediatek/ngin3d/Dimension;
    :cond_3
    move v1, v2

    .line 126
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, result:I
    iget v1, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x275

    .line 138
    mul-int/lit8 v1, v0, 0x25

    iget v2, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 139
    return v0
.end method

.method public set(FF)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 86
    iput p1, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    .line 87
    iput p2, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    .line 88
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Dimension: {width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

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

    const-string v1, "Dimension: {width : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Dimension;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Dimension;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
