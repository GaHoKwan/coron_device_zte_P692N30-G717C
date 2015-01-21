.class public Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/ScrollView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnClickListener;

.field private m:Landroid/view/View$OnClickListener;

.field private n:Landroid/view/View$OnClickListener;

.field private o:Landroid/view/View$OnClickListener;

.field private p:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->a:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->i:Landroid/widget/TextView;

    new-instance v0, Lcom/zte/zdm/application/mmi/bg;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bg;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->j:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bh;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bh;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->k:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bi;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bi;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->l:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bj;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bj;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->m:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bk;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bk;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bl;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bl;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->o:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bm;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bm;-><init>(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->p:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->a:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private a()V
    .locals 3

    const v0, 0x7f0d0044

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090135

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private b()V
    .locals 3

    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090137

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private c()V
    .locals 3

    const v0, 0x7f0d0046

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090139

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private d()V
    .locals 3

    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f09013b

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 3

    const v0, 0x7f0d0050

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090140

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private f()V
    .locals 3

    const v0, 0x7f0d0052

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090141

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->o:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private g()V
    .locals 3

    const v0, 0x7f0d0054

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->h:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090142

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    return-void
.end method

.method private h()V
    .locals 3

    const v0, 0x7f0d0056

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->i:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f090143

    invoke-virtual {p0, v2}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->i:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->i:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->a:Landroid/widget/ScrollView;

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->a()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->b()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->c()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->d()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->e()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->f()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->g()V

    invoke-direct {p0}, Lcom/zte/zdm/application/mmi/FunctionIntroduceActivity;->h()V

    return-void
.end method
