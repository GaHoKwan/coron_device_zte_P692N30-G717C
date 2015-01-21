.class Lcom/powermo/SmartBar/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/bo;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->c(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/c;->a(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/aw;->b()Z

    move-result v3

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/aw;->d()Z

    move-result v4

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/aw;->e()I

    move-result v0

    iget-object v5, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v5}, Lcom/powermo/SmartBar/bo;->c(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/c;

    move-result-object v5

    iget-object v6, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v6}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v6

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-le v0, v1, :cond_3

    :cond_0
    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v5, v2, v6, v0}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/k;Landroid/content/Context;I)V

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v1}, Lcom/powermo/SmartBar/bo;->e(Lcom/powermo/SmartBar/bo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/powermo/SmartBar/SmartBarService;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/powermo/SmartBar/k;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/powermo/SmartBar/bq;->a:Lcom/powermo/SmartBar/bo;

    invoke-static {v0}, Lcom/powermo/SmartBar/bo;->a(Lcom/powermo/SmartBar/bo;)V

    goto :goto_3
.end method
