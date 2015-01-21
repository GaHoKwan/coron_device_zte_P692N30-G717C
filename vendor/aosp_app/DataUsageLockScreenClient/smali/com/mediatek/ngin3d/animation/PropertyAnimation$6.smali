.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;
.super Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;
.source "PropertyAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/PropertyAnimation;->initialize(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/Property;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mEnd:Lcom/mediatek/ngin3d/Rotation;

.field mStart:Lcom/mediatek/ngin3d/Rotation;

.field mValue:Lcom/mediatek/ngin3d/Rotation;

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Rotation;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mStart:Lcom/mediatek/ngin3d/Rotation;

    .line 212
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Rotation;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    .line 213
    new-instance v0, Lcom/mediatek/ngin3d/Rotation;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Rotation;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mValue:Lcom/mediatek/ngin3d/Rotation;

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 15
    .parameter "progress"

    .prologue
    .line 216
    const/high16 v9, 0x3f80

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_1

    .line 217
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 218
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mStart:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles()[F

    move-result-object v2

    .line 219
    .local v2, euler1:[F
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getEulerAngles()[F

    move-result-object v3

    .line 220
    .local v3, euler2:[F
    const/4 v9, 0x0

    aget v9, v2, v9

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v2, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p1

    add-float v6, v9, v10

    .line 221
    .local v6, x:F
    const/4 v9, 0x1

    aget v9, v2, v9

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p1

    add-float v7, v9, v10

    .line 222
    .local v7, y:F
    const/4 v9, 0x2

    aget v9, v2, v9

    const/4 v10, 0x2

    aget v10, v3, v10

    const/4 v11, 0x2

    aget v11, v2, v11

    sub-float/2addr v10, v11

    mul-float v10, v10, p1

    add-float v8, v9, v10

    .line 223
    .local v8, z:F
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mValue:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9, v6, v7, v8}, Lcom/mediatek/ngin3d/Rotation;->set(FFF)V

    .line 237
    .end local v2           #euler1:[F
    .end local v3           #euler2:[F
    .end local v6           #x:F
    .end local v7           #y:F
    .end local v8           #z:F
    :cond_0
    :goto_0
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v9, v9, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v10, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v10, v10, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v11, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mValue:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9, v10, v11}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 238
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mStart:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v9

    iget-object v10, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v10}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v10

    if-eq v9, v10, :cond_1

    .line 239
    const-string v9, "PropertyAnimation"

    const-string v10, "Warning: mixed angle interpolation"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_1
    return-void

    .line 225
    :cond_2
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getMode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 226
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mStart:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxisAngle()F

    move-result v0

    .line 227
    .local v0, angle1:F
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mStart:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v4

    .line 228
    .local v4, v1:Lcom/mediatek/ngin3d/Point;
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxisAngle()F

    move-result v1

    .line 229
    .local v1, angle2:F
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mEnd:Lcom/mediatek/ngin3d/Rotation;

    invoke-virtual {v9}, Lcom/mediatek/ngin3d/Rotation;->getAxis()Lcom/mediatek/ngin3d/Vec3;

    move-result-object v5

    .line 231
    .local v5, v2:Lcom/mediatek/ngin3d/Point;
    iget-object v9, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$6;->mValue:Lcom/mediatek/ngin3d/Rotation;

    iget v10, v4, Lcom/mediatek/ngin3d/Point;->x:F

    iget v11, v5, Lcom/mediatek/ngin3d/Point;->x:F

    iget v12, v4, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v11, v12

    mul-float v11, v11, p1

    add-float/2addr v10, v11

    iget v11, v4, Lcom/mediatek/ngin3d/Point;->y:F

    iget v12, v5, Lcom/mediatek/ngin3d/Point;->y:F

    iget v13, v4, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v12, v13

    mul-float v12, v12, p1

    add-float/2addr v11, v12

    iget v12, v4, Lcom/mediatek/ngin3d/Point;->z:F

    iget v13, v5, Lcom/mediatek/ngin3d/Point;->z:F

    iget v14, v4, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float/2addr v13, v14

    mul-float v13, v13, p1

    add-float/2addr v12, v13

    sub-float v13, v1, v0

    mul-float v13, v13, p1

    add-float/2addr v13, v0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/mediatek/ngin3d/Rotation;->set(FFFF)V

    goto :goto_0
.end method
