.class Lcom/zte/zdm/application/mmi/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/z;

.field final synthetic b:Lcom/zte/zdm/application/mmi/aa;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ae;->b:Lcom/zte/zdm/application/mmi/aa;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/ae;->a:Lcom/zte/zdm/application/mmi/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ae;->a:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->dismiss()V

    return-void
.end method
