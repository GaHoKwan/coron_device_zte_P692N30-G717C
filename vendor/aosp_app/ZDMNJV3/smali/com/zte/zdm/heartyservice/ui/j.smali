.class Lcom/zte/zdm/heartyservice/ui/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "HeartyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-static {v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->b(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-static {v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-virtual {v1, v2}, Lcom/zte/zdm/heartyservice/core/a;->c(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-virtual {v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->finish()V

    :cond_0
    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-static {v1}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;->c(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/j;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->d(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
