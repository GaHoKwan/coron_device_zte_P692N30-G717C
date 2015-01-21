.class final Lzte/com/cn/driverMode/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->a:Lzte/com/cn/driverMode/service/by;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->a:Lzte/com/cn/driverMode/service/by;

    const-string v2, "autoreplaysms"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    const/16 v1, 0x5001

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->setResult(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/g;->a:Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMAutoReplyActivity;->finish()V

    return-void
.end method
