.class public Lcom/isw/third/app/LBSWebActivity;
.super Landroid/app/Activity;
.source "LBSWebActivity.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field city:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field keyword:Ljava/lang/String;

.field private myWebView:Landroid/webkit/WebView;

.field progressBar:Landroid/widget/ProgressBar;

.field viewClient:Landroid/webkit/WebViewClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "LBSWebView"

    sput-object v0, Lcom/isw/third/app/LBSWebActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Lcom/isw/third/app/LBSWebActivity$1;

    invoke-direct {v0, p0}, Lcom/isw/third/app/LBSWebActivity$1;-><init>(Lcom/isw/third/app/LBSWebActivity;)V

    iput-object v0, p0, Lcom/isw/third/app/LBSWebActivity;->viewClient:Landroid/webkit/WebViewClient;

    .line 172
    new-instance v0, Lcom/isw/third/app/LBSWebActivity$2;

    invoke-direct {v0, p0}, Lcom/isw/third/app/LBSWebActivity$2;-><init>(Lcom/isw/third/app/LBSWebActivity;)V

    iput-object v0, p0, Lcom/isw/third/app/LBSWebActivity;->handler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/isw/third/app/LBSWebActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/isw/third/app/LBSWebActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/isw/third/app/LBSWebActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x2

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .local v1, relativeLayout:Landroid/widget/RelativeLayout;
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->myWebView:Landroid/webkit/WebView;

    .line 39
    iget-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 40
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->progressBar:Landroid/widget/ProgressBar;

    .line 41
    iget-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 44
    .local v0, reLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    .line 45
    const/4 v3, -0x1

    .line 44
    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46
    iget-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    invoke-virtual {p0, v4}, Lcom/isw/third/app/LBSWebActivity;->requestWindowFeature(I)Z

    .line 48
    invoke-virtual {p0, v1}, Lcom/isw/third/app/LBSWebActivity;->setContentView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p0}, Lcom/isw/third/app/LBSWebActivity;->startLoadUrlTask()V

    .line 51
    new-instance v2, Lcom/isw/third/app/LBSWebActivity$3;

    invoke-direct {v2, p0}, Lcom/isw/third/app/LBSWebActivity$3;-><init>(Lcom/isw/third/app/LBSWebActivity;)V

    .line 128
    invoke-virtual {v2}, Lcom/isw/third/app/LBSWebActivity$3;->start()V

    .line 129
    return-void
.end method

.method public startLoadUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 160
    .local v0, webSettings:Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 161
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity;->myWebView:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/isw/third/app/LBSWebActivity;->viewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 162
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity;->myWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public startLoadUrlTask()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/isw/third/app/LBSWebActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    return-void
.end method

.method public stopLoadUrlTask()V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 168
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 169
    iget-object v1, p0, Lcom/isw/third/app/LBSWebActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    return-void
.end method
