.class Lcom/powermo/SmartBar/y;
.super Lcom/powermo/SmartBar/aa;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/AppListEditorActivity;

.field private b:Lcom/powermo/SmartBar/ab;

.field private c:Lcom/powermo/SmartBar/ab;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/AppListEditorActivity;Landroid/content/Context;Lcom/powermo/SmartBar/c;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/powermo/SmartBar/aa;-><init>(Landroid/content/Context;Lcom/powermo/SmartBar/c;Z)V

    iput-object v1, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    iput-object v1, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    return-void
.end method

.method private a(Lcom/powermo/SmartBar/ab;)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ab;->a(Z)V

    return-void
.end method

.method private a(Lcom/powermo/SmartBar/ab;Z)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/powermo/SmartBar/ab;->a(ZZ)V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ab;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/ab;->a(ZZ)V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    invoke-virtual {v0, v2, v2}, Lcom/powermo/SmartBar/ab;->a(ZZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-super {p0}, Lcom/powermo/SmartBar/aa;->a()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->c(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method public a(IIZIII)V
    .locals 2

    invoke-super/range {p0 .. p6}, Lcom/powermo/SmartBar/aa;->a(IIZIII)V

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->c(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x3e4ccccd

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->c(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    if-ltz p4, :cond_4

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->d(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/DragGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->d(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/DragGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powermo/SmartBar/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p4, v1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ab;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->b:Lcom/powermo/SmartBar/ab;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/y;->a(Lcom/powermo/SmartBar/ab;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->d(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/DragGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->d(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/DragGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/powermo/SmartBar/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p5, v1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    if-ltz p5, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ab;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/y;->a(Lcom/powermo/SmartBar/ab;Z)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    goto :goto_0

    :cond_6
    if-ltz p6, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ab;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->c:Lcom/powermo/SmartBar/ab;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/y;->a(Lcom/powermo/SmartBar/ab;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    goto/16 :goto_0
.end method

.method public b(IIZIII)V
    .locals 6

    const/4 v5, 0x0

    invoke-super/range {p0 .. p6}, Lcom/powermo/SmartBar/aa;->b(IIZIII)V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->c(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->f()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/y;->g()V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/y;->d()I

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/powermo/SmartBar/c;->b(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p4, :cond_4

    invoke-virtual {p0}, Lcom/powermo/SmartBar/y;->c()Lcom/powermo/SmartBar/k;

    move-result-object v0

    invoke-virtual {p0, p4}, Lcom/powermo/SmartBar/y;->a(I)Lcom/powermo/SmartBar/k;

    move-result-object v2

    invoke-virtual {v0}, Lcom/powermo/SmartBar/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/powermo/SmartBar/k;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/k;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/powermo/SmartBar/k;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0, v2}, Lcom/powermo/SmartBar/c;->a(Lcom/powermo/SmartBar/k;Lcom/powermo/SmartBar/k;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2}, Lcom/powermo/SmartBar/c;->b(Lcom/powermo/SmartBar/k;Lcom/powermo/SmartBar/k;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    const-string v3, ""

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/powermo/SmartBar/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/powermo/SmartBar/k;

    move-result-object v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    const v1, 0x7f050018

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    const v1, 0x7f050017

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/powermo/SmartBar/y;->d()I

    move-result v0

    if-ltz p5, :cond_6

    if-gt v0, p5, :cond_5

    iget-object v1, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v1

    invoke-virtual {v1, v0, p5}, Lcom/powermo/SmartBar/c;->a(II)V

    :goto_2
    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v1

    add-int/lit8 v2, p5, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/powermo/SmartBar/c;->a(II)V

    goto :goto_2

    :cond_6
    if-ltz p6, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/y;->d()I

    move-result v1

    invoke-virtual {v0, v1, p6}, Lcom/powermo/SmartBar/c;->a(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/y;->a:Lcom/powermo/SmartBar/AppListEditorActivity;

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
