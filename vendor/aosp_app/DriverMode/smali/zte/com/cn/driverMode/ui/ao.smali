.class final Lzte/com/cn/driverMode/ui/ao;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ao;->a:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ao;->a:Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMGPSNoticeDialog;->finish()V

    return-void
.end method