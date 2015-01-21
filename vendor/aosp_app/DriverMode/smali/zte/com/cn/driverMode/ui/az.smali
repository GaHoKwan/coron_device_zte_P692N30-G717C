.class final Lzte/com/cn/driverMode/ui/az;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "DMHomeActivity"

    const-string v3, "disturbButtonListener--setdisturbButton-false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;->l:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v2, v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    const-string v3, "need_show_disturb_hint_dialog"

    invoke-virtual {v2, v3, v0}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v3, v3, Lzte/com/cn/driverMode/ui/DMHomeActivity;->D:Lzte/com/cn/driverMode/service/by;

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    const v5, 0x7f0800ca

    invoke-virtual {v4, v5}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->b()V

    :goto_0
    return-void

    :cond_0
    const-string v2, "DMHomeActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_disturbButton.setOnClickListener, flag="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/az;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
