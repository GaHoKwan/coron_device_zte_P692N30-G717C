.class Lcom/android/launcher2/DragView$1;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/DragView;-><init>(Lcom/android/launcher2/Launcher;Landroid/graphics/Bitmap;IIIIIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/DragView;

.field final synthetic val$initialScale:F

.field final synthetic val$offsetX:F

.field final synthetic val$offsetY:F

.field final synthetic val$scale:F


# direct methods
.method constructor <init>(Lcom/android/launcher2/DragView;FFFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iput p2, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:F

    iput p3, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:F

    iput p4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iput p5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8
    .parameter "animation"

    .prologue
    const/high16 v7, 0x3f80

    .line 92
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 94
    .local v2, value:F
    iget v3, p0, Lcom/android/launcher2/DragView$1;->val$offsetX:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mOffsetX:F
    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$000(Lcom/android/launcher2/DragView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 95
    .local v0, deltaX:I
    iget v3, p0, Lcom/android/launcher2/DragView$1;->val$offsetY:F

    mul-float/2addr v3, v2

    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    #getter for: Lcom/android/launcher2/DragView;->mOffsetY:F
    invoke-static {v4}, Lcom/android/launcher2/DragView;->access$100(Lcom/android/launcher2/DragView;)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v1, v3

    .line 97
    .local v1, deltaY:I
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v4, v0

    invoke-static {v3, v4}, Lcom/android/launcher2/DragView;->access$016(Lcom/android/launcher2/DragView;F)F

    .line 98
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/android/launcher2/DragView;->access$116(Lcom/android/launcher2/DragView;F)F

    .line 99
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    iget v6, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleX(F)V

    .line 100
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget v4, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    iget v5, p0, Lcom/android/launcher2/DragView$1;->val$scale:F

    iget v6, p0, Lcom/android/launcher2/DragView$1;->val$initialScale:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setScaleY(F)V

    .line 101
    invoke-static {}, Lcom/android/launcher2/DragView;->access$200()F

    move-result v3

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-static {}, Lcom/android/launcher2/DragView;->access$200()F

    move-result v4

    mul-float/2addr v4, v2

    sub-float v5, v7, v2

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DragView;->setAlpha(F)V

    .line 105
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationX()F

    move-result v4

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v3, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    iget-object v4, p0, Lcom/android/launcher2/DragView$1;->this$0:Lcom/android/launcher2/DragView;

    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v4

    int-to-float v5, v1

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method