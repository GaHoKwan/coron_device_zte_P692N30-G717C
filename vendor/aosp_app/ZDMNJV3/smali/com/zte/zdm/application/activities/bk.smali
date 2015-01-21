.class Lcom/zte/zdm/application/activities/bk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/bk;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "start update when roaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/bk;->a:Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;->c(Lcom/zte/zdm/application/activities/SystemUpdateActivityUI;)V

    return-void
.end method
