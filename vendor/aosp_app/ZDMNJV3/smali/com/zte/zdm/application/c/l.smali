.class Lcom/zte/zdm/application/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/l;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/c/l;->a:Lcom/zte/zdm/application/c/e;

    invoke-static {v0}, Lcom/zte/zdm/application/c/e;->e(Lcom/zte/zdm/application/c/e;)Lcom/zte/zdm/application/c/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/c/p;->a(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
