.class Lcom/zte/zdm/application/mmi/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/g;

.field final synthetic b:Lcom/zte/zdm/application/mmi/bq;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/bq;Lcom/zte/zdm/application/b/g;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/br;->b:Lcom/zte/zdm/application/mmi/bq;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/br;->a:Lcom/zte/zdm/application/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "start update when roaming"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/br;->b:Lcom/zte/zdm/application/mmi/bq;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/br;->a:Lcom/zte/zdm/application/b/g;

    invoke-static {v0, v1}, Lcom/zte/zdm/application/mmi/bq;->a(Lcom/zte/zdm/application/mmi/bq;Lcom/zte/zdm/application/b/g;)V

    return-void
.end method
