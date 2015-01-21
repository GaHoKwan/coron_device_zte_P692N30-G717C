.class Lcom/zte/zdm/application/b/cb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/s;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/s;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cb;->a:Lcom/zte/zdm/application/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Mandatory Update acceptContinueSession()"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    sget-boolean v1, Lcom/zte/zdm/application/b/r;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/b/cb;->a:Lcom/zte/zdm/application/b/s;

    iget-object v0, v0, Lcom/zte/zdm/application/b/s;->s:Lcom/zte/zdm/a/a;

    invoke-virtual {v0}, Lcom/zte/zdm/a/a;->B()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/zdm/application/b/r;->f:Z

    iget-object v0, p0, Lcom/zte/zdm/application/b/cb;->a:Lcom/zte/zdm/application/b/s;

    invoke-static {v0}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;)V

    :cond_0
    return-void
.end method
