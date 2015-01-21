.class public Lcom/hf/ad/AdBaiDu;
.super Ljava/lang/Object;
.source "AdBaiDu.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showBanner(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)V
    .locals 1
    .parameter "context"
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 22
    new-instance v0, Lcom/baidu/mobads/AdView;

    invoke-direct {v0, p1}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, adView:Lcom/baidu/mobads/AdView;
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/AdView;->setListener(Lcom/baidu/mobads/AdViewListener;)V

    .line 24
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method public showVideo(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)V
    .locals 4
    .parameter "context"
    .parameter "parent"
    .parameter "listener"

    .prologue
    const/4 v3, -0x1

    .line 16
    new-instance v0, Lcom/baidu/mobads/AdView;

    sget-object v1, Lcom/baidu/mobads/AdSize;->VideoInterstitial:Lcom/baidu/mobads/AdSize;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/baidu/mobads/AdView;-><init>(Landroid/content/Context;Lcom/baidu/mobads/AdSize;Ljava/lang/String;)V

    .line 17
    .local v0, adView:Lcom/baidu/mobads/AdView;
    invoke-virtual {v0, p3}, Lcom/baidu/mobads/AdView;->setListener(Lcom/baidu/mobads/AdViewListener;)V

    .line 18
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    return-void
.end method

.method public showWall(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-static {p1}, Lcom/baidu/mobads/appoffers/OffersManager;->showOffers(Landroid/content/Context;)V

    .line 29
    return-void
.end method
