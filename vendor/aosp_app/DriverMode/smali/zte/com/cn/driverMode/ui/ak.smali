.class final Lzte/com/cn/driverMode/ui/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "DMDoNotDisturbDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onClick, v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    new-instance v2, Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    invoke-direct {v2, v0}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v3, "need_show_disturb_hint_dialog"

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    const-string v0, "DMDoNotDisturbDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick, after setFlag, flag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->a:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->setResult(I)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->b:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->setResult(I)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ak;->a:Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDoNotDisturbDialog;->finish()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
