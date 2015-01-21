.class Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;
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
.field mEnd:I

.field mStart:I

.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;)V
    .locals 2
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/animation/PropertyAnimation$Interpolator;-><init>(Lcom/mediatek/ngin3d/animation/PropertyAnimation;Lcom/mediatek/ngin3d/animation/PropertyAnimation$1;)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->mStart:I

    .line 154
    iget-object v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v0, v0, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mValues:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->mEnd:I

    return-void
.end method


# virtual methods
.method public onAlphaUpdate(F)V
    .locals 4
    .parameter "progress"

    .prologue
    .line 157
    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 158
    iget v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->mStart:I

    iget v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->mEnd:I

    iget v3, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->mStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 159
    .local v0, value:I
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v1, v1, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mTarget:Lcom/mediatek/ngin3d/Actor;

    iget-object v2, p0, Lcom/mediatek/ngin3d/animation/PropertyAnimation$2;->this$0:Lcom/mediatek/ngin3d/animation/PropertyAnimation;

    iget-object v2, v2, Lcom/mediatek/ngin3d/animation/PropertyAnimation;->mProperty:Lcom/mediatek/ngin3d/Property;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 161
    .end local v0           #value:I
    :cond_0
    return-void
.end method
