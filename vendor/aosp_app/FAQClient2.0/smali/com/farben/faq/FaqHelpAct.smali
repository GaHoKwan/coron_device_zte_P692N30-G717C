.class public Lcom/farben/faq/FaqHelpAct;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/ProgressDialog;

.field private e:Lcom/farben/faq/b/f;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    new-instance v0, Lcom/farben/faq/u;

    invoke-direct {v0, p0}, Lcom/farben/faq/u;-><init>(Lcom/farben/faq/FaqHelpAct;)V

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/FaqHelpAct;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->d:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic b(Lcom/farben/faq/FaqHelpAct;)V
    .locals 5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08001e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "common_replay"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08001f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f08001d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "common_connecttimeout"

    invoke-static {v4}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/Dialog;

    const/high16 v4, 0x7f06

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/farben/faq/y;

    invoke-direct {v3, p0, v2}, Lcom/farben/faq/y;-><init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/z;

    invoke-direct {v0, p0, v2}, Lcom/farben/faq/z;-><init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic c(Lcom/farben/faq/FaqHelpAct;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/farben/faq/FaqHelpAct;)V
    .locals 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :try_start_0
    new-instance v1, Lcom/farben/faq/c/c;

    invoke-direct {v1, p0}, Lcom/farben/faq/c/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/farben/faq/c/c;->b()Lcom/farben/faq/b/f;

    move-result-object v2

    iput-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    iget-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/farben/faq/common/e;->d(Landroid/app/Activity;)Lcom/farben/faq/b/f;

    move-result-object v2

    iput-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    iget-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v2, v0}, Lcom/farben/faq/b/f;->b(I)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v0}, Lcom/farben/faq/b/f;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->a(Lcom/farben/faq/b/f;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v2}, Lcom/farben/faq/b/f;->c()I

    move-result v2

    if-le v0, v2, :cond_0

    invoke-static {p0}, Lcom/farben/faq/common/e;->d(Landroid/app/Activity;)Lcom/farben/faq/b/f;

    move-result-object v2

    iput-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    iget-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v2, v0}, Lcom/farben/faq/b/f;->b(I)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->b(Lcom/farben/faq/b/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "LoadFAQHelp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->f:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method


# virtual methods
.method protected final a()V
    .locals 5

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v1}, Lcom/farben/faq/b/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/farben/faq/FaqHelpAct;->e:Lcom/farben/faq/b/f;

    invoke-virtual {v2}, Lcom/farben/faq/b/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "common_softversion"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/farben/faq/FaqHelpAct;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f08001e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "common_replay"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f08001f

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "common_return"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08001d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "common_nodata"

    invoke-static {v4}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/Dialog;

    const/high16 v4, 0x7f06

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/farben/faq/w;

    invoke-direct {v3, p0, v2}, Lcom/farben/faq/w;-><init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/x;

    invoke-direct {v0, p0, v2}, Lcom/farben/faq/x;-><init>(Lcom/farben/faq/FaqHelpAct;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v2, 0xe

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/farben/faq/FaqHelpAct;->setContentView(I)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->d:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->d:Landroid/app/ProgressDialog;

    const-string v1, "common_loading"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f080048

    invoke-virtual {p0, v0}, Lcom/farben/faq/FaqHelpAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "common_help"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08004b

    invoke-virtual {p0, v0}, Lcom/farben/faq/FaqHelpAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->b:Landroid/widget/TextView;

    const v0, 0x7f08004d

    invoke-virtual {p0, v0}, Lcom/farben/faq/FaqHelpAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->b:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->c:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08004e

    invoke-virtual {p0, v0}, Lcom/farben/faq/FaqHelpAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FaqHelpAct;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->a:Landroid/widget/TextView;

    const-string v1, "common_return"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->a:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/v;

    invoke-direct {v1, p0}, Lcom/farben/faq/v;-><init>(Lcom/farben/faq/FaqHelpAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/FaqHelpAct;->b:Landroid/widget/TextView;

    const-string v1, "help_title"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "help_content"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HHF"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n\n\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "common_softversion"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/farben/faq/FaqHelpAct;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HELP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/farben/faq/FaqHelpAct;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
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
