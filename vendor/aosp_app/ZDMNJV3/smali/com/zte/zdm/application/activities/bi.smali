.class Lcom/zte/zdm/application/activities/bi;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bi;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bi;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/bi;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-virtual {v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->a(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;Landroid/content/Intent;)V

    return-void
.end method
