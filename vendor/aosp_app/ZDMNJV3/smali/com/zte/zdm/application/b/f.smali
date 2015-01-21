.class Lcom/zte/zdm/application/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/f;->a:Lcom/zte/zdm/application/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/f;->a:Lcom/zte/zdm/application/b/c;

    invoke-static {v0}, Lcom/zte/zdm/application/b/c;->e(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/f;->a:Lcom/zte/zdm/application/b/c;

    invoke-static {v0}, Lcom/zte/zdm/application/b/c;->f(Lcom/zte/zdm/application/b/c;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
