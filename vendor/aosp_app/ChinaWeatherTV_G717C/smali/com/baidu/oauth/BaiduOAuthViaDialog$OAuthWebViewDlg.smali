.class public Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;
.super Landroid/app/Dialog;
.source "BaiduOAuthViaDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/oauth/BaiduOAuthViaDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OAuthWebViewDlg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;
    }
.end annotation


# instance fields
.field private mContent:Landroid/widget/FrameLayout;

.field private mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field final synthetic this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;


# direct methods
.method protected constructor <init>(Lcom/baidu/oauth/BaiduOAuthViaDialog;Landroid/content/Context;Ljava/lang/String;Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "url"
    .parameter "listener"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    .line 196
    const v0, 0x1030009

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 197
    iput-object p3, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mUrl:Ljava/lang/String;

    .line 198
    iput-object p4, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    .line 200
    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 201
    return-void
.end method

.method static synthetic access$0(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)Lcom/baidu/oauth/BaiduOAuthViaDialog;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->this$0:Lcom/baidu/oauth/BaiduOAuthViaDialog;

    return-object v0
.end method

.method private setUpWebView(I)V
    .locals 6
    .parameter "margin"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 220
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v0, webViewContainer:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    .line 222
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 223
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 224
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;

    invoke-direct {v2, p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg$OAuthWebViewClient;-><init>(Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 225
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 226
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 228
    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 230
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 233
    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 234
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v1, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 236
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 247
    :goto_0
    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 248
    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mListener:Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;

    invoke-interface {v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$DialogListener;->onCancel()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 207
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;

    .line 208
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 210
    invoke-virtual {p0, v2}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->requestWindowFeature(I)Z

    .line 211
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mContent:Landroid/widget/FrameLayout;

    .line 213
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->setUpWebView(I)V

    .line 215
    iget-object v0, p0, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/baidu/oauth/BaiduOAuthViaDialog$OAuthWebViewDlg;->setContentView(Landroid/view/View;)V

    .line 217
    return-void
.end method
