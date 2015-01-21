.class final Lcom/adchina/android/ads/views/animations/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/animations/j;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/animations/j;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/k;->a:Lcom/adchina/android/ads/views/animations/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/k;->a:Lcom/adchina/android/ads/views/animations/j;

    invoke-static {v0}, Lcom/adchina/android/ads/views/animations/j;->a(Lcom/adchina/android/ads/views/animations/j;)Lcom/adchina/android/ads/views/animations/h;

    move-result-object v0

    invoke-static {v0}, Lcom/adchina/android/ads/views/animations/h;->b(Lcom/adchina/android/ads/views/animations/h;)V

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
