.class final Lzte/com/cn/driverMode/ui/bn;
.super Ljava/lang/Thread;


# instance fields
.field a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bn;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/bn;->a:I

    const/16 v0, 0x64

    iput v0, p0, Lzte/com/cn/driverMode/ui/bn;->a:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :cond_0
    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bn;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->g(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget v0, p0, Lzte/com/cn/driverMode/ui/bn;->a:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/bn;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bn;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bn;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/ui/bo;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/bo;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_1
    return-void
.end method
