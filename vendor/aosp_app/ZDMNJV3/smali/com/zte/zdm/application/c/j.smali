.class Lcom/zte/zdm/application/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/16 v5, 0x7080

    const/16 v4, 0x3840

    const/16 v3, 0xe10

    const/4 v2, 0x0

    const-string v0, "android.action.delayInstall"

    invoke-static {v0}, Lcom/zte/zdm/application/autoupdate/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->c(Lcom/zte/zdm/application/c/e;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/application/c/e;->e()Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0, v3}, Lcom/zte/zdm/application/c/e;->a(Lcom/zte/zdm/application/c/e;I)V

    const-string v0, "android.action.delayInstall"

    invoke-static {v0, v3}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/zte/zdm/application/c/e;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->a(Landroid/app/Activity;)Landroid/app/Activity;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->c(Lcom/zte/zdm/application/c/e;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/zte/zdm/application/c/e;->e()Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0, v4}, Lcom/zte/zdm/application/c/e;->a(Lcom/zte/zdm/application/c/e;I)V

    const-string v0, "android.action.delayInstall"

    invoke-static {v0, v4}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->c(Lcom/zte/zdm/application/c/e;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/zte/zdm/application/c/e;->e()Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "start_install"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0, v5}, Lcom/zte/zdm/application/c/e;->a(Lcom/zte/zdm/application/c/e;I)V

    const-string v0, "android.action.delayInstall"

    invoke-static {v0, v5}, Lcom/zte/zdm/application/autoupdate/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zte/zdm/application/c/j;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->d(Lcom/zte/zdm/application/c/e;)V

    invoke-static {}, Lcom/zte/zdm/application/c/e;->e()Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "backup_click"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method
