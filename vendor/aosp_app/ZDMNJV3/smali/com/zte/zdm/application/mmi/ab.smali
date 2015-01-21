.class Lcom/zte/zdm/application/mmi/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/z;

.field final synthetic b:Lcom/zte/zdm/application/mmi/aa;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ab;->b:Lcom/zte/zdm/application/mmi/aa;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/ab;->a:Lcom/zte/zdm/application/mmi/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ab;->b:Lcom/zte/zdm/application/mmi/aa;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/aa;->a(Lcom/zte/zdm/application/mmi/aa;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/ab;->a:Lcom/zte/zdm/application/mmi/z;

    const/4 v2, -0x3

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ab;->a:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->dismiss()V

    return-void
.end method
