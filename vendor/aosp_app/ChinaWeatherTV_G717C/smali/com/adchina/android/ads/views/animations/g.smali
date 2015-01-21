.class final Lcom/adchina/android/ads/views/animations/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/animations/c;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/animations/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/g;->a:Lcom/adchina/android/ads/views/animations/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/high16 v2, 0x3f80

    const v1, 0x3f4ccccd

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/g;->a:Lcom/adchina/android/ads/views/animations/c;

    invoke-static {v1}, Lcom/adchina/android/ads/views/animations/c;->c(Lcom/adchina/android/ads/views/animations/c;)Lcom/adchina/android/ads/views/ContentView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
