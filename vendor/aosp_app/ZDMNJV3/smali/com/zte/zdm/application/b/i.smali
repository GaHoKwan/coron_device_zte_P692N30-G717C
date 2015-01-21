.class Lcom/zte/zdm/application/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/h;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/i;->a:Lcom/zte/zdm/application/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/i;->a:Lcom/zte/zdm/application/b/h;

    invoke-static {v0}, Lcom/zte/zdm/application/b/h;->a(Lcom/zte/zdm/application/b/h;)Lcom/zte/zdm/e/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/i;->a:Lcom/zte/zdm/application/b/h;

    invoke-static {v0}, Lcom/zte/zdm/application/b/h;->b(Lcom/zte/zdm/application/b/h;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
