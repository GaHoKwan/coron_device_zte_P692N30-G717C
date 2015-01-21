.class public final Lcom/adchina/android/ads/views/animations/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/adchina/android/ads/views/ContentView;


# direct methods
.method public constructor <init>(Lcom/adchina/android/ads/views/ContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/c;->a:Lcom/adchina/android/ads/views/ContentView;

    return-void
.end method

.method static synthetic a(Lcom/adchina/android/ads/views/animations/c;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/c;->a:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Lcom/adchina/android/ads/views/animations/e;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/e;-><init>(Lcom/adchina/android/ads/views/animations/c;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/ContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/adchina/android/ads/views/animations/c;)V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/c;->a:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Lcom/adchina/android/ads/views/animations/g;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/g;-><init>(Lcom/adchina/android/ads/views/animations/c;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/ContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/adchina/android/ads/views/animations/c;)Lcom/adchina/android/ads/views/ContentView;
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/c;->a:Lcom/adchina/android/ads/views/ContentView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    const v2, 0x3fb33333

    const/high16 v6, 0x3f00

    const/4 v1, 0x0

    const/4 v5, 0x1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/adchina/android/ads/views/animations/d;

    invoke-direct {v1, p0}, Lcom/adchina/android/ads/views/animations/d;-><init>(Lcom/adchina/android/ads/views/animations/c;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/c;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
