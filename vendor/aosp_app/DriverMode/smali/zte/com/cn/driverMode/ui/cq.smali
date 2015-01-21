.class final Lzte/com/cn/driverMode/ui/cq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cq;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cq;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cq;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, p3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cq;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->r(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/TabHost;

    move-result-object v0

    const-string v1, "tab2"

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0
.end method
