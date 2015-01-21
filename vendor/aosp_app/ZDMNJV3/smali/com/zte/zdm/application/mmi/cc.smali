.class Lcom/zte/zdm/application/mmi/cc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UpdateComplete;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UpdateComplete;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/cc;->a:Lcom/zte/zdm/application/mmi/UpdateComplete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/cc;->a:Lcom/zte/zdm/application/mmi/UpdateComplete;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->finish()V

    return-void
.end method
