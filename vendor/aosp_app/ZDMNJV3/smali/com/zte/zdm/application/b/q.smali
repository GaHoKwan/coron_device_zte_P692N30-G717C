.class Lcom/zte/zdm/application/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/n;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/n;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/q;->a:Lcom/zte/zdm/application/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/q;->a:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->g(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->a()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/q;->a:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->h(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method