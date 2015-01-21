.class Lcom/zte/zdm/heartyservice/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/heartyservice/ui/h;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "HeartyService"

    const-string v1, "HeartyServicePkgCheckerActivity->setOnClickListener: quit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zte/zdm/heartyservice/ui/h;->a:Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/ui/HeartyServicePkgCheckerActivity;->finish()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/heartyservice/core/a;->c()V

    invoke-static {}, Lcom/zte/zdm/heartyservice/core/a;->a()Lcom/zte/zdm/heartyservice/core/a;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/services/ZdmService;->a()Lcom/zte/zdm/application/services/ZdmService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/heartyservice/core/a;->f(Landroid/content/Context;)V

    return-void
.end method
