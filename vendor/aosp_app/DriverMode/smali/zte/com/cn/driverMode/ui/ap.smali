.class final Lzte/com/cn/driverMode/ui/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMGaoDeDownload;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ap;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.anav.com/download/todownload.html#"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ap;->a:Lzte/com/cn/driverMode/ui/DMGaoDeDownload;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMGaoDeDownload;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
