.class public Lcom/zte/zdm/application/mmi/UpdateComplete;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/zte/zdm/application/a;

.field private j:Lcom/zte/zdm/application/b/g;

.field private k:Lcom/zte/zdm/application/a/a;

.field private l:Lcom/zte/zdm/application/activities/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    const-string v0, "123"

    const-string v1, "V"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indexv is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, v4, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "indexs is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v1, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->b()Lcom/zte/zdm/application/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->i:Lcom/zte/zdm/application/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->i:Lcom/zte/zdm/application/a;

    invoke-virtual {v0}, Lcom/zte/zdm/application/a;->a()Lcom/zte/zdm/application/b/g;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->j:Lcom/zte/zdm/application/b/g;

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->k:Lcom/zte/zdm/application/a/a;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->j:Lcom/zte/zdm/application/b/g;

    invoke-virtual {v0}, Lcom/zte/zdm/application/b/g;->b()Lcom/zte/zdm/a/b;

    move-result-object v0

    check-cast v0, Lcom/zte/zdm/application/activities/z;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->l:Lcom/zte/zdm/application/activities/z;

    return-void
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->f:Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/cc;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/cc;-><init>(Lcom/zte/zdm/application/mmi/UpdateComplete;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 1

    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->a:Landroid/widget/TextView;

    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->b:Landroid/widget/TextView;

    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->e:Landroid/widget/TextView;

    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->d:Landroid/widget/TextView;

    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->h:Landroid/widget/LinearLayout;

    return-void
.end method

.method private d()V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->e()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->f()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->g()V

    return-void
.end method

.method private e()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->k:Lcom/zte/zdm/application/a/a;

    const-string v1, "fumo_update_status_code"

    const-string v2, "200"

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "403"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900f6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    const-string v1, "453"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    const-string v1, "450"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_4
    const-string v1, "454"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    const-string v1, "455"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_6
    const-string v1, "452"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_7
    const-string v1, "451"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->c:Landroid/widget/TextView;

    const v1, 0x7f0900fb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private f()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/zte/zdm/mo/DevDetail;

    invoke-direct {v0}, Lcom/zte/zdm/mo/DevDetail;-><init>()V

    invoke-virtual {v0, v3}, Lcom/zte/zdm/mo/DevDetail;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09015d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .locals 3

    invoke-static {p0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const-string v1, "update_releasenotes"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/zte/zdm/application/a/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/UpdateComplete;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030025

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->c()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->d()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/UpdateComplete;->b()V

    return-void
.end method
