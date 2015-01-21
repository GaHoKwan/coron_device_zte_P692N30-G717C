.class final Lzte/com/cn/driverMode/ui/bi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMLocationDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMLocationDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bi;->a:Lzte/com/cn/driverMode/ui/DMLocationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bi;->a:Lzte/com/cn/driverMode/ui/DMLocationDialog;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMLocationDialog;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bi;->a:Lzte/com/cn/driverMode/ui/DMLocationDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMLocationDialog;->finish()V

    return-void
.end method
