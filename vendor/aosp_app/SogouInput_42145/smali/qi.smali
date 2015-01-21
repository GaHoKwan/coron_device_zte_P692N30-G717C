.class public Lqi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

.field public a:Z

.field public b:Z


# direct methods
.method private constructor <init>(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 850
    iput-object p1, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lqh;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 850
    invoke-direct {p0, p1}, Lqi;-><init>(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xff

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 857
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 860
    iget-object v2, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 862
    iget-object v2, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 864
    iget-boolean v0, p0, Lqi;->a:Z

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)V

    .line 868
    :cond_0
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 869
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 870
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 871
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 872
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v8}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lcom/sohu/inputmethod/gesture/Gesture;)Lcom/sohu/inputmethod/gesture/Gesture;

    .line 873
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v7}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;I)V

    .line 895
    :goto_0
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->invalidate()V

    .line 896
    return-void

    .line 876
    :cond_1
    iget-object v2, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v2, v6}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 877
    const/4 v2, 0x0

    long-to-float v0, v0

    iget-object v1, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->b(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)J

    move-result-wide v3

    long-to-float v1, v3

    div-float/2addr v0, v1

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 879
    iget-object v1, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    iget-object v2, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Landroid/view/animation/AccelerateDecelerateInterpolator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v5, v0

    invoke-static {v1, v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;F)F

    .line 880
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    const/high16 v1, 0x437f

    iget-object v2, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;I)V

    .line 881
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    const-wide/16 v1, 0x10

    invoke-virtual {v0, p0, v1, v2}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 883
    :cond_2
    iget-boolean v0, p0, Lqi;->b:Z

    if-eqz v0, :cond_3

    .line 884
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v6}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->d(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    goto :goto_0

    .line 886
    :cond_3
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)V

    .line 888
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->c(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 889
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 890
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v8}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Lcom/sohu/inputmethod/gesture/Gesture;)Lcom/sohu/inputmethod/gesture/Gesture;

    .line 891
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v4}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;Z)Z

    .line 892
    iget-object v0, p0, Lqi;->a:Lcom/sohu/inputmethod/gesture/GestureOverlayView;

    invoke-static {v0, v7}, Lcom/sohu/inputmethod/gesture/GestureOverlayView;->a(Lcom/sohu/inputmethod/gesture/GestureOverlayView;I)V

    goto :goto_0
.end method
