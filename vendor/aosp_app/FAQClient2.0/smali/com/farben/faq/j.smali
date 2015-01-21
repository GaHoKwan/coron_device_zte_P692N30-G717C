.class final Lcom/farben/faq/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/farben/faq/DownloadInfoAct;


# direct methods
.method private constructor <init>(Lcom/farben/faq/DownloadInfoAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/j;->a:Lcom/farben/faq/DownloadInfoAct;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/farben/faq/DownloadInfoAct;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/j;-><init>(Lcom/farben/faq/DownloadInfoAct;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.farben.faq.service.FAQ_BROADCAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DOWNLOAD_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "DOWNLOAD_STATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DOWNLOAD_INFO"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farben/faq/j;->a:Lcom/farben/faq/DownloadInfoAct;

    const/4 v2, 0x2

    aget v2, v0, v2

    float-to-int v2, v2

    const/4 v3, 0x3

    aget v3, v0, v3

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/farben/faq/DownloadInfoAct;->a(Lcom/farben/faq/DownloadInfoAct;IIF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/j;->a:Lcom/farben/faq/DownloadInfoAct;

    sget v1, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sget v2, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sget v3, Lcom/farben/faq/service/FAQUpdateService;->e:F

    invoke-static {v0, v1, v2, v3}, Lcom/farben/faq/DownloadInfoAct;->a(Lcom/farben/faq/DownloadInfoAct;IIF)V

    goto :goto_0
.end method
