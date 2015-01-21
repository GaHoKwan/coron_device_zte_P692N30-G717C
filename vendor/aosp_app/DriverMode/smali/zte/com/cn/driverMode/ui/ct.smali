.class final Lzte/com/cn/driverMode/ui/ct;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnDelete--onClick---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    return-void
.end method

.method protected final a(ILzte/com/cn/driverMode/ui/cz;)V
    .locals 10

    const v9, 0x7f08034f

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnPause--onClick---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->a(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->b(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "DMPoiDownloadActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "btnPause--onClick---percent="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v5}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    invoke-virtual {v3, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v3, p2, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v3, Lzte/com/cn/driverMode/ui/cs;

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {v3, v4}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, v3, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v5, v3, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-static {v4, v5}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v5}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v8, v3, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v8, v3, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v3, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v6, v3, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v6, v3, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v6, v3, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v7, v3, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v7, v3, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/cr;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    return-void
.end method

.method protected final b(I)V
    .locals 10

    const v9, 0x7f08034d

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnUpdate--onClick---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-virtual {v0, v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "btnUpdate--onClick---network is not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "btnUpdate--onClick---mobile data is available!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0, v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->h(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->p(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    const v0, 0x7f0b00a4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0b00a6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00b0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0b00a9

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    const v2, 0x7f0b00aa

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    const v5, 0x7f0b00a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_3
    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnUpdate--onClick---curProvince="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v4, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v2, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v8, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v6, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v6, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v7, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "btnUpdate--onClick---indexAll="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/cr;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method protected final b(ILzte/com/cn/driverMode/ui/cz;)V
    .locals 8

    const v7, 0x7f08034d

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "btnContinue--onClick---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->l(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "DMPoiDownloadActivity"

    const-string v1, "btnContinue--onClick---network is not available!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->m(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->n(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DMPoiDownloadActivity"

    const-string v2, "btnContinue--onClick---mobile data is available!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->o(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v1, v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p2, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    new-instance v1, Lzte/com/cn/driverMode/ui/cs;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/ui/cs;-><init>(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)V

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    iget-object v3, v1, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->c(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    iput v6, v1, Lzte/com/cn/driverMode/ui/cs;->d:I

    iput v4, v1, Lzte/com/cn/driverMode/ui/cs;->e:I

    iput v6, v1, Lzte/com/cn/driverMode/ui/cs;->f:I

    iput v4, v1, Lzte/com/cn/driverMode/ui/cs;->g:I

    iput-boolean v4, v1, Lzte/com/cn/driverMode/ui/cs;->i:Z

    iput-boolean v5, v1, Lzte/com/cn/driverMode/ui/cs;->j:Z

    iput-boolean v4, v1, Lzte/com/cn/driverMode/ui/cs;->k:Z

    iput-boolean v5, v1, Lzte/com/cn/driverMode/ui/cs;->l:Z

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->d(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->f(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->k(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Lzte/com/cn/driverMode/ui/cr;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/cr;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const-string v0, "DMPoiDownloadActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getView---position="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->e(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lzte/com/cn/driverMode/ui/cz;

    invoke-direct {v1}, Lzte/com/cn/driverMode/ui/cz;-><init>()V

    const v0, 0x7f0b00a4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->a:Landroid/widget/TextView;

    const v0, 0x7f0b00a5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->b:Landroid/widget/TextView;

    const v0, 0x7f0b00a6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    const v0, 0x7f0b00aa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    const v0, 0x7f0b00a8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    const v0, 0x7f0b00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->g:Landroid/widget/ImageButton;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getView---mDownloadedProvinceList="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v4}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->g(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "DMPoiDownloadActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getView---statusMapDownloaded.size()="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v3}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "getView---statusMapDownloaded.get(position).provice="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DMPoiDownloadActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "getView---statusMapDownloaded.get(position).size="

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/cs;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget v0, v0, Lzte/com/cn/driverMode/ui/cs;->e:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget v0, v0, Lzte/com/cn/driverMode/ui/cs;->f:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget v0, v0, Lzte/com/cn/driverMode/ui/cs;->g:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget v0, v0, Lzte/com/cn/driverMode/ui/cs;->h:I

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->j:Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->k:Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->l:Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, v1, Lzte/com/cn/driverMode/ui/cz;->g:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ct;->a:Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;->j(Lzte/com/cn/driverMode/ui/DMPoiDownloadActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cs;

    iget-boolean v0, v0, Lzte/com/cn/driverMode/ui/cs;->m:Z

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->d:Landroid/widget/ImageButton;

    new-instance v2, Lzte/com/cn/driverMode/ui/cu;

    invoke-direct {v2, p0, p1, v1}, Lzte/com/cn/driverMode/ui/cu;-><init>(Lzte/com/cn/driverMode/ui/ct;ILzte/com/cn/driverMode/ui/cz;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->e:Landroid/widget/ImageButton;

    new-instance v2, Lzte/com/cn/driverMode/ui/cv;

    invoke-direct {v2, p0, p1, v1}, Lzte/com/cn/driverMode/ui/cv;-><init>(Lzte/com/cn/driverMode/ui/ct;ILzte/com/cn/driverMode/ui/cz;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->f:Landroid/widget/ImageButton;

    new-instance v2, Lzte/com/cn/driverMode/ui/cw;

    invoke-direct {v2, p0, p1, v1}, Lzte/com/cn/driverMode/ui/cw;-><init>(Lzte/com/cn/driverMode/ui/ct;ILzte/com/cn/driverMode/ui/cz;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lzte/com/cn/driverMode/ui/cz;->g:Landroid/widget/ImageButton;

    new-instance v2, Lzte/com/cn/driverMode/ui/cx;

    invoke-direct {v2, p0, p1, v1}, Lzte/com/cn/driverMode/ui/cx;-><init>(Lzte/com/cn/driverMode/ui/ct;ILzte/com/cn/driverMode/ui/cz;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/cz;

    move-object v1, v0

    goto/16 :goto_0
.end method
