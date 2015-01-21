.class Lcom/zte/zdm/application/b/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/br;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/b/br;->a:Lcom/zte/zdm/application/b/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;Z)V

    return-void
.end method
