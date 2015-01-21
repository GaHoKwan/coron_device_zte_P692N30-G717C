.class final Lcom/adchina/android/ads/views/animations/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/animations/a;

.field private final synthetic b:F

.field private final synthetic c:F

.field private final synthetic d:Lcom/adchina/android/ads/views/ContentView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/animations/a;FFLcom/adchina/android/ads/views/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/animations/b;->a:Lcom/adchina/android/ads/views/animations/a;

    iput p2, p0, Lcom/adchina/android/ads/views/animations/b;->b:F

    iput p3, p0, Lcom/adchina/android/ads/views/animations/b;->c:F

    iput-object p4, p0, Lcom/adchina/android/ads/views/animations/b;->d:Lcom/adchina/android/ads/views/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/adchina/android/ads/views/animations/o;

    const/high16 v1, -0x3d4c

    const/4 v2, 0x0

    iget v3, p0, Lcom/adchina/android/ads/views/animations/b;->b:F

    iget v4, p0, Lcom/adchina/android/ads/views/animations/b;->c:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/adchina/android/ads/views/animations/o;-><init>(FFFFZ)V

    const-wide/16 v1, 0x2ee

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/views/animations/o;->setDuration(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/animations/o;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/animations/o;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/adchina/android/ads/views/animations/b;->d:Lcom/adchina/android/ads/views/ContentView;

    invoke-virtual {v1, v0}, Lcom/adchina/android/ads/views/ContentView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
