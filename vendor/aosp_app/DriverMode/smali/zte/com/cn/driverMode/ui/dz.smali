.class final Lzte/com/cn/driverMode/ui/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->a(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->b(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08016d

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08016e

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->d(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lzte/com/cn/driverMode/ui/ec;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/dz;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/ui/ec;-><init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
