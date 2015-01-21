.class Lcom/zte/zdm/application/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/h;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/zte/zdm/application/c/e;->d()Lcom/zte/zdm/application/activities/z;

    move-result-object v0

    invoke-static {}, Lcom/zte/zdm/application/c/e;->c()Lcom/zte/zdm/a/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/activities/z;->b(Lcom/zte/zdm/a/j;)V

    iget-object v0, p0, Lcom/zte/zdm/application/c/h;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->a(Lcom/zte/zdm/application/c/e;)V

    return-void
.end method
