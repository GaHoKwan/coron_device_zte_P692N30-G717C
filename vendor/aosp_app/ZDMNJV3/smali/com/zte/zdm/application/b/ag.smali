.class Lcom/zte/zdm/application/b/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ag;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/ag;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zdm/a/a;->f(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ag;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->C()V

    return-void
.end method
