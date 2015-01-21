.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;
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
.field mEnd:Lcom/mediatek/ngin3d/Point;

.field mStart:Lcom/mediatek/ngin3d/Point;

.field mValue:Lcom/mediatek/ngin3d/Point;

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 169
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    .line 170
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Point;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mEnd:Lcom/mediatek/ngin3d/Point;

    .line 171
    new-instance v0, Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mEnd:Lcom/mediatek/ngin3d/Point;

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/Point;-><init>(Lcom/mediatek/ngin3d/Point;)V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mValue:Lcom/mediatek/ngin3d/Point;

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 174
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mValue:Lcom/mediatek/ngin3d/Point;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v1, v1, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mEnd:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->x:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v2, v2, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mEnd:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->y:F

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v4, v4, Lcom/mediatek/ngin3d/Point;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v3, v3, Lcom/mediatek/ngin3d/Point;->z:F

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mEnd:Lcom/mediatek/ngin3d/Point;

    iget v4, v4, Lcom/mediatek/ngin3d/Point;->z:F

    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mStart:Lcom/mediatek/ngin3d/Point;

    iget v5, v5, Lcom/mediatek/ngin3d/Point;->z:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Point;->set(FFF)V

    .line 176
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$3;->mValue:Lcom/mediatek/ngin3d/Point;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 178
    :cond_0
    return-void
.end method
