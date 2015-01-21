.class public abstract Lcom/zte/zdm/e/i;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/zte/zdm/e/f;

.field private b:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/e/i;->a:Lcom/zte/zdm/e/f;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    const-string v0, "cancel timer!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/e/i;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method protected a(JLjava/lang/Runnable;)V
    .locals 4

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/e/i;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/zte/zdm/e/i;->b:Ljava/util/Timer;

    new-instance v1, Lcom/zte/zdm/e/j;

    invoke-direct {v1, p0, p3}, Lcom/zte/zdm/e/j;-><init>(Lcom/zte/zdm/e/i;Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public abstract a(Lcom/zte/zdm/e/f;)V
.end method
