.class Lcom/hf/ad/BannerAdLayout$2;
.super Ljava/lang/Object;
.source "BannerAdLayout.java"

# interfaces
.implements Lcom/baidu/mobads/AdViewListener;


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
    iput-object p1, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 196
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onAdClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 189
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onAdFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    #calls: Lcom/hf/ad/BannerAdLayout;->addAdChinaBanner()V
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$4(Lcom/hf/ad/BannerAdLayout;)V

    .line 191
    return-void
.end method

.method public onAdReady(Lcom/baidu/mobads/AdView;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/16 v2, 0x8

    .line 179
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onAdReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->isHideCloseButton:Z
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$0(Lcom/hf/ad/BannerAdLayout;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mCloseButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$1(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/ImageButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/hf/ad/BannerAdLayout$2;->this$0:Lcom/hf/ad/BannerAdLayout;

    #getter for: Lcom/hf/ad/BannerAdLayout;->mUrlTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/hf/ad/BannerAdLayout;->access$2(Lcom/hf/ad/BannerAdLayout;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public onAdShow(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 173
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onAdShow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void
.end method

.method public onAdSwitch()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onAdSwitch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public onVideoClickAd()V
    .locals 2

    .prologue
    .line 202
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoClickAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method public onVideoClickClose()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoClickClose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method

.method public onVideoClickReplay()V
    .locals 2

    .prologue
    .line 214
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoClickReplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method

.method public onVideoError()V
    .locals 2

    .prologue
    .line 220
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoError"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public onVideoFinish()V
    .locals 2

    .prologue
    .line 161
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "BannerAdLayout"

    const-string v1, "baidu onVideoStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
