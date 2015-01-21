.class final Lcom/ctc/epush/ab;
.super Landroid/text/style/ClickableSpan;


# instance fields
.field final synthetic a:Lcom/ctc/epush/PushDialogActivity;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ctc/epush/PushDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/epush/ab;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/ctc/epush/ab;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/ctc/epush/ab;->b:Ljava/lang/String;

    const-string v1, "http://phone.189.cn/iface/agreement"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://phone.189.cn/iface/agreement"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/ctc/epush/ab;->a:Lcom/ctc/epush/PushDialogActivity;

    invoke-virtual {v0, v1}, Lcom/ctc/epush/PushDialogActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
