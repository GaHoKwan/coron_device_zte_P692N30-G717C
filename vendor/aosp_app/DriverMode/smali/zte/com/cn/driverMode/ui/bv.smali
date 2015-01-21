.class final Lzte/com/cn/driverMode/ui/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/bv;->a:I

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->e(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, Lzte/com/cn/driverMode/ui/bv;->a:I

    goto :goto_0
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;Z)Z

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const-string v0, "DMMusicActiviyt"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;Z)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->f(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bv;->b:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    iget v1, p0, Lzte/com/cn/driverMode/ui/bv;->a:I

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/DMMusicService;->a(I)V

    :cond_0
    return-void
.end method
