.class final Lcom/adchina/android/ads/views/i;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_bg.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "bg"

    invoke-static {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->j:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_handleclose.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->n:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_handleopen.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->o:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_back.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->k:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_finish.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->l:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_go.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->m:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_refresh.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->p:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    iget-object v1, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    const-string v2, "adchina_stop.png"

    invoke-static {v1, v2}, Lcom/adchina/android/ads/Utils;->loadAssetsBitmap(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/adchina/android/ads/views/AdBrowserView;->q:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->a(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/i;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->a(Lcom/adchina/android/ads/views/AdBrowserView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
