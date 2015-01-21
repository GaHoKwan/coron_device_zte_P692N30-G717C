.class final Lzte/com/cn/driverMode/ui/dy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMVersion;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMVersion;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dy;->a:Lzte/com/cn/driverMode/ui/DMVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dy;->a:Lzte/com/cn/driverMode/ui/DMVersion;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMVersion;->a(Lzte/com/cn/driverMode/ui/DMVersion;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dy;->a:Lzte/com/cn/driverMode/ui/DMVersion;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMVersion;->a(Lzte/com/cn/driverMode/ui/DMVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dy;->a:Lzte/com/cn/driverMode/ui/DMVersion;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMVersion;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
