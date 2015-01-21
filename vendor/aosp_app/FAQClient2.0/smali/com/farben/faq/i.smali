.class final Lcom/farben/faq/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/farben/faq/DownloadInfoAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/DownloadInfoAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->g:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-static {v1}, Lcom/farben/faq/DownloadInfoAct;->a(Lcom/farben/faq/DownloadInfoAct;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-static {v0, v2}, Lcom/farben/faq/DownloadInfoAct;->a(Lcom/farben/faq/DownloadInfoAct;Z)V

    iget-object v0, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-static {v0}, Lcom/farben/faq/DownloadInfoAct;->b(Lcom/farben/faq/DownloadInfoAct;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "update_download_restar"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/farben/faq/DownloadInfoAct;->a(Lcom/farben/faq/DownloadInfoAct;Z)V

    iget-object v0, p0, Lcom/farben/faq/i;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-static {v0}, Lcom/farben/faq/DownloadInfoAct;->b(Lcom/farben/faq/DownloadInfoAct;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "update_download_pause"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
