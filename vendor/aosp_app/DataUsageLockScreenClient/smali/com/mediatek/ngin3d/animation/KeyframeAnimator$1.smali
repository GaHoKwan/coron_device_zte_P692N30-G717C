.class Lcom/mediatek/ngin3d/animation/KeyframeAnimator$1;
.super Ljava/lang/Object;
.source "KeyframeAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/animation/KeyframeAnimator;-><init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeDataSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimator;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/animation/KeyframeAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 71
    iget-object v1, p0, Lcom/mediatek/ngin3d/animation/KeyframeAnimator$1;->this$0:Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #calls: Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->onAnimate(F)V
    invoke-static {v1, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;->access$000(Lcom/mediatek/ngin3d/animation/KeyframeAnimator;F)V

    .line 72
    return-void
.end method
