.class final Lzte/com/cn/driverMode/ui/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const-string v0, "DMHomeActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "voiceButtonListener---onClick, asrstate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget v2, v2, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->I:Lzte/com/cn/driverMode/ui/aw;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/aw;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x4501

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMHomeActivity;->I:Lzte/com/cn/driverMode/ui/aw;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lzte/com/cn/driverMode/ui/aw;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    if-nez v0, :cond_1

    const-string v0, "DMHomeActivity"

    const-string v1, "asrstate == STATE_WAKEUP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v0, v5, v4}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(Lzte/com/cn/driverMode/ui/DMHomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "<html><body>\u8bf7\u5728 \"<font color=#eb6307>\u53ee\u549a</font>\"\u540e\uff0c\u518d\u8bf4\u8bed\u97f3\u6307\u4ee4 </body></html>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->F:I

    if-ne v0, v5, :cond_0

    const-string v0, "DMHomeActivity"

    const-string v1, "send zte.com.cn.driverMode.StopRecognize!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iput-boolean v4, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->H:Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->j:Landroid/widget/ImageView;

    const v1, 0x7f0200c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->k:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.com.cn.driverMode.StopRecognize"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/be;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/DMHomeActivity;->h:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
