.class Lcom/zte/zdm/application/b/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ct;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cw;->a:Lcom/zte/zdm/application/b/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/cw;->a:Lcom/zte/zdm/application/b/ct;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ct;->e(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/cw;->a:Lcom/zte/zdm/application/b/ct;

    invoke-static {v1}, Lcom/zte/zdm/application/b/ct;->b(Lcom/zte/zdm/application/b/ct;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cw;->a:Lcom/zte/zdm/application/b/ct;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ct;->f(Lcom/zte/zdm/application/b/ct;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
