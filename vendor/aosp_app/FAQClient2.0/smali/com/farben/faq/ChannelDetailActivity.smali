.class public Lcom/farben/faq/ChannelDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/ProgressDialog;

.field private e:Lcom/farben/faq/c/c;

.field private f:Lcom/farben/faq/b/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->d:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/farben/faq/ChannelDetailActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const-string v0, "common_answer"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Lcom/farben/faq/c/c;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->e:Lcom/farben/faq/c/c;

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lcom/farben/faq/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->a:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "common_return"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/a;

    invoke-direct {v1, p0}, Lcom/farben/faq/a;-><init>(Lcom/farben/faq/ChannelDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/farben/faq/ChannelDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "detail_channel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/b;

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->f:Lcom/farben/faq/b/b;

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->f:Lcom/farben/faq/b/b;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->d:Landroid/app/ProgressDialog;

    const-string v1, "common_loading"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f080004

    invoke-virtual {p0, v0}, Lcom/farben/faq/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/farben/faq/ChannelDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->f:Lcom/farben/faq/b/b;

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/ChannelDetailActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->f:Lcom/farben/faq/b/b;

    invoke-virtual {v0}, Lcom/farben/faq/b/b;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/farben/faq/ChannelDetailActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->d:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/farben/faq/ChannelDetailActivity;->c:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080022

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "common_ok"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080021

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "common_nodata"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/Dialog;

    const/high16 v3, 0x7f06

    invoke-direct {v1, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/farben/faq/b;

    invoke-direct {v2, p0, v1}, Lcom/farben/faq/b;-><init>(Lcom/farben/faq/ChannelDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, Lcom/farben/faq/common/a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1, p0}, Lcom/farben/faq/common/a;->a(Landroid/view/MenuItem;Landroid/content/Context;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
