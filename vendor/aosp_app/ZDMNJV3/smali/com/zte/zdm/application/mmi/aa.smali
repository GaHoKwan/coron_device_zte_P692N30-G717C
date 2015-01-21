.class public Lcom/zte/zdm/application/mmi/aa;
.super Ljava/lang/Object;


# instance fields
.field a:[Ljava/lang/CharSequence;

.field b:I

.field c:Landroid/content/DialogInterface$OnClickListener;

.field d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private e:Landroid/content/Context;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/view/View;

.field private m:Landroid/content/DialogInterface$OnClickListener;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Landroid/content/DialogInterface$OnKeyListener;

.field private q:Z

.field private r:Lcom/zte/zdm/application/mmi/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/zte/zdm/application/mmi/aa;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private a(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0d0029

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "neutralButtonText!=null : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->o:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ab;

    invoke-direct {v1, p0, p1}, Lcom/zte/zdm/application/mmi/ab;-><init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/zte/zdm/application/mmi/aa;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private b(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0d0028

    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->n:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ac;

    invoke-direct {v1, p0, p1}, Lcom/zte/zdm/application/mmi/ac;-><init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0d002a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/zte/zdm/application/mmi/aa;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private c(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V
    .locals 3

    const v2, 0x7f0d002a

    const v0, 0x7f0d0027

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->m:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ad;

    invoke-direct {v1, p0, p1}, Lcom/zte/zdm/application/mmi/ad;-><init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/zte/zdm/application/mmi/ae;

    invoke-direct {v1, p0, p1}, Lcom/zte/zdm/application/mmi/ae;-><init>(Lcom/zte/zdm/application/mmi/aa;Lcom/zte/zdm/application/mmi/z;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/zte/zdm/application/mmi/aa;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->p:Landroid/content/DialogInterface$OnKeyListener;

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->l:Landroid/view/View;

    return-object p0
.end method

.method public a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->m:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public a(Z)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/application/mmi/aa;->q:Z

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 2

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->a:[Ljava/lang/CharSequence;

    iput p2, p0, Lcom/zte/zdm/application/mmi/aa;->b:I

    iput-object p3, p0, Lcom/zte/zdm/application/mmi/aa;->c:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shoud not call this method"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->a:[Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/zte/zdm/application/mmi/aa;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->c:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public a()Lcom/zte/zdm/application/mmi/z;
    .locals 14

    const-wide/high16 v4, 0x3fe0

    const-wide v6, 0x3fc3333333333333L

    const/4 v0, 0x0

    const/16 v13, 0x8

    const/4 v12, -0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customDialog create: this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-double v8, v2

    const-wide v10, 0x3feb333333333333L

    mul-double/2addr v8, v10

    double-to-int v0, v8

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    new-instance v8, Lcom/zte/zdm/application/mmi/z;

    iget-object v9, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    const v10, 0x7f0b0010

    invoke-direct {v8, v9, v10}, Lcom/zte/zdm/application/mmi/z;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8}, Lcom/zte/zdm/application/mmi/z;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    const/high16 v10, 0x3f80

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v8}, Lcom/zte/zdm/application/mmi/z;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v9, 0x7f030004

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v0, v10, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v0}, Lcom/zte/zdm/application/mmi/z;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "height="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ":Width="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d001c

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/aa;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0, v8, v9}, Lcom/zte/zdm/application/mmi/aa;->c(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V

    :goto_1
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-direct {p0, v8, v9}, Lcom/zte/zdm/application/mmi/aa;->b(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V

    :goto_2
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-direct {p0, v8, v9}, Lcom/zte/zdm/application/mmi/aa;->a(Lcom/zte/zdm/application/mmi/z;Landroid/view/View;)V

    :goto_3
    iget-boolean v0, p0, Lcom/zte/zdm/application/mmi/aa;->q:Z

    invoke-virtual {v8, v0}, Lcom/zte/zdm/application/mmi/z;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->p:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v8, v0}, Lcom/zte/zdm/application/mmi/z;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->k:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const v0, 0x7f0d0023

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/aa;->k:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    const v0, 0x7f0d0022

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/zte/zdm/application/mmi/aa;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const v0, 0x7f0d0020

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "textSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float v3, v3

    mul-float/2addr v3, v0

    mul-float/2addr v0, v3

    mul-int v3, v1, v2

    int-to-float v3, v3

    div-float/2addr v0, v3

    float-to-double v10, v0

    cmpl-double v0, v10, v4

    if-lez v0, :cond_7

    move-wide v3, v4

    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "factor="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d001f

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v2

    mul-double v2, v6, v3

    double-to-int v2, v2

    invoke-direct {v5, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0020

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_6
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_a

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9, v0}, Lcom/zte/zdm/application/mmi/z;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_7
    return-object v8

    :cond_3
    const v0, 0x7f0d002a

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f0d0028

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_5
    const-string v0, "else neutralButtonText == null"

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0029

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    const v0, 0x7f0d0021

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_7
    cmpg-double v0, v10, v6

    if-gez v0, :cond_8

    move-wide v3, v6

    goto/16 :goto_5

    :cond_8
    const-wide v3, 0x3f947ae147ae147bL

    add-double/2addr v3, v10

    goto/16 :goto_5

    :cond_9
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->l:Landroid/view/View;

    if-eqz v0, :cond_2

    const v0, 0x7f0d001e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const v0, 0x7f0d001e

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/zte/zdm/application/mmi/aa;->l:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_a
    invoke-virtual {v8, v9}, Lcom/zte/zdm/application/mmi/z;->setContentView(Landroid/view/View;)V

    goto :goto_7

    :cond_b
    move v1, v0

    move v2, v0

    move v3, v0

    goto/16 :goto_0
.end method

.method public b(I)Lcom/zte/zdm/application/mmi/aa;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->n:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public b()Lcom/zte/zdm/application/mmi/z;
    .locals 1

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/aa;->a()Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->show()V

    return-object v0
.end method

.method public c(I)Lcom/zte/zdm/application/mmi/aa;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->l:Landroid/view/View;

    return-object p0
.end method

.method public c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 2

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "neutralButtonText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->k:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/zdm/application/mmi/aa;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/aa;->j:Ljava/lang/String;

    iput-object p2, p0, Lcom/zte/zdm/application/mmi/aa;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public c()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/zdm/application/mmi/aa;->a()Lcom/zte/zdm/application/mmi/z;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fc3333333333333L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-double v0, v1

    const-wide v3, 0x3fe4cccccccccccdL

    mul-double/2addr v0, v3

    double-to-int v1, v0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030004

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0d0026

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0d001d

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0d0024

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0d0021

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0d001b

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0d001e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0, v7}, Lcom/zte/zdm/application/mmi/z;->setCancelable(Z)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Lcom/zte/zdm/application/mmi/z;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->show()V

    return-void
.end method

.method public d(I)Lcom/zte/zdm/application/mmi/aa;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->e:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->k:Ljava/lang/String;

    return-object p0
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->cancel()V

    iget-object v0, p0, Lcom/zte/zdm/application/mmi/aa;->r:Lcom/zte/zdm/application/mmi/z;

    invoke-virtual {v0}, Lcom/zte/zdm/application/mmi/z;->dismiss()V

    :cond_0
    return-void
.end method
