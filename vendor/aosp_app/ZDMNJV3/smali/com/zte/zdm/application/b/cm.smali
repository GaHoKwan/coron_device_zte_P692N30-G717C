.class Lcom/zte/zdm/application/b/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ci;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ci;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cm;->a:Lcom/zte/zdm/application/b/ci;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/cm;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->h(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->a()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cm;->a:Lcom/zte/zdm/application/b/ci;

    invoke-static {v0}, Lcom/zte/zdm/application/b/ci;->i(Lcom/zte/zdm/application/b/ci;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
