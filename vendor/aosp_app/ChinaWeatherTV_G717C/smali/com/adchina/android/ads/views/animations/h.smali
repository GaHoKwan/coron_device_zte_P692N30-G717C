.class public final Lcom/adchina/android/ads/views/animations/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adchina/android/ads/views/ContentView;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/views/ContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/h;->a:Lcom/adchina/android/ads/views/ContentView;

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/animations/h;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/h;->a:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Lcom/adchina/android/ads/views/animations/j;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/j;-><init>(Lcom/adchina/android/ads/views/animations/h;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/ContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/animations/h;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/h;->a:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Lcom/adchina/android/ads/views/animations/l;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/l;-><init>(Lcom/adchina/android/ads/views/animations/h;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/ContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/animations/h;)Lcom/adchina/android/ads/views/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/h;->a:Lcom/adchina/android/ads/views/ContentView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f4ccccd

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adchina/android/ads/views/animations/i;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/i;-><init>(Lcom/adchina/android/ads/views/animations/h;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/h;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
