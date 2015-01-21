.class Lcom/zte/zdm/application/b/fx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/fw;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ProgressDialog: user click the cancle button when downloading!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AndroidMmiController ProgressBar pause session"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x384

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->e(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v1, v1, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;)Lcom/zte/zdm/a/j;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v2, v2, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v2}, Lcom/zte/zdm/application/b/dd;->j(Lcom/zte/zdm/application/b/dd;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/b/dd;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fx;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/dd;->r:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->b(Z)V

    const-string v0, "pause the session and pop up the ConfirmDialog"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
