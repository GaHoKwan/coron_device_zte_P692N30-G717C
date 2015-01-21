.class public Lcom/hf/ad/AdChina;
.super Ljava/lang/Object;
.source "AdChina.java"


# static fields
.field private static final BANNER_ID:Ljava/lang/String; = "2050306"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showBanner(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/adchina/android/ads/AdBannerListener;)V
    .locals 5
    .parameter "context"
    .parameter "parent"
    .parameter "listener"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 15
    new-instance v0, Lcom/adchina/android/ads/views/AdView;

    const-string v1, "2050306"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v3, v2}, Lcom/adchina/android/ads/views/AdView;-><init>(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 16
    .local v0, adView:Lcom/adchina/android/ads/views/AdView;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 17
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v0, p3}, Lcom/adchina/android/ads/views/AdView;->setAdBannerListener(Lcom/adchina/android/ads/AdBannerListener;)V

    .line 19
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/adchina/android/ads/AdManager;->setRefershinterval(I)V

    .line 20
    invoke-static {v3}, Lcom/adchina/android/ads/AdManager;->setmVideoPlayer(Z)V

    .line 21
    invoke-static {p1, v3}, Lcom/adchina/android/ads/AdManager;->setRelateScreenRotate(Landroid/content/Context;Z)V

    .line 22
    return-void
.end method
