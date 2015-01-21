.class Lcom/zte/zdm/heartyservice/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/g;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "HeartyService"

    const-string v1, "HeartyServiceNetworkUpdateActivity->onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/g;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServiceNetworkUpdateActivity;->finish()V

    return-void
.end method
