.class Lcom/zte/zdm/application/b/ca;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ca;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DLSessionRestarted, postDelayed"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/ca;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->r:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/b/ca;->a:Lcom/zte/zdm/application/b/s;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/zte/zdm/application/b/s;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
