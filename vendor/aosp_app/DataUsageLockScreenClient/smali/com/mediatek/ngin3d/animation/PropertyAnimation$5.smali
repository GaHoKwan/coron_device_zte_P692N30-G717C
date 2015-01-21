.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;
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
.field mEnd:Lcom/mediatek/ngin3d/Color;

.field mStart:Lcom/mediatek/ngin3d/Color;

.field mValue:Lcom/mediatek/ngin3d/Color;

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 195
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    .line 196
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mEnd:Lcom/mediatek/ngin3d/Color;

    .line 197
    new-instance v0, Lcom/mediatek/ngin3d/Color;

    invoke-direct {v0}, Lcom/mediatek/ngin3d/Color;-><init>()V

    iput-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 200
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v1, v1, Lcom/mediatek/ngin3d/Color;->red:I

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mEnd:Lcom/mediatek/ngin3d/Color;

    iget v2, v2, Lcom/mediatek/ngin3d/Color;->red:I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v3, v3, Lcom/mediatek/ngin3d/Color;->red:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Color;->red:I

    .line 202
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v1, v1, Lcom/mediatek/ngin3d/Color;->green:I

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mEnd:Lcom/mediatek/ngin3d/Color;

    iget v2, v2, Lcom/mediatek/ngin3d/Color;->green:I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v3, v3, Lcom/mediatek/ngin3d/Color;->green:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Color;->green:I

    .line 203
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v1, v1, Lcom/mediatek/ngin3d/Color;->blue:I

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mEnd:Lcom/mediatek/ngin3d/Color;

    iget v2, v2, Lcom/mediatek/ngin3d/Color;->blue:I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v3, v3, Lcom/mediatek/ngin3d/Color;->blue:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Color;->blue:I

    .line 204
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v1, v1, Lcom/mediatek/ngin3d/Color;->alpha:I

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mEnd:Lcom/mediatek/ngin3d/Color;

    iget v2, v2, Lcom/mediatek/ngin3d/Color;->alpha:I

    iget-object v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mStart:Lcom/mediatek/ngin3d/Color;

    iget v3, v3, Lcom/mediatek/ngin3d/Color;->alpha:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Lcom/mediatek/ngin3d/Color;->alpha:I

    .line 205
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$5;->mValue:Lcom/mediatek/ngin3d/Color;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 207
    :cond_0
    return-void
.end method
