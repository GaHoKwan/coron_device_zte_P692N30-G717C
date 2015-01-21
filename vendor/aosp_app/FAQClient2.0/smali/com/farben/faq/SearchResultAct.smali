.class public Lcom/farben/faq/SearchResultAct;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ListView;

.field private e:Ljava/lang/String;

.field private f:Lcom/farben/faq/c/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->b:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->f:Lcom/farben/faq/c/d;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/farben/faq/SearchResultAct;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->f:Lcom/farben/faq/c/d;

    invoke-virtual {v1, v0}, Lcom/farben/faq/c/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    new-instance v3, Lcom/farben/faq/a/f;

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/farben/faq/a/f;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;B)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/farben/faq/c/e;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/farben/faq/c/e;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    move v1, v2

    :goto_0
    new-array v3, v1, [Ljava/lang/String;

    aput-object p1, v3, v4

    if-eqz v5, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-virtual {v0}, Lcom/farben/faq/b/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v4

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_2
    add-int/lit8 v0, v1, -0x1

    if-lt v2, v0, :cond_3

    :cond_2
    move-object v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v2, 0x1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/g;

    invoke-virtual {v0}, Lcom/farben/faq/b/g;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08008d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    invoke-static {p0}, Lcom/farben/faq/common/a;->c(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "search_errormsg"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "keyArray"

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/farben/faq/common/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchResultAct;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    new-instance v2, Lcom/farben/faq/a/f;

    iget-object v3, p0, Lcom/farben/faq/SearchResultAct;->e:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/farben/faq/SearchResultAct;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v3}, Lcom/farben/faq/a/f;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_2
    const-string v0, "common_nodata"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchResultAct;->setContentView(I)V

    const-string v0, "common_search"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchResultAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->a:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchResultAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->b:Landroid/widget/EditText;

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchResultAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/farben/faq/SearchResultAct;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->c:Landroid/widget/TextView;

    new-instance v0, Lcom/farben/faq/c/d;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/SearchResultAct;->f:Lcom/farben/faq/c/d;

    iget-object v0, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/farben/faq/as;

    invoke-direct {v1, p0}, Lcom/farben/faq/as;-><init>(Lcom/farben/faq/SearchResultAct;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/farben/faq/SearchResultAct;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "KEY_WORLD"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/farben/faq/SearchResultAct;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchResultAct;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/farben/faq/SearchResultAct;->d:Landroid/widget/ListView;

    new-instance v3, Lcom/farben/faq/a/f;

    invoke-direct {p0, v0}, Lcom/farben/faq/SearchResultAct;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v0, v4}, Lcom/farben/faq/a/f;-><init>(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;B)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
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
