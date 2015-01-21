.class Lcom/zte/zdm/application/mmi/bx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/UIProjectActivity;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/UIProjectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/bx;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/bx;->a:Lcom/zte/zdm/application/mmi/UIProjectActivity;

    invoke-static {v0}, Lcom/zte/zdm/application/mmi/UIProjectActivity;->a(Lcom/zte/zdm/application/mmi/UIProjectActivity;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "no_space"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;Z)V

    return-void
.end method
