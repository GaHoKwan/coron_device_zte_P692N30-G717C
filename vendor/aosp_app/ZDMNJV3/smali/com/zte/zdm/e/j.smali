.class Lcom/zte/zdm/e/j;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/zte/zdm/e/i;


# direct methods
.method constructor <init>(Lcom/zte/zdm/e/i;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/e/j;->b:Lcom/zte/zdm/e/i;

    iput-object p2, p0, Lcom/zte/zdm/e/j;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/e/j;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
