.class final Lcom/adchina/android/ads/views/animations/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final synthetic a:Lcom/adchina/android/ads/views/ContentView;

.field private final synthetic b:F

.field private final synthetic c:F


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/ContentView;FF)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/a;->a:Lcom/adchina/android/ads/views/ContentView;

    iput p2, p0, Lcom/adchina/android/ads/views/animations/a;->b:F

    iput p3, p0, Lcom/adchina/android/ads/views/animations/a;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/a;->a:Lcom/adchina/android/ads/views/ContentView;

    new-instance v1, Lcom/adchina/android/ads/views/animations/b;

    iget v2, p0, Lcom/adchina/android/ads/views/animations/a;->b:F

    iget v3, p0, Lcom/adchina/android/ads/views/animations/a;->c:F

    iget-object v4, p0, Lcom/adchina/android/ads/views/animations/a;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/adchina/android/ads/views/animations/b;-><init>(Lcom/adchina/android/ads/views/animations/a;FFLcom/adchina/android/ads/views/ContentView;)V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/ContentView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
