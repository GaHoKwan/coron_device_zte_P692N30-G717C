.class Lcom/zte/zdm/notification/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/os/PowerManager$WakeLock;

.field final synthetic b:Lcom/zte/zdm/notification/i;


# direct methods
.method constructor <init>(Lcom/zte/zdm/notification/i;Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    iput-object p2, p0, Lcom/zte/zdm/notification/m;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string v0, "user reject the message."

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/zdm/notification/i;->a(Lcom/zte/zdm/notification/i;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->d(Lcom/zte/zdm/notification/i;)Lcom/zte/zdm/a/j;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->g(Lcom/zte/zdm/notification/i;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->e(Lcom/zte/zdm/notification/i;)Lcom/zte/zdm/g/e;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/g/b;->b(Lcom/zte/zdm/g/e;)V

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->f(Lcom/zte/zdm/notification/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/notification/m;->b:Lcom/zte/zdm/notification/i;

    invoke-static {v0}, Lcom/zte/zdm/notification/i;->f(Lcom/zte/zdm/notification/i;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    return-void
.end method
