.class Lcom/zte/zdm/application/mmi/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/av;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/av;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "mandatory download task begin"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->j()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/zte/zdm/application/c/a;->c:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/zte/zdm/application/b/r;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->b(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->c(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->b(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aw;->a:Lcom/zte/zdm/application/mmi/av;

    iget-object v0, v0, Lcom/zte/zdm/application/mmi/av;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->d(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    goto :goto_0
.end method
