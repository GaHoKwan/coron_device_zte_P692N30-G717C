.class final Lzte/com/cn/driverMode/ui/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMGaoDeDownload;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/aq;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "com.autonavi.xmgd.action.START"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.autonavi.xmgd.navigator.tob"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aq;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aq;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->h:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/aq;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->h:Landroid/content/Context;

    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
