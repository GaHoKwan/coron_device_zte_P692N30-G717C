.class Lcom/zte/zdm/application/activities/am;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/a/j;

.field final synthetic b:Ljava/lang/Runnable;

.field final synthetic c:Lcom/zte/zdm/application/activities/z;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/activities/z;Lcom/zte/zdm/a/j;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/activities/am;->c:Lcom/zte/zdm/application/activities/z;

    iput-object p2, p0, Lcom/zte/zdm/application/activities/am;->a:Lcom/zte/zdm/a/j;

    iput-object p3, p0, Lcom/zte/zdm/application/activities/am;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/activities/am;->c:Lcom/zte/zdm/application/activities/z;

    iget-object v1, p0, Lcom/zte/zdm/application/activities/am;->a:Lcom/zte/zdm/a/j;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/activities/am;->c:Lcom/zte/zdm/application/activities/z;

    invoke-static {v0}, Lcom/zte/zdm/application/activities/z;->a(Lcom/zte/zdm/application/activities/z;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/b/cn;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/zdm/application/activities/z;->k:Z

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/activities/z;->s:Z

    iget-object v0, p0, Lcom/zte/zdm/application/activities/am;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
