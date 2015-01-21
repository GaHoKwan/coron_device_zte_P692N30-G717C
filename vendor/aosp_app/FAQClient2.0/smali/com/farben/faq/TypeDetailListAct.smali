.class public Lcom/farben/faq/TypeDetailListAct;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/app/ProgressDialog;

.field private c:Lcom/farben/faq/c/d;

.field private d:Ljava/util/List;

.field private e:Lcom/farben/faq/a/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->a:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->c:Lcom/farben/faq/c/d;

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/TypeDetailListAct;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->a:Landroid/widget/ListView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/farben/faq/TypeDetailListAct;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const-string v0, "common_type"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->b:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->b:Landroid/app/ProgressDialog;

    const-string v1, "common_loading"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const v0, 0x7f0800a9

    invoke-virtual {p0, v0}, Lcom/farben/faq/TypeDetailListAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/farben/faq/at;

    invoke-direct {v1, p0}, Lcom/farben/faq/at;-><init>(Lcom/farben/faq/TypeDetailListAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/farben/faq/TypeDetailListAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "classid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0}, Lcom/farben/faq/TypeDetailListAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "className"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    :goto_0
    const v0, 0x7f0800a8

    invoke-virtual {p0, v0}, Lcom/farben/faq/TypeDetailListAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0xe

    invoke-static {v1}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Lcom/farben/faq/c/d;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->c:Lcom/farben/faq/c/d;

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->c:Lcom/farben/faq/c/d;

    invoke-virtual {v0, v2}, Lcom/farben/faq/c/d;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/farben/faq/a/f;

    iget-object v1, p0, Lcom/farben/faq/TypeDetailListAct;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1, v3, v3}, Lcom/farben/faq/a/f;-><init>(Landroid/content/Context;Ljava/util/List;ZB)V

    iput-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->e:Lcom/farben/faq/a/f;

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/farben/faq/TypeDetailListAct;->e:Lcom/farben/faq/a/f;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, ""

    move-object v1, v0

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-static {p1, p0}, Lcom/farben/faq/common/a;->a(Landroid/view/MenuItem;Landroid/content/Context;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->e:Lcom/farben/faq/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/TypeDetailListAct;->e:Lcom/farben/faq/a/f;

    invoke-virtual {v0}, Lcom/farben/faq/a/f;->a()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
