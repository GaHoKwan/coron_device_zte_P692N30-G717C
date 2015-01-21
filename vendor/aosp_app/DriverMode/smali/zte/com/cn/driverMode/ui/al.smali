.class final Lzte/com/cn/driverMode/ui/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/al;->a:Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/al;->a:Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDownloadMapNoticeDialog;->finish()V

    return-void
.end method
