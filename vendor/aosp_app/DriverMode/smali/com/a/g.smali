.class final Lcom/a/g;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/a/f;


# direct methods
.method constructor <init>(Lcom/a/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, ""

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/f;->a(Lcom/a/f;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    invoke-static {v1, v2}, Lcom/a/f;->a(Lcom/a/f;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    new-instance v2, Lcom/a/i;

    iget-object v3, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-direct {v2, v3, v4}, Lcom/a/i;-><init>(Lcom/a/f;B)V

    invoke-static {v1, v2}, Lcom/a/f;->a(Lcom/a/f;Lcom/a/i;)Lcom/a/i;

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    iget-object v2, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v2}, Lcom/a/f;->a(Lcom/a/f;)Lcom/a/i;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/f;->a(Lcom/a/f;Landroid/telephony/PhoneStateListener;)V

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v1}, Lcom/a/f;->b(Lcom/a/f;)Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v1}, Lcom/a/f;->c(Lcom/a/f;)Z

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    new-instance v2, Lcom/a/h;

    iget-object v3, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-direct {v2, v3, v0}, Lcom/a/h;-><init>(Lcom/a/f;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/a/f;->a(Lcom/a/f;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v0}, Lcom/a/f;->b(Lcom/a/f;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    new-instance v1, Lcom/a/j;

    iget-object v2, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-direct {v1, v2, v4}, Lcom/a/j;-><init>(Lcom/a/f;B)V

    invoke-static {v0, v1}, Lcom/a/f;->a(Lcom/a/f;Lcom/a/j;)Lcom/a/j;

    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v1}, Lcom/a/f;->d(Lcom/a/f;)Lcom/a/j;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/f;->a(Lcom/a/f;Landroid/location/GpsStatus$NmeaListener;)V

    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    new-instance v1, Lcom/a/l;

    iget-object v2, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-direct {v1, v2, v4}, Lcom/a/l;-><init>(Lcom/a/f;B)V

    invoke-static {v0, v1}, Lcom/a/f;->a(Lcom/a/f;Lcom/a/l;)Lcom/a/l;

    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    iget-object v1, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v1}, Lcom/a/f;->e(Lcom/a/f;)Lcom/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/f;->a(Lcom/a/f;Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/a/g;->a:Lcom/a/f;

    invoke-static {v0}, Lcom/a/f;->f(Lcom/a/f;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
