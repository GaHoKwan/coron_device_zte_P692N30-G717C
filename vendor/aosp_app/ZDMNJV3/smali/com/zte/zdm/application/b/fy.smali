.class Lcom/zte/zdm/application/b/fy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/b/fw;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/b/fw;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/b/fy;->a:Lcom/zte/zdm/application/b/fw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ProgressDialog: user click the background button when downloading!"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fy;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/dd;->i()V

    iget-object v0, p0, Lcom/zte/zdm/application/b/fy;->a:Lcom/zte/zdm/application/b/fw;

    iget-object v0, v0, Lcom/zte/zdm/application/b/fw;->a:Lcom/zte/zdm/application/b/dd;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/b/dd;->a(Lcom/zte/zdm/application/b/dd;Z)V

    return-void
.end method
