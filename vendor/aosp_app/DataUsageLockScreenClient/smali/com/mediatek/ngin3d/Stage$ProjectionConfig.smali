.class public Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
.super Ljava/lang/Object;
.source "Stage.java"

# interfaces
.implements Lcom/mediatek/ngin3d/utils/JSON$ToJson;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProjectionConfig"
.end annotation


# instance fields
.field public mode:I

.field public zFar:F

.field public zNear:F

.field public zStage:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0
    .parameter "mode"
    .parameter "zNear"
    .parameter "zFar"
    .parameter "zStage"

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput p1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    .line 212
    iput p2, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    .line 213
    iput p3, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    .line 214
    iput p4, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    .line 215
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    if-ne p0, p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 220
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

    .line 222
    check-cast v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;

    .line 224
    .local v0, that:Lcom/mediatek/ngin3d/Stage$ProjectionConfig;
    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    iget v4, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 225
    :cond_4
    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    iget v4, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    .line 226
    :cond_5
    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    iget v4, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_0

    .line 227
    :cond_6
    iget v3, v0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    iget v4, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 234
    iget v0, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    .line 235
    .local v0, result:I
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 236
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 237
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 238
    return v0

    .line 235
    :cond_0
    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_0

    .line 236
    :cond_1
    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    goto :goto_1

    .line 237
    :cond_2
    iget v2, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_2
.end method

.method public toJson()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Proj mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zNear : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zFar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zStage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Proj mode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zNear : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zNear:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zFar : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zFar:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", zStage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/ngin3d/Stage$ProjectionConfig;->zStage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
