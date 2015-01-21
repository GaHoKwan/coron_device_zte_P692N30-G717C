.class public Lcom/farben/faq/FavoritesActivity;
.super Landroid/app/Activity;


# static fields
.field public static k:Landroid/os/Handler;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/ListView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Lcom/farben/faq/c/c;

.field g:Landroid/app/ProgressDialog;

.field h:Ljava/util/List;

.field i:Lcom/farben/faq/a/b;

.field j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/farben/faq/FavoritesActivity;->k:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/farben/faq/FavoritesActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/farben/faq/FavoritesActivity;)Z
    .locals 2

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farben/faq/b/c;

    invoke-virtual {v0}, Lcom/farben/faq/b/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/16 v3, 0x10

    const/16 v2, 0xc

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/farben/faq/common/a;->d(Landroid/app/Activity;)V

    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080093

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->a:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/farben/faq/FavoritesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->b:Landroid/widget/TextView;

    const-string v1, "common_kindlyreminder"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->b:Landroid/widget/TextView;

    invoke-static {v3}, Lcom/farben/faq/a/e;->a(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->d:Landroid/widget/TextView;

    const-string v1, "store_delselect"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_selectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->g:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->g:Landroid/app/ProgressDialog;

    const-string v1, "common_loading"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/farben/faq/ac;

    invoke-direct {v0, p0}, Lcom/farben/faq/ac;-><init>(Lcom/farben/faq/FavoritesActivity;)V

    sput-object v0, Lcom/farben/faq/FavoritesActivity;->k:Landroid/os/Handler;

    new-instance v0, Lcom/farben/faq/c/c;

    invoke-direct {v0, p0}, Lcom/farben/faq/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->f:Lcom/farben/faq/c/c;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/ab;

    invoke-direct {v1, p0}, Lcom/farben/faq/ab;-><init>(Lcom/farben/faq/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->g:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    iput-object v1, p0, Lcom/farben/faq/FavoritesActivity;->i:Lcom/farben/faq/a/b;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/farben/faq/FavoritesActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "common_store"

    invoke-static {p0, v0}, Lcom/farben/faq/common/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/farben/faq/FavoritesActivity;->j:Z

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->e:Landroid/widget/TextView;

    const-string v1, "store_selectall"

    invoke-static {v1}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->f:Lcom/farben/faq/c/c;

    invoke-virtual {v0}, Lcom/farben/faq/c/c;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v0, Lcom/farben/faq/a/b;

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/farben/faq/a/b;-><init>(Landroid/content/Context;Ljava/util/List;B)V

    iput-object v0, p0, Lcom/farben/faq/FavoritesActivity;->i:Lcom/farben/faq/a/b;

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->i:Lcom/farben/faq/a/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/farben/faq/ad;

    invoke-direct {v1, p0}, Lcom/farben/faq/ad;-><init>(Lcom/farben/faq/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/farben/faq/ae;

    invoke-direct {v1, p0}, Lcom/farben/faq/ae;-><init>(Lcom/farben/faq/FavoritesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void

    :cond_1
    const-string v0, "store_nostore"

    invoke-static {v0}, Lcom/farben/faq/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/farben/faq/FavoritesActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/farben/faq/FavoritesActivity;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method
