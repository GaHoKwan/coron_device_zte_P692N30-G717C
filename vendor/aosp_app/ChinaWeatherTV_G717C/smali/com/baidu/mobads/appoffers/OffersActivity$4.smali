.class Lcom/baidu/mobads/appoffers/OffersActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/mobads/appoffers/OffersActivity;


# direct methods
.method constructor <init>(Lcom/baidu/mobads/appoffers/OffersActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/mobads/appoffers/OffersActivity$4;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$4;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/baidu/mobads/appoffers/OffersActivity;->a(Lcom/baidu/mobads/appoffers/OffersActivity;Z)Z

    iget-object v0, p0, Lcom/baidu/mobads/appoffers/OffersActivity$4;->a:Lcom/baidu/mobads/appoffers/OffersActivity;

    invoke-static {v0}, Lcom/baidu/mobads/appoffers/OffersActivity;->b(Lcom/baidu/mobads/appoffers/OffersActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/baidu/mobads/appoffers/OffersActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/baidu/mobads/appoffers/a/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
