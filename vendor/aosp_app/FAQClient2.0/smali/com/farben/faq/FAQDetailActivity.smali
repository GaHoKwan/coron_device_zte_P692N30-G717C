.class public Lcom/farben/faq/FAQDetailActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:I

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/farben/faq/c/c;

.field private k:Landroid/app/Dialog;

.field private l:Z

.field private m:Lcom/farben/faq/b/c;

.field private n:Landroid/os/Handler;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v1, p0, Lcom/farben/faq/FAQDetailActivity;->b:I

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/farben/faq/FAQDetailActivity;->l:Z

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    new-instance v0, Lcom/farben/faq/k;

    invoke-direct {v0, p0}, Lcom/farben/faq/k;-><init>(Lcom/farben/faq/FAQDetailActivity;)V

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->n:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->k:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 3

    iget-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/Dialog;

    const/high16 v1, 0x7f06

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->k:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/farben/faq/FAQDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080063

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, "common_loading"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->k:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/farben/faq/FAQDetailActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/farben/faq/FAQDetailActivity;->l:Z

    return-void
.end method

.method private b()V
    .locals 5

    iget-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->a()V

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

    const-string v2, "common_cancel"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08001c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "common_kindlyreminder"

    invoke-static {v4}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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

    new-instance v3, Lcom/farben/faq/p;

    invoke-direct {v3, p0, v2}, Lcom/farben/faq/p;-><init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/q;

    invoke-direct {v0, p0, v2}, Lcom/farben/faq/q;-><init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->i:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->b()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->b()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 6

    iget-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->a()V

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

    const-string v2, "common_cancel"

    invoke-static {v2}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08001c

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v4, "common_kindlyreminder"

    invoke-static {v4}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f08001d

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "welcome_dataupdateerrormsg"

    invoke-static {v5}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "common_connecttimeout"

    invoke-static {v5}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/app/Dialog;

    const/high16 v4, 0x7f06

    invoke-direct {v2, p0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    new-instance v3, Lcom/farben/faq/r;

    invoke-direct {v3, p0, v2}, Lcom/farben/faq/r;-><init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/farben/faq/s;

    invoke-direct {v0, p0, v2}, Lcom/farben/faq/s;-><init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    invoke-virtual {v1}, Lcom/farben/faq/b/c;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic d(Lcom/farben/faq/FAQDetailActivity;)Lcom/farben/faq/b/c;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    return-object v0
.end method

.method static synthetic e(Lcom/farben/faq/FAQDetailActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->a()V

    return-void
.end method

.method static synthetic g(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 4

    iget-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    if-nez v0, :cond_0

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

    const v1, 0x7f080020

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "common_kindlyreminder"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f080021

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v3, "common_neterror"

    invoke-static {v3}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "common_ok"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/Dialog;

    const/high16 v3, 0x7f06

    invoke-direct {v1, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    new-instance v2, Lcom/farben/faq/o;

    invoke-direct {v2, p0, v1}, Lcom/farben/faq/o;-><init>(Lcom/farben/faq/FAQDetailActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/farben/faq/FAQDetailActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lcom/farben/faq/FAQDetailActivity;)V
    .locals 5

    invoke-virtual {p0}, Lcom/farben/faq/FAQDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faqid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/farben/faq/c/d;

    invoke-direct {v2, p0}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/farben/faq/common/a;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Ljava/lang/String;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/farben/faq/common/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Ljava/lang/String;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->n:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/farben/faq/FAQDetailActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/farben/faq/common/h;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Ljava/lang/String;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->n:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-static {v1, p0}, Lcom/farben/faq/common/e;->a(ILandroid/app/Activity;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Lcom/farben/faq/b/c;)V

    sget-object v0, Lcom/farben/faq/common/a;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Ljava/lang/String;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;

    goto :goto_0

    :cond_4
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/farben/faq/c/d;->a(Ljava/lang/String;)Lcom/farben/faq/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->m:Lcom/farben/faq/b/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/farben/faq/FAQDetailActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->l:Z

    return v0
.end method

.method static synthetic k(Lcom/farben/faq/FAQDetailActivity;)Lcom/farben/faq/c/c;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->j:Lcom/farben/faq/c/c;

    return-object v0
.end method

.method static synthetic l(Lcom/farben/faq/FAQDetailActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic m(Lcom/farben/faq/FAQDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/farben/faq/FAQDetailActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/farben/faq/FAQDetailActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic p(Lcom/farben/faq/FAQDetailActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/farben/faq/FAQDetailActivity;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x1f4

    const/16 v5, 0x32

    const/16 v4, 0xc

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "info_store"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->e:Ljava/lang/String;

    const-string v0, "store_cancel"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->f:Ljava/lang/String;

    const-string v0, "info_usefultome"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->g:Ljava/lang/String;

    sget v0, Lcom/farben/faq/common/d;->a:I

    if-gt v0, v6, :cond_2

    const v0, 0x3ebd70a4

    sget v1, Lcom/farben/faq/common/d;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/farben/faq/FAQDetailActivity;->b:I

    :goto_0
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->setContentView(I)V

    new-instance v0, Lcom/farben/faq/c/c;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->j:Lcom/farben/faq/c/c;

    const v0, 0x7f080056

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->a:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->a:Landroid/widget/TextView;

    const-string v1, "common_return"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/l;

    invoke-direct {v1, p0}, Lcom/farben/faq/l;-><init>(Lcom/farben/faq/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    iget v1, p0, Lcom/farben/faq/FAQDetailActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    invoke-static {v4}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/farben/faq/m;

    invoke-direct {v1, p0}, Lcom/farben/faq/m;-><init>(Lcom/farben/faq/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080054

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    iget v1, p0, Lcom/farben/faq/FAQDetailActivity;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setWidth(I)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    invoke-static {v4}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/farben/faq/n;

    invoke-direct {v1, p0}, Lcom/farben/faq/n;-><init>(Lcom/farben/faq/FAQDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/farben/faq/common/d;->a:I

    if-le v0, v6, :cond_0

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    invoke-virtual {v0, v5, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    :cond_0
    const v0, 0x7f080035

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->h:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/farben/faq/FAQDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faqTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v0, 0x7f080055

    invoke-virtual {p0, v0}, Lcom/farben/faq/FAQDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "common_answer"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/farben/faq/FAQDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "faqid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->j:Lcom/farben/faq/c/c;

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->e(I)I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/farben/faq/FAQDetailActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/farben/faq/FAQDetailActivity;->l:Z

    :goto_1
    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->j:Lcom/farben/faq/c/c;

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/c;->c(I)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_2
    new-instance v0, Lcom/farben/faq/t;

    invoke-direct {v0, p0}, Lcom/farben/faq/t;-><init>(Lcom/farben/faq/FAQDetailActivity;)V

    invoke-virtual {v0}, Lcom/farben/faq/t;->start()V

    return-void

    :cond_2
    const/16 v0, 0xc8

    iput v0, p0, Lcom/farben/faq/FAQDetailActivity;->b:I

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/farben/faq/FAQDetailActivity;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/farben/faq/FAQDetailActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/farben/faq/FAQDetailActivity;->l:Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/farben/faq/FAQDetailActivity;->d:Landroid/widget/Button;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

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

.method protected onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/FAQDetailActivity;->o:Z

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
