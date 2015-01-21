.class final Lzte/com/cn/driverMode/service/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/service/DMService;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/service/DMService;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 5

    const/16 v4, 0x1021

    const/4 v3, 0x1

    const-string v0, "zyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "focuseChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    const-string v0, "DMService"

    const-string v1, "!!!!!OnAudioFocusChangeListener---AUDIOFOCUS_LOSS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    const/4 v1, 0x0

    iput v1, v0, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMService;->l()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v3, :cond_1

    const-string v0, "DMService"

    const-string v1, "!!!!!OnAudioFocusChangeListener---AUDIOFOCUS_GAIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->d:Lzte/com/cn/driverMode/service/DMApplication;

    iput v3, v0, Lzte/com/cn/driverMode/service/DMApplication;->k:I

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    invoke-virtual {v0, v4}, Lzte/com/cn/driverMode/service/bv;->removeMessages(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bl;->a:Lzte/com/cn/driverMode/service/DMService;

    iget-object v0, v0, Lzte/com/cn/driverMode/service/DMService;->m:Lzte/com/cn/driverMode/service/bv;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v4, v1, v2}, Lzte/com/cn/driverMode/service/bv;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
