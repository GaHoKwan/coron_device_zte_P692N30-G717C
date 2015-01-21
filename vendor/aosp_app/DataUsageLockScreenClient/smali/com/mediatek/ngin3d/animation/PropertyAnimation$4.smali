.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;
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
.field mEnd:Lcom/mediatek/ngin3d/Scale;

.field mStart:Lcom/mediatek/ngin3d/Scale;

.field mValue:Lcom/mediatek/ngin3d/Scale;

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 182
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Scale;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    .line 183
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Scale;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mEnd:Lcom/mediatek/ngin3d/Scale;

    .line 184
    new-instance v0, Lcom/mediatek/ngin3d/Scale;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Scale;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mValue:Lcom/mediatek/ngin3d/Scale;

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 6
    .parameter "progress"

    .prologue
    .line 187
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mValue:Lcom/mediatek/ngin3d/Scale;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v1, v1, Lcom/mediatek/ngin3d/Scale;->x:F

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mEnd:Lcom/mediatek/ngin3d/Scale;

    iget v2, v2, Lcom/mediatek/ngin3d/Scale;->x:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v3, v3, Lcom/mediatek/ngin3d/Scale;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v2, v2, Lcom/mediatek/ngin3d/Scale;->y:F

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mEnd:Lcom/mediatek/ngin3d/Scale;

    iget v3, v3, Lcom/mediatek/ngin3d/Scale;->y:F

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v4, v4, Lcom/mediatek/ngin3d/Scale;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v3, v3, Lcom/mediatek/ngin3d/Scale;->z:F

    iget-object v4, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mEnd:Lcom/mediatek/ngin3d/Scale;

    iget v4, v4, Lcom/mediatek/ngin3d/Scale;->z:F

    iget-object v5, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mStart:Lcom/mediatek/ngin3d/Scale;

    iget v5, v5, Lcom/mediatek/ngin3d/Scale;->z:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Scale;->set(FFF)V

    .line 189
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$4;->mValue:Lcom/mediatek/ngin3d/Scale;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method
