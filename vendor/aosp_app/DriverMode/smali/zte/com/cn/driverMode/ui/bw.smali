.class final Lzte/com/cn/driverMode/ui/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMMusicActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMMusicActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f0800de

    const v2, 0x7f02009a

    const/4 v3, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->n()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->i:Landroid/widget/ImageButton;

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v1, v4}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0, v3}, Lzte/com/cn/driverMode/service/DMMusicService;->c(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->n()I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->d(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/service/by;

    move-result-object v1

    const-string v2, "music_mode"

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    const-string v1, "DMMusicActiviyt"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setIntValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "DMMusicActiviyt"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getIntValue:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->d(Lzte/com/cn/driverMode/ui/DMMusicActivity;)Lzte/com/cn/driverMode/service/by;

    move-result-object v2

    const-string v3, "music_mode"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->n()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    const v2, 0x7f0800df

    invoke-virtual {v1, v2}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->w:Lzte/com/cn/driverMode/service/DMMusicService;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/service/DMMusicService;->n()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    invoke-virtual {v1, v4}, Lzte/com/cn/driverMode/ui/DMMusicActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/bw;->a:Lzte/com/cn/driverMode/ui/DMMusicActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMMusicActivity;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1
.end method
