.class final Lzte/com/cn/driverMode/ui/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->c()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->p()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0, p3}, Lzte/com/cn/driverMode/service/DMMusicService;->d(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->h()Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->e()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->c(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bq;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->a(Lzte/com/cn/driverMode/ui/DMMusicActivity;Z)Z

    goto :goto_0
.end method
