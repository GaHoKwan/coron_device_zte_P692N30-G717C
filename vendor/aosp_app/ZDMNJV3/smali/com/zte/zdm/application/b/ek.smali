.class Lcom/zte/zdm/application/b/ek;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/dd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/dd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/ek;->a:Lcom/zte/zdm/application/b/dd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    new-instance v0, Lcom/zte/zdm/application/b/el;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/b/el;-><init>(Lcom/zte/zdm/application/b/ek;)V

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/el;->start()V

    return-void
.end method
