.class final Lcom/adchina/android/ads/views/animations/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/animations/c;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/animations/c;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/d;->a:Lcom/adchina/android/ads/views/animations/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/animations/d;->a:Lcom/adchina/android/ads/views/animations/c;

    invoke-static {v0}, Lcom/adchina/android/ads/views/animations/c;->a(Lcom/adchina/android/ads/views/animations/c;)V

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
