.class final Lzte/com/cn/driverMode/ui/ec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/16 v3, 0x1002

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->a(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->b(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "DMfeedBackActivity"

    const-string v1, "EditText is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->e(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Lzte/com/cn/driverMode/ui/eb;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/eb;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v0, 0x1001

    iput v0, v1, Landroid/os/Message;->what:I

    const-string v0, "DMfeedBackActivity"

    const-string v2, "send start......"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->c(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/k;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->b(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->a(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/a/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x1002

    iput v0, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const-string v0, "DMfeedBackActivity"

    const-string v2, "send Ok ......"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ec;->a:Lzte/com/cn/driverMode/ui/DMfeedBackActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMfeedBackActivity;->e(Lzte/com/cn/driverMode/ui/DMfeedBackActivity;)Lzte/com/cn/driverMode/ui/eb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/eb;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
