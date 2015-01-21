.class Lcom/zte/zdm/application/b/el;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/ek;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/ek;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/el;->a:Lcom/zte/zdm/application/b/ek;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/b/el;->a:Lcom/zte/zdm/application/b/ek;

    iget-object v0, v0, Lcom/zte/zdm/application/b/ek;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->p()V

    return-void
.end method
