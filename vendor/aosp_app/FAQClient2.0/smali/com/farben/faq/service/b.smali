.class final Lcom/farben/faq/service/b;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/farben/faq/service/FAQUpdateService;


# direct methods
.method private constructor <init>(Lcom/farben/faq/service/FAQUpdateService;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/farben/faq/service/FAQUpdateService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/service/b;-><init>(Lcom/farben/faq/service/FAQUpdateService;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v4, 0x3e9

    const/4 v3, 0x3

    const/4 v2, 0x2

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

    sget-object v1, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    aget v2, v0, v2

    float-to-int v2, v2

    aget v3, v0, v3

    float-to-int v3, v3

    const/4 v4, 0x0

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;IIF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    sget v1, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sget v2, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sget v3, Lcom/farben/faq/service/FAQUpdateService;->e:F

    invoke-static {v0, v1, v2, v3}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;IIF)V

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/farben/faq/common/g;->a:Ljava/lang/String;

    const-string v2, "ztefaq/software/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "faqclient.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v1}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/b/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farben/faq/b/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/farben/faq/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    const-string v1, "update_checkfailed"

    invoke-static {v0, v1}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/farben/faq/common/g;->a:Ljava/lang/String;

    const-string v2, "ztefaq/software/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "faqclient.apk"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v1}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;)Lcom/farben/faq/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/farben/faq/e/a;->a()V

    iget-object v1, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    invoke-static {v1, v0}, Lcom/farben/faq/service/FAQUpdateService;->b(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    const-string v1, "update_downloadfailed"

    invoke-static {v0, v1}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/farben/faq/service/FAQUpdateService;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_4
    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcom/farben/faq/service/b;->a:Lcom/farben/faq/service/FAQUpdateService;

    const-string v1, "common_connecttimeout"

    invoke-static {v0, v1}, Lcom/farben/faq/service/FAQUpdateService;->a(Lcom/farben/faq/service/FAQUpdateService;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
