.class Lcom/zte/zdm/application/mmi/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->h(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_download"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0, p1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;I)V

    const-string v0, "android.action.delayDownLoad"

    invoke-static {v0, p1}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xe10

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/bb;->a(I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3840

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/bb;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->i(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    const/16 v0, 0x7080

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/bb;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->j(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->a(Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;J)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/zte/zdm/application/mmi/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bb;->a:Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/application/mmi/DownloadConfirmActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
