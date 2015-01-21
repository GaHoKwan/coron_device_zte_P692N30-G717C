.class public Lcom/farben/faq/DownloadInfoAct;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/text/DecimalFormat;


# instance fields
.field private c:Lcom/farben/faq/j;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Z

.field private j:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/farben/faq/DownloadInfoAct;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/farben/faq/DownloadInfoAct;->a:Ljava/lang/String;

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/farben/faq/DownloadInfoAct;->b:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->c:Lcom/farben/faq/j;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    return-void
.end method

.method private a(IIF)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->e:Landroid/widget/TextView;

    const-string v2, "faqclient.apk"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "download size:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/farben/faq/DownloadInfoAct;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/farben/faq/DownloadInfoAct;->d:Landroid/widget/ProgressBar;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v2, p0, Lcom/farben/faq/DownloadInfoAct;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/farben/faq/DownloadInfoAct;->b:Ljava/text/DecimalFormat;

    float-to-double v3, p3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "kb/s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-long v0, p1

    invoke-static {p0, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {p0, v1, v2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/farben/faq/DownloadInfoAct;->h:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    int-to-float v0, p1

    int-to-float v2, p2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c8

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/farben/faq/DownloadInfoAct;IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/farben/faq/DownloadInfoAct;->a(IIF)V

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/DownloadInfoAct;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/DownloadInfoAct;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/farben/faq/DownloadInfoAct;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0x7f080030

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f080087

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->d:Landroid/widget/ProgressBar;

    const v0, 0x7f080085

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->e:Landroid/widget/TextView;

    const v0, 0x7f080086

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->f:Landroid/widget/TextView;

    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->g:Landroid/widget/TextView;

    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->h:Landroid/widget/TextView;

    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "update_download_info"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "common_return"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v3}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/h;

    invoke-direct {v1, p0}, Lcom/farben/faq/h;-><init>(Lcom/farben/faq/DownloadInfoAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08002f

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    sget-boolean v0, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    const-string v1, "update_download_restar"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    :goto_0
    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    const-string v1, "update_download_pause"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    new-instance v1, Lcom/farben/faq/i;

    invoke-direct {v1, p0}, Lcom/farben/faq/i;-><init>(Lcom/farben/faq/DownloadInfoAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/j;

    invoke-direct {v0, p0, v2}, Lcom/farben/faq/j;-><init>(Lcom/farben/faq/DownloadInfoAct;B)V

    iput-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->c:Lcom/farben/faq/j;

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->c:Lcom/farben/faq/j;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.farben.faq.service.FAQ_BROADCAST"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/farben/faq/DownloadInfoAct;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    const-string v1, "update_download_pause"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-static {p1}, Lcom/farben/faq/common/a;->a(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->c:Lcom/farben/faq/j;

    invoke-virtual {p0, v0}, Lcom/farben/faq/DownloadInfoAct;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1, p0}, Lcom/farben/faq/common/a;->a(Landroid/view/MenuItem;Landroid/content/Context;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 3

    sget v0, Lcom/farben/faq/service/FAQUpdateService;->c:I

    sget v1, Lcom/farben/faq/service/FAQUpdateService;->d:I

    sget v2, Lcom/farben/faq/service/FAQUpdateService;->e:F

    invoke-direct {p0, v0, v1, v2}, Lcom/farben/faq/DownloadInfoAct;->a(IIF)V

    iget-boolean v0, p0, Lcom/farben/faq/DownloadInfoAct;->i:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/farben/faq/service/FAQUpdateService;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/DownloadInfoAct;->j:Landroid/widget/Button;

    const-string v1, "update_download_restar"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
