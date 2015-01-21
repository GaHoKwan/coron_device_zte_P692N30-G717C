.class public Lcom/hf/ad/BannerAdLayout;
.super Landroid/widget/RelativeLayout;
.source "BannerAdLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BannerAdLayout"


# instance fields
.field private isHideCloseButton:Z

.field private mAdChinaBannerListener:Lcom/adchina/android/ads/AdBannerListener;

.field private mAdParent:Landroid/widget/RelativeLayout;

.field private mBaiDuAdListener:Lcom/baidu/mobads/AdViewListener;

.field private mCloseButton:Landroid/widget/ImageButton;

.field private mIndex:I

.field private mUrlTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hf/ad/BannerAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hf/ad/BannerAdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    new-instance v0, Lcom/hf/ad/BannerAdLayout$1;

    invoke-direct {v0, p0}, Lcom/hf/ad/BannerAdLayout$1;-><init>(Lcom/hf/ad/BannerAdLayout;)V

    iput-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mAdChinaBannerListener:Lcom/adchina/android/ads/AdBannerListener;

    .line 151
    new-instance v0, Lcom/hf/ad/BannerAdLayout$2;

    invoke-direct {v0, p0}, Lcom/hf/ad/BannerAdLayout$2;-><init>(Lcom/hf/ad/BannerAdLayout;)V

    iput-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mBaiDuAdListener:Lcom/baidu/mobads/AdViewListener;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/hf/ad/BannerAdLayout;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z

    return v0
.end method

.method static synthetic access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/hf/ad/BannerAdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/hf/ad/BannerAdLayout;->addAdChinaBanner()V

    return-void
.end method

.method private addAdChinaBanner()V
    .locals 4

    .prologue
    .line 66
    iget-object v1, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 67
    new-instance v0, Lcom/hf/ad/AdChina;

    invoke-direct {v0}, Lcom/hf/ad/AdChina;-><init>()V

    .line 68
    .local v0, adChina:Lcom/hf/ad/AdChina;
    invoke-virtual {p0}, Lcom/hf/ad/BannerAdLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/hf/ad/BannerAdLayout;->mAdChinaBannerListener:Lcom/adchina/android/ads/AdBannerListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/ad/AdChina;->showBanner(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/adchina/android/ads/AdBannerListener;)V

    .line 69
    return-void
.end method

.method private addBaiDuBanner()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 61
    new-instance v0, Lcom/hf/ad/AdBaiDu;

    invoke-direct {v0}, Lcom/hf/ad/AdBaiDu;-><init>()V

    .line 62
    .local v0, adBaiDu:Lcom/hf/ad/AdBaiDu;
    invoke-virtual {p0}, Lcom/hf/ad/BannerAdLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/hf/ad/BannerAdLayout;->mBaiDuAdListener:Lcom/baidu/mobads/AdViewListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hf/ad/AdBaiDu;->showBanner(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/baidu/mobads/AdViewListener;)V

    .line 63
    return-void
.end method


# virtual methods
.method public loadAd()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/hf/ad/BannerAdLayout;->addBaiDuBanner()V

    .line 57
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 96
    .local v0, id:I
    const v1, 0x7f0b0012

    if-ne v0, v1, :cond_0

    .line 97
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/hf/ad/BannerAdLayout;->setVisibility(I)V

    .line 99
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 46
    const-string v0, "BannerAdLayout"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/hf/ad/BannerAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;

    .line 48
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 49
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/hf/ad/BannerAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/hf/ad/BannerAdLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    .line 52
    return-void
.end method

.method public setBannerStyle(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 76
    iput p1, p0, Lcom/hf/ad/BannerAdLayout;->mIndex:I

    .line 77
    packed-switch p1, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 80
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 84
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setHidenCloseButton(Z)V
    .locals 0
    .parameter "isHide"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z

    .line 73
    return-void
.end method
