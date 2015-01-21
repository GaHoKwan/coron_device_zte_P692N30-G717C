.class final Lzte/com/cn/driverMode/ui/cw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/cz;

.field final synthetic c:Lzte/com/cn/driverMode/ui/ct;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/ct;ILzte/com/cn/driverMode/ui/cz;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cw;->c:Lzte/com/cn/driverMode/ui/ct;

    iput p2, p0, Lzte/com/cn/driverMode/ui/cw;->a:I

    iput-object p3, p0, Lzte/com/cn/driverMode/ui/cw;->b:Lzte/com/cn/driverMode/ui/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cw;->c:Lzte/com/cn/driverMode/ui/ct;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cw;->c:Lzte/com/cn/driverMode/ui/ct;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->i(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cw;->c:Lzte/com/cn/driverMode/ui/ct;

    iget v1, p0, Lzte/com/cn/driverMode/ui/cw;->a:I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/cw;->b:Lzte/com/cn/driverMode/ui/cz;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/ct;->a(I)V

    goto :goto_0
.end method
