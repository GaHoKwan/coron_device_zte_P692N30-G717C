.class final Lcom/adchina/android/ads/views/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/ContentView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/ContentView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/z;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/adchina/android/ads/views/z;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/z;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/ContentView;->b(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/controllers/AdViewController;

    move-result-object v0

    iget-object v1, p0, Lcom/adchina/android/ads/views/z;->a:Lcom/adchina/android/ads/views/ContentView;

    invoke-static {v1}, Lcom/adchina/android/ads/views/ContentView;->c(Lcom/adchina/android/ads/views/ContentView;)Lcom/adchina/android/ads/views/AdView;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/adchina/android/ads/controllers/AdViewController;->a(Lcom/adchina/android/ads/views/AdView;Landroid/view/MotionEvent;)V

    :cond_0
    return v2
.end method
