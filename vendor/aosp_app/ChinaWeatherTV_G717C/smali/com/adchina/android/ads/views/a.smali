.class final Lcom/adchina/android/ads/views/a;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/adchina/android/ads/views/AdBrowserView;


# direct methods
.method constructor <init>(Lcom/adchina/android/ads/views/AdBrowserView;)V
    .locals 0

    iput-object p1, p0, Lcom/adchina/android/ads/views/a;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adchina/android/ads/views/a;->a:Lcom/adchina/android/ads/views/AdBrowserView;

    invoke-static {v0}, Lcom/adchina/android/ads/views/AdBrowserView;->h(Lcom/adchina/android/ads/views/AdBrowserView;)V

    :cond_0
    return-void
.end method
