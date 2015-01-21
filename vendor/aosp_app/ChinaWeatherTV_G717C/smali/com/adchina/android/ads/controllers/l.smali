.class final Lcom/adchina/android/ads/controllers/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adchina/android/ads/f;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/controllers/h;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Lcom/adchina/android/ads/views/ak;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/controllers/h;Landroid/view/View;Lcom/adchina/android/ads/views/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/controllers/l;->a:Lcom/adchina/android/ads/controllers/h;

    iput-object p2, p0, Lcom/adchina/android/ads/controllers/l;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/adchina/android/ads/controllers/l;->c:Lcom/adchina/android/ads/views/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/l;->b:Landroid/view/View;

    check-cast v0, Lcom/adchina/android/ads/views/GifImageView;

    invoke-virtual {v0}, Lcom/adchina/android/ads/views/GifImageView;->a()V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/adchina/android/ads/views/GifImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/adchina/android/ads/views/GifImageView;->a(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/l;->c:Lcom/adchina/android/ads/views/ak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/controllers/l;->c:Lcom/adchina/android/ads/views/ak;

    invoke-interface {v0}, Lcom/adchina/android/ads/views/ak;->a()V

    :cond_0
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/l;->a:Lcom/adchina/android/ads/controllers/h;

    const/16 v1, 0x11

    const-string v2, "Displayd FullScreen Ad"

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/adchina/android/ads/controllers/l;->a:Lcom/adchina/android/ads/controllers/h;

    const/16 v1, 0x12

    const-string v2, "PNG AdMaterial is null"

    invoke-virtual {v0, v1, v2}, Lcom/adchina/android/ads/controllers/h;->a(ILjava/lang/Object;)V

    goto :goto_0
.end method
