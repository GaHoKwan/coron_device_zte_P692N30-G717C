.class public Lcom/zte/zdm/application/mmi/FeedbackNewActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/app/Activity;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    new-instance v0, Lcom/zte/zdm/application/mmi/be;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/be;-><init>(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/zte/zdm/application/mmi/bf;

    invoke-direct {v0, p0}, Lcom/zte/zdm/application/mmi/bf;-><init>(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)V

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->g:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->g:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/zte/zdm/application/mmi/FeedbackNewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->g:Landroid/app/Activity;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v1, Lcom/zte/zdm/application/mmi/af;

    invoke-direct {v1, p0}, Lcom/zte/zdm/application/mmi/af;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/zte/zdm/application/mmi/af;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->d:Landroid/widget/Button;

    const v0, 0x7f0d001f

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->g:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    sget-object v1, Lcom/zte/zdm/c/b;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/zdm/application/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emailContent===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->d:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/FeedbackNewActivity;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
