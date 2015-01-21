.class final Lcom/a/n;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/a/aw;


# direct methods
.method constructor <init>(Lcom/a/aw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/a/n;->a:Lcom/a/aw;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/a/n;->a:Lcom/a/aw;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/aw;->a(Lcom/a/aw;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v0, p0, Lcom/a/n;->a:Lcom/a/aw;

    invoke-static {v0}, Lcom/a/aw;->c(Lcom/a/aw;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x4248

    iget-object v5, p0, Lcom/a/n;->a:Lcom/a/aw;

    invoke-static {v5}, Lcom/a/aw;->b(Lcom/a/aw;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
