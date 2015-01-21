.class Lcom/zte/zdm/application/b/fz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/fw;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fz;->a:Lcom/zte/zdm/application/b/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/fz;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-static {v0}, Lcom/zte/zdm/application/b/dd;->k(Lcom/zte/zdm/application/b/dd;)V

    return-void
.end method
