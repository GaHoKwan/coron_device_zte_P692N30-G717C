.class Lcom/baidu/mobads/appoffers/OffersActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/baidu/mobads/appoffers/OffersActivity;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/OffersActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->b:Lcom/baidu/mobads/appoffers/OffersActivity;

    iput-boolean p2, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->b:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->a(Lcom/baidu/mobads/appoffers/OffersActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "finished, not to show dialog"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/a/c;->a([Ljava/lang/Object;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->b:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$1;->b:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
