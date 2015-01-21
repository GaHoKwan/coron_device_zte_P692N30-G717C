.class final Lzte/com/cn/driverMode/ui/bl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->j()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->a()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->b(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bl;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->finish()V

    return-void
.end method
