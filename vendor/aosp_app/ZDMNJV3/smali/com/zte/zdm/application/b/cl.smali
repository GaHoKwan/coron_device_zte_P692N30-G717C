.class Lcom/zte/zdm/application/b/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ci;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cl;->a:Lcom/zte/zdm/application/b/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/cl;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->f(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cl;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v1}, Lcom/zte/zdm/application/b/ci;->e(Lcom/zte/zdm/application/b/ci;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cl;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->g(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
