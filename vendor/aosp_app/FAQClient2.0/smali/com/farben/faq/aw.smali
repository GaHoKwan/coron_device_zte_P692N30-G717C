.class final Lcom/farben/faq/aw;
.super Landroid/os/AsyncTask;


# instance fields
.field a:Ljava/util/List;

.field final synthetic b:Lcom/farben/faq/TypeListAct;


# direct methods
.method constructor <init>(Lcom/farben/faq/TypeListAct;)V
    .locals 1

    iput-object p1, p0, Lcom/farben/faq/aw;->b:Lcom/farben/faq/TypeListAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/farben/faq/aw;->a:Ljava/util/List;

    return-void
.end method

.method private varargs a()Ljava/lang/Boolean;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/farben/faq/c/a;

    iget-object v1, p0, Lcom/farben/faq/aw;->b:Lcom/farben/faq/TypeListAct;

    invoke-direct {v0, v1}, Lcom/farben/faq/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/farben/faq/c/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/farben/faq/aw;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/farben/faq/aw;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/aw;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LoadFAQType"

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

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/farben/faq/aw;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/farben/faq/aw;->b:Lcom/farben/faq/TypeListAct;

    invoke-static {v0}, Lcom/farben/faq/TypeListAct;->a(Lcom/farben/faq/TypeListAct;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/farben/faq/a/g;

    iget-object v2, p0, Lcom/farben/faq/aw;->b:Lcom/farben/faq/TypeListAct;

    iget-object v3, p0, Lcom/farben/faq/aw;->a:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/farben/faq/a/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    return-void
.end method
