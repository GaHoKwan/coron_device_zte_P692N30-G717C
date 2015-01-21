.class Lcom/zte/zdm/heartyservice/ui/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/k;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceTCardUpdateActivity->onClick: menu_check_new_from_server"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/heartyservice/ui/k;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceTCardUpdateActivity;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->a(Landroid/app/Activity;)V

    return-void
.end method
