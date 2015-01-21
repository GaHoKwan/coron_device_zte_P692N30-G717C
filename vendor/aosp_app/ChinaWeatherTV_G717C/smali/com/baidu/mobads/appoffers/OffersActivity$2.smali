.class Lcom/baidu/mobads/appoffers/OffersActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/OffersActivity;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ProcessDialog"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v4}, Lcom/baidu/mobads/appoffers/OffersActivity;->b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v4}, Lcom/baidu/mobads/appoffers/OffersActivity;->c(Lcom/baidu/mobads/appoffers/OffersActivity;)Lcom/baidu/mobads/appoffers/a/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/mobads/appoffers/a/d;->canGoBack()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "/"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    if-ne v5, p2, :cond_0

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/OffersActivity;->b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ProcessDialog BACK"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v2}, Lcom/baidu/mobads/appoffers/OffersActivity;->d(Lcom/baidu/mobads/appoffers/OffersActivity;)V

    iget-object v2, p0, Lcom/baidu/mobads/appoffers/OffersActivity$2;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-virtual {v2}, Lcom/baidu/mobads/appoffers/OffersActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v0, v1

    goto :goto_0
.end method
