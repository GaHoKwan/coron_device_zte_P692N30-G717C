.class public Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "BaiduOAuthViaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OAuthWebViewClient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;


# direct methods
.method public constructor <init>(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 290
    :cond_0
    const-string v1, "/login_success"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$2(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog;

    move-result-object v1

    #calls: Lcom/baidu/oauth/BaiduOAuthViaDialog;->parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    invoke-static {v1, p2}, Lcom/baidu/oauth/BaiduOAuthViaDialog;->access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 297
    .local v0, values:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onComplete(Landroid/os/Bundle;)V

    .line 298
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-virtual {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->dismiss()V

    .line 301
    .end local v0           #values:Landroid/os/Bundle;
    :cond_1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 276
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 278
    const-string v0, "authorize?response_type=token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-virtual {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 281
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    invoke-static {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onException(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 270
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-virtual {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->dismiss()V

    .line 271
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 305
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 306
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v0, 0x1

    .line 255
    const-string v1, "error"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onException(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    #getter for: Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 258
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;->this$1:Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;

    invoke-virtual {v1}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->dismiss()V

    .line 262
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
