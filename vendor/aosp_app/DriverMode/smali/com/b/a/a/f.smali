.class final Lcom/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "account onServiceConnected "

    const-string v1, "FeedbackSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    invoke-static {p2}, Lorg/a/a/b;->a(Landroid/os/IBinder;)Lorg/a/a/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/e;Lorg/a/a/a;)V

    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    invoke-static {v0}, Lcom/b/a/a/e;->a(Lcom/b/a/a/e;)V

    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/e;Z)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "account onServiceDisconnected "

    const-string v1, "FeedbackSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/e;Lorg/a/a/a;)V

    iget-object v0, p0, Lcom/b/a/a/f;->a:Lcom/b/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/a/e;->a(Lcom/b/a/a/e;Z)V

    return-void
.end method
