.class Lcom/zte/zdm/application/b/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/an;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/ao;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/ao;-><init>(Lcom/zte/zdm/application/b/an;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/ao;->start()V

    return-void
.end method