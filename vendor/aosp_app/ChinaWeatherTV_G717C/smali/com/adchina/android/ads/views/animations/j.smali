.class final Lcom/adchina/android/ads/views/animations/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/animations/h;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/animations/h;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/j;->a:Lcom/adchina/android/ads/views/animations/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/animations/j;)Lcom/adchina/android/ads/views/animations/h;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/j;->a:Lcom/adchina/android/ads/views/animations/h;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f4ccccd

    const v2, 0x3e4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adchina/android/ads/views/animations/k;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/k;-><init>(Lcom/adchina/android/ads/views/animations/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/j;->a:Lcom/adchina/android/ads/views/animations/h;

    invoke-static {v1}, Lcom/adchina/android/ads/views/animations/h;->c(Lcom/adchina/android/ads/views/animations/h;)Lcom/adchina/android/ads/views/ContentView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
