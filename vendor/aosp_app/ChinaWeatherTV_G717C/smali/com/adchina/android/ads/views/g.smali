.class final Lcom/adchina/android/ads/views/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/views/o;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;

.field private final synthetic b:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/g;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iput-object p2, p0, Lcom/adchina/android/ads/views/g;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/adchina/android/ads/views/g;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->e:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/adchina/android/ads/views/g;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, v1, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/views/g;->b:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/adchina/android/ads/views/g;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v0, v0, Lcom/adchina/android/ads/views/AdBrowserView;->d:Lcom/adchina/android/ads/views/AdSlidingDrawer;

    iget-object v1, p0, Lcom/adchina/android/ads/views/g;->b:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/AdSlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
