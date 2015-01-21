.class Lcom/zte/zdm/application/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/n;->b:Lcom/zte/zdm/application/c/e;

    iput-object p2, p0, Lcom/zte/zdm/application/c/n;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/c/e;->f()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/application/c/n;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
