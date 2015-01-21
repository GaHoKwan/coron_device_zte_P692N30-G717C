.class Lcom/zte/zdm/notification/j;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/zte/zdm/notification/i;


# direct methods
.method constructor <init>(Lcom/zte/zdm/notification/i;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    iput-object p2, p0, Lcom/zte/zdm/notification/j;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->a(Lcom/zte/zdm/notification/i;)V

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string v2, "dm"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notification : isScreenOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/application/b/g;->A()Lcom/zte/zdm/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/zdm/a/d;->b()Lcom/zte/zdm/a/j;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zte/zdm/notification/i;->a(Lcom/zte/zdm/notification/i;Lcom/zte/zdm/a/j;)Lcom/zte/zdm/a/j;

    iget-object v0, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    iget-object v2, p0, Lcom/zte/zdm/notification/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/zte/zdm/notification/i;->a(Landroid/content/Context;Landroid/os/PowerManager$WakeLock;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    invoke-virtual {v2, v1, v0}, Lcom/zte/zdm/notification/i;->a(Landroid/os/PowerManager$WakeLock;Landroid/app/AlertDialog;)V

    const-string v1, "play media!"

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/notification/j;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v1}, Lcom/zte/zdm/notification/i;->b(Lcom/zte/zdm/notification/i;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
