.class final Lzte/com/cn/driverMode/ui/ch;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMNoticeDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ch;->a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ch;->a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->finish()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ch;->a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ch;->a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->j:Ljava/lang/String;

    const-string v1, "NoticeDownloadMapResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ch;->a:Lzte/com/cn/driverMode/ui/DMNoticeDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMNoticeDialog;->k:Landroid/content/Context;

    invoke-static {v0}, Lzte/com/cn/driverMode/service/ce;->l(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
