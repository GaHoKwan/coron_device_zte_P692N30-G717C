.class Lcom/zte/zdm/application/mmi/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bw;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bw;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->openOptionsMenu()V

    return-void
.end method
