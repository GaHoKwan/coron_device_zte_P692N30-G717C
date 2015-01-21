.class Lcom/zte/zdm/application/mmi/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "updateClick: onClick"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;)Lcom/zte/zdm/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "menu_fota_checkupdate"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dm network is not ok"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "dm network is  ok"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/zte/zdm/application/mmi/bq;->a()Lcom/zte/zdm/application/mmi/bq;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/bu;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/mmi/bq;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
