.class Lcom/zte/zdm/application/mmi/ca;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/ca;->b:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/ca;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "mainCancel clicked"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ca;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/ca;->b:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    const/16 v1, 0x44c

    invoke-static {v0, v1}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Lcom/zte/zdm/application/mmi/UIProjectActivity;I)V

    return-void
.end method
