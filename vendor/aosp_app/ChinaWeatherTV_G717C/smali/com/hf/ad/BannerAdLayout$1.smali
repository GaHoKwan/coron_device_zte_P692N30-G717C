.class Lcom/hf/ad/BannerAdLayout$1;
.super Ljava/lang/Object;
.source "BannerAdLayout.java"

# interfaces
.implements Lcom/adchina/android/ads/AdBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/ad/BannerAdLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/ad/BannerAdLayout;


# direct methods
.method constructor <init>(Lcom/hf/ad/BannerAdLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnRecvSms(Lcom/adchina/android/ads/views/AdView;Ljava/lang/String;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 143
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$0(Lcom/hf/ad/BannerAdLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 144
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$2(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    :cond_0
    return v1
.end method

.method public onClickBanner(Lcom/adchina/android/ads/views/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 137
    return-void
.end method

.method public onFailedToReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$3(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 130
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hf/ad/BannerAdLayout;->setVisibility(I)V

    .line 131
    return-void
.end method

.method public onFailedToRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mAdParent:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$3(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/hf/ad/BannerAdLayout;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onReceiveAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v2, 0x8

    .line 112
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$0(Lcom/hf/ad/BannerAdLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$1;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$2(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public onRefreshAd(Lcom/adchina/android/ads/views/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 107
    return-void
.end method
