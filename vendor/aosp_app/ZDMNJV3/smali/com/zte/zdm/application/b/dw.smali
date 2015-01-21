.class Lcom/zte/zdm/application/b/dw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/dw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/dx;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/dx;-><init>(Lcom/zte/zdm/application/b/dw;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dx;->start()V

    return-void
.end method
