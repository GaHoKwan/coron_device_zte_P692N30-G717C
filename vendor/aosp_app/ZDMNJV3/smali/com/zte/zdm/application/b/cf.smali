.class Lcom/zte/zdm/application/b/cf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/cd;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/cf;->a:Lcom/zte/zdm/application/b/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ProgressDialog: user click the background button when downloading!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cf;->a:Lcom/zte/zdm/application/b/cd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/s;->i()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/cf;->a:Lcom/zte/zdm/application/b/cd;

    iget-object v0, v0, Lcom/zte/zdm/application/b/cd;->a:Lcom/zte/zdm/application/b/s;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/s;->a(Lcom/zte/zdm/application/b/s;Z)V

    return-void
.end method
