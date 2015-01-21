.class public Lcom/autonavi/xmgd/navigator/DspEdit;
.super Lcom/autonavi/xmgd/controls/GDActivity;


# instance fields
.field private a:I

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/autonavi/xmgd/e/g;

.field private e:Lcom/autonavi/xmgd/e/g;

.field private f:I

.field private g:S

.field private h:Z

.field private i:[Ljava/lang/String;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->a:I

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->e:Lcom/autonavi/xmgd/e/g;

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    iput-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/DspEdit;I)I
    .locals 0

    iput p1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    return p1
.end method

.method private a(IIILjava/lang/String;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0c0110

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f0c0111

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/DspEdit;Lcom/autonavi/xmgd/e/g;)Lcom/autonavi/xmgd/e/g;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->e:Lcom/autonavi/xmgd/e/g;

    return-object p1
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/DspEdit;S)S
    .locals 0

    iput-short p1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    return p1
.end method

.method private a()V
    .locals 10

    const/16 v9, 0x9

    const/16 v8, 0x8

    const/4 v7, 0x2

    const v6, 0x7f02011d

    const/4 v5, 0x1

    const v0, 0x7f0c003c

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iget v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->a:I

    if-ne v1, v5, :cond_1

    const v1, 0x7f0700d4

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    :goto_0
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->b:Landroid/widget/Button;

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->a:I

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->b:Landroid/widget/Button;

    const v1, 0x7f0700d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->b:Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/o;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/o;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v1, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->szName:Ljava/lang/String;

    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0c003e

    const v1, 0x7f02012c

    const v2, 0x7f02011c

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->j:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->j:Landroid/view/View;

    new-instance v1, Lcom/autonavi/xmgd/navigator/r;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/r;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    if-ne v0, v5, :cond_2

    const v1, 0x7f0c003f

    const v2, 0x7f02012f

    const v3, 0x7f020116

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->k:Landroid/view/View;

    :goto_1
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->k:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/s;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/s;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v0, v5, :cond_3

    const v1, 0x7f0c0040

    const v2, 0x7f020117

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->l:Landroid/view/View;

    :goto_2
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->l:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/t;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/t;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0041

    const v2, 0x7f020118

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->m:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->m:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/u;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/u;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0042

    const v2, 0x7f020119

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->n:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->n:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/v;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/v;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0043

    const v2, 0x7f02011a

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->o:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->o:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/w;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/w;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0044

    const v2, 0x7f02011b

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->p:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/x;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/x;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0c0045

    const v2, 0x7f020113

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->q:Landroid/view/View;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->q:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/y;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/y;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v0, v5, :cond_4

    const v1, 0x7f0c0046

    const v2, 0x7f020121

    const v3, 0x7f020114

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->r:Landroid/view/View;

    :goto_3
    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->r:Landroid/view/View;

    new-instance v2, Lcom/autonavi/xmgd/navigator/p;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/p;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v0, v5, :cond_5

    const v0, 0x7f0c0047

    const v1, 0x7f020124

    const v2, 0x7f020115

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->s:Landroid/view/View;

    :goto_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->s:Landroid/view/View;

    new-instance v1, Lcom/autonavi/xmgd/navigator/q;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/q;-><init>(Lcom/autonavi/xmgd/navigator/DspEdit;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->t:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->t:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->u:Landroid/view/View;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->u:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->b()V

    return-void

    :cond_1
    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    goto/16 :goto_0

    :cond_2
    const v1, 0x7f0c003f

    const v2, 0x7f020116

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->k:Landroid/view/View;

    goto/16 :goto_1

    :cond_3
    const v1, 0x7f0c0040

    const v2, 0x7f02012f

    const v3, 0x7f020117

    iget-object v4, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->l:Landroid/view/View;

    goto/16 :goto_2

    :cond_4
    const v1, 0x7f0c0046

    const v2, 0x7f020114

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-direct {p0, v1, v6, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->r:Landroid/view/View;

    goto/16 :goto_3

    :cond_5
    const v0, 0x7f0c0047

    const v1, 0x7f020121

    const v2, 0x7f020115

    iget-object v3, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(IIILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->s:Landroid/view/View;

    goto/16 :goto_4
.end method

.method private a(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/DspEdit;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    return v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    const/16 v1, 0x1c

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->j:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_1

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->k:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_1
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_2

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->l:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_2
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_3

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->m:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_3
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_4

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x46

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->n:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_4
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_5

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x50

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->o:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_5
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_6

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->p:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_6
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_7

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x64

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->q:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_7
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_8

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->r:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_8
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    if-ne v0, v2, :cond_9

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    const/16 v1, 0x78

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->s:Landroid/view/View;

    invoke-direct {p0, v0, v3}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    :goto_9
    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->j:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->k:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->l:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->m:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->n:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->o:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->p:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_6

    :cond_7
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->q:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_7

    :cond_8
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->r:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_8

    :cond_9
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->s:Landroid/view/View;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->a(Landroid/view/View;Z)V

    goto :goto_9
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/DspEdit;)S
    .locals 1

    iget-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    return v0
.end method

.method static synthetic d(Lcom/autonavi/xmgd/navigator/DspEdit;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->a:I

    return v0
.end method

.method static synthetic e(Lcom/autonavi/xmgd/navigator/DspEdit;)Lcom/autonavi/xmgd/e/g;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->e:Lcom/autonavi/xmgd/e/g;

    return-object v0
.end method

.method static synthetic f(Lcom/autonavi/xmgd/navigator/DspEdit;)V
    .locals 0

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->b()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DspEdit;->setContentView(I)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->a:I

    :cond_1
    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->i()Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->eCategory:Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;->nativeValue:I

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    iget-object v0, v0, Lcom/autonavi/xmgd/e/g;->a:Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;

    iget-short v0, v0, Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;->nSpeed:S

    iput-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->d:Lcom/autonavi/xmgd/e/g;

    invoke-virtual {v0}, Lcom/autonavi/xmgd/e/g;->b()Lcom/autonavi/xmgd/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->e:Lcom/autonavi/xmgd/e/g;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->i:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    const-string v1, "usSpeed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v1

    iput-short v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    :cond_2
    if-eqz p1, :cond_3

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    const-string v1, "usSpeed"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    iput-short v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->a()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->h:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->h:Z

    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DspEdit;->finish()V

    move v0, v1

    :goto_1
    return v0

    :cond_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/navigator/DspEdit;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "type"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "usSpeed"

    iget-short v2, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "type"

    iget v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "usSpeed"

    iget-short v1, p0, Lcom/autonavi/xmgd/navigator/DspEdit;->g:S

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
