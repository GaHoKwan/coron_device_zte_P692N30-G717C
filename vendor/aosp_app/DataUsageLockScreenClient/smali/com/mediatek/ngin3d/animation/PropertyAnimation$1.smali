.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;
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
.field mEnd:F

.field mStart:F

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->mStart:F

    .line 142
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->mEnd:F

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 145
    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 146
    iget v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->mStart:F

    iget v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->mEnd:F

    iget v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->mStart:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float v0, v1, v2

    .line 147
    .local v0, value:F
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 149
    .end local v0           #value:F
    :cond_0
    return-void
.end method
