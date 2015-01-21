.class Lcom/zte/zdm/application/b/ea;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ea;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/eb;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/eb;-><init>(Lcom/zte/zdm/application/b/ea;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/eb;->start()V

    return-void
.end method
