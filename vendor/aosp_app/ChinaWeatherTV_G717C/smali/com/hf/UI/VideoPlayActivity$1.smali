.class Lcom/hf/UI/VideoPlayActivity$1;
.super Ljava/lang/Object;
.source "VideoPlayActivity.java"

# interfaces
.implements Lcom/baidu/mobads/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/VideoPlayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/VideoPlayActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/VideoPlayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/VideoPlayActivity$1;->this$0:Lcom/hf/UI/VideoPlayActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClick(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 240
    return-void
.end method

.method public onAdFailed(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 234
    return-void
.end method

.method public onAdReady(Lcom/baidu/mobads/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 228
    return-void
.end method

.method public onAdShow(Lorg/json/JSONObject;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 222
    return-void
.end method

.method public onAdSwitch()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onVideoClickAd()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public onVideoClickClose()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity$1;->this$0:Lcom/hf/UI/VideoPlayActivity;

    #calls: Lcom/hf/UI/VideoPlayActivity;->adFinished()V
    invoke-static {v0}, Lcom/hf/UI/VideoPlayActivity;->access$1(Lcom/hf/UI/VideoPlayActivity;)V

    .line 204
    return-void
.end method

.method public onVideoClickReplay()V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onVideoError()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity$1;->this$0:Lcom/hf/UI/VideoPlayActivity;

    #calls: Lcom/hf/UI/VideoPlayActivity;->adFinished()V
    invoke-static {v0}, Lcom/hf/UI/VideoPlayActivity;->access$1(Lcom/hf/UI/VideoPlayActivity;)V

    .line 192
    return-void
.end method

.method public onVideoFinish()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity$1;->this$0:Lcom/hf/UI/VideoPlayActivity;

    #calls: Lcom/hf/UI/VideoPlayActivity;->adFinished()V
    invoke-static {v0}, Lcom/hf/UI/VideoPlayActivity;->access$1(Lcom/hf/UI/VideoPlayActivity;)V

    .line 186
    return-void
.end method

.method public onVideoStart()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/hf/UI/VideoPlayActivity$1;->this$0:Lcom/hf/UI/VideoPlayActivity;

    const/4 v1, 0x0

    #setter for: Lcom/hf/UI/VideoPlayActivity;->adFinished:Z
    invoke-static {v0, v1}, Lcom/hf/UI/VideoPlayActivity;->access$0(Lcom/hf/UI/VideoPlayActivity;Z)V

    .line 178
    return-void
.end method
