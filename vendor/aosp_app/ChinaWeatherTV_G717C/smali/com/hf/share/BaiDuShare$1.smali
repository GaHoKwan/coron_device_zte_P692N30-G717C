.class Lcom/hf/share/BaiDuShare$1;
.super Ljava/lang/Object;
.source "BaiDuShare.java"

# interfaces
.implements Lcom/baidu/oauth/BaiduOAuth$OAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/share/BaiDuShare;->imageShare(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/share/BaiDuShare;


# direct methods
.method constructor <init>(Lcom/hf/share/BaiDuShare;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v0, v0, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08010d

    invoke-static {v0, v1}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method

.method public onComplete(Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    invoke-virtual {p1}, Lcom/baidu/oauth/BaiduOAuth$BaiduOAuthResponse;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/hf/share/BaiDuShare;->mToken:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/hf/share/BaiDuShare;->access$0(Lcom/hf/share/BaiDuShare;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    #calls: Lcom/hf/share/BaiDuShare;->uploadFile()V
    invoke-static {v0}, Lcom/hf/share/BaiDuShare;->access$1(Lcom/hf/share/BaiDuShare;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onException(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v2, v2, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    const v3, 0x7f08010e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, message:Ljava/lang/String;
    iget-object v1, p0, Lcom/hf/share/BaiDuShare$1;->this$0:Lcom/hf/share/BaiDuShare;

    iget-object v1, v1, Lcom/hf/share/BaiDuShare;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/hf/utils/ToastUtil;->getToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 59
    return-void
.end method
