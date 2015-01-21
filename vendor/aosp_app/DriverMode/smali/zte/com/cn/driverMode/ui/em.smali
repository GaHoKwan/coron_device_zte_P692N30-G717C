.class final Lzte/com/cn/driverMode/ui/em;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/SpecialTipsActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/em;->a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/em;->a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->i:Lzte/com/cn/driverMode/service/by;

    const-string v1, "first_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/em;->a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    invoke-virtual {v1}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/em;->a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/em;->a:Lzte/com/cn/driverMode/ui/SpecialTipsActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/SpecialTipsActivity;->finish()V

    return-void
.end method
