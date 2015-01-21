.class final Lcom/adchina/android/ads/views/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/m;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/adchina/android/ads/views/m;-><init>(Lcom/adchina/android/ads/views/AdSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/adchina/android/ads/views/m;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a(Lcom/adchina/android/ads/views/AdSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/views/m;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b(Lcom/adchina/android/ads/views/AdSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/views/m;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/views/m;->a:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->a()V

    goto :goto_0
.end method
