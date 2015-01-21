.class Lcom/zte/zdm/application/mmi/bz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bz;->b:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/bz;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "mainDownload clicked"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bz;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
