.class Lcom/zte/zdm/application/b/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/zte/zdm/application/b/n;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/n;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/p;->b:Lcom/zte/zdm/application/b/n;

    iput-object p2, p0, Lcom/zte/zdm/application/b/p;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/p;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->e(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/p;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/zte/zdm/e/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/p;->b:Lcom/zte/zdm/application/b/n;

    invoke-static {v0}, Lcom/zte/zdm/application/b/n;->f(Lcom/zte/zdm/application/b/n;)Lcom/zte/zdm/e/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/zdm/e/f;->f()V

    return-void
.end method
