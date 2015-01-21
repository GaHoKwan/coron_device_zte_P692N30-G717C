.class final Lcom/a/m;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/a/l;


# direct methods
.method constructor <init>(Lcom/a/l;)V
    .locals 0

    iput-object p1, p0, Lcom/a/m;->a:Lcom/a/l;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/a/m;->a:Lcom/a/l;

    iget-object v0, v0, Lcom/a/l;->a:Lcom/a/f;

    invoke-static {v0}, Lcom/a/f;->g(Lcom/a/f;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/m;->a:Lcom/a/l;

    iget-object v0, v0, Lcom/a/l;->a:Lcom/a/f;

    invoke-static {v0}, Lcom/a/f;->g(Lcom/a/f;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    :cond_0
    return-void
.end method
