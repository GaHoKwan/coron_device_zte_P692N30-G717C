.class public Lcom/baidu/mobads/appoffers/OffersActivity;
.super Landroid/app/Activity;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/app/ProgressDialog;

.field private c:Lcom/baidu/mobads/appoffers/a/d;

.field private d:Landroid/os/Handler;

.field private e:Z

.field private f:Lcom/baidu/mobads/appoffers/JsInterface;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->d:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->e:Z

    iput-boolean v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->g:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/OffersActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/baidu/mobads/appoffers/OffersActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobads/appoffers/OffersActivity$4;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/OffersActivity$4;-><init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c(Lcom/baidu/mobads/appoffers/OffersActivity;)Lcom/baidu/mobads/appoffers/a/d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    return-object v0
.end method

.method static synthetic d(Lcom/baidu/mobads/appoffers/OffersActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/mobads/appoffers/OffersActivity;->b()V

    return-void
.end method


# virtual methods
.method protected destroyWebView()V
    .locals 3

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a/d;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "webview destroy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a/d;->destroy()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "OffersActivity.dispatchKeyEvent"

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->hasWatchBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireBackKey()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public getWebview()Lcom/baidu/mobads/appoffers/a/d;
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    return-object v0
.end method

.method protected loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v0, p1}, Lcom/baidu/mobads/appoffers/a/d;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected loading(Z)V
    .locals 2

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->d:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobads/appoffers/OffersActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/baidu/mobads/appoffers/OffersActivity$1;-><init>(Lcom/baidu/mobads/appoffers/OffersActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/16 v5, 0x400

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-array v0, v3, [Ljava/lang/Object;

    sget-object v1, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "onCreate"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-array v1, v3, [Ljava/lang/Object;

    const-string v0, "[d]"

    aput-object v0, v1, v2

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->b:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->b:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/baidu/mobads/appoffers/OffersActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/OffersActivity$2;-><init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "curl"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/mobads/appoffers/a/d;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/a/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {p0, v4}, Lcom/baidu/mobads/appoffers/OffersActivity;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {p0, v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "isFullScreen"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/OffersActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    new-instance v1, Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-direct {v1, p0}, Lcom/baidu/mobads/appoffers/JsInterface;-><init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V

    iput-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    const-string v3, "MobadsSdk"

    invoke-virtual {v1, v2, v3}, Lcom/baidu/mobads/appoffers/a/d;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    new-instance v2, Lcom/baidu/mobads/appoffers/OffersActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/baidu/mobads/appoffers/OffersActivity$3;-><init>(Lcom/baidu/mobads/appoffers/OffersActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/baidu/mobads/appoffers/a/d;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0, v4}, Lcom/baidu/mobads/appoffers/OffersActivity;->loading(Z)V

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v1, v0}, Lcom/baidu/mobads/appoffers/a/d;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onDestroy"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->g:Z

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a/d;->stopLoading()V

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->hasProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/a/d;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->cleanWatchBack()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v3}, Lcom/baidu/mobads/appoffers/a/d;->canGoBack()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v1}, Lcom/baidu/mobads/appoffers/a/d;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v1}, Lcom/baidu/mobads/appoffers/a/d;->goBack()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/baidu/mobads/appoffers/OffersActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->c:Lcom/baidu/mobads/appoffers/a/d;

    invoke-virtual {v1}, Lcom/baidu/mobads/appoffers/a/d;->reload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "onPause"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->f:Lcom/baidu/mobads/appoffers/JsInterface;

    invoke-virtual {v0}, Lcom/baidu/mobads/appoffers/JsInterface;->fireResumeKey()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iput-boolean v2, p0, Lcom/baidu/mobads/appoffers/OffersActivity;->g:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Lcom/baidu/mobads/appoffers/OffersActivity;->a:Ljava/lang/String;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "onResume"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    return-void
.end method
