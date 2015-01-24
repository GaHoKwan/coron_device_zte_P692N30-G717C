.class public Lcom/powermo/SmartBar/AppListEditorActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/powermo/SmartBar/SmartApplication;

.field private b:Lcom/powermo/SmartBar/bv;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/powermo/SmartBar/c;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:Lcom/powermo/SmartBar/DragGridView;

.field private m:Lcom/powermo/SmartBar/DragGridView;

.field private n:Lcom/powermo/SmartBar/m;

.field private o:Lcom/powermo/SmartBar/m;

.field private p:Lcom/powermo/SmartBar/aa;

.field private q:Landroid/view/View$OnClickListener;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Landroid/view/View$OnClickListener;

.field private t:Landroid/view/View$OnClickListener;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/widget/AdapterView$OnItemClickListener;

.field private w:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->l:Lcom/powermo/SmartBar/DragGridView;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->n:Lcom/powermo/SmartBar/m;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->o:Lcom/powermo/SmartBar/m;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->p:Lcom/powermo/SmartBar/aa;

    new-instance v0, Lcom/powermo/SmartBar/n;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/n;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->q:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/o;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/o;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->r:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/p;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/p;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->s:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/q;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/q;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->t:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/r;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/r;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/s;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/s;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/powermo/SmartBar/v;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/v;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/AppListEditorActivity;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f05001b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    return-object v0
.end method

.method private a()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartApplication;->f()V

    :cond_0
    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    iput-boolean v2, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->l:Lcom/powermo/SmartBar/DragGridView;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->n:Lcom/powermo/SmartBar/m;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->o:Lcom/powermo/SmartBar/m;

    iput-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->p:Lcom/powermo/SmartBar/aa;

    invoke-static {p0, v2}, Lcom/powermo/SmartBar/SmartBarService;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/AppListEditorActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/AppListEditorActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    const v2, 0x7f050014

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean p1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    iget-boolean v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bv;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method

.method private b()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/powermo/SmartBar/SmartBarService;->a(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/SmartApplication;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->a:Lcom/powermo/SmartBar/SmartApplication;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/SmartApplication;->c()Lcom/powermo/SmartBar/c;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    new-instance v0, Lcom/powermo/SmartBar/bv;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/bv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->e:Landroid/view/View;

    const v0, 0x7f07000b

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bv;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/powermo/SmartBar/w;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/w;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "POWERMOREF"

    sget-object v1, Lcom/powermo/SmartBar/dc;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bv;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->i:Landroid/view/View;

    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->j:Landroid/widget/Button;

    new-instance v1, Lcom/powermo/SmartBar/x;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/x;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    invoke-direct {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Z)V

    const v0, 0x7f070007

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v0, v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/powermo/SmartBar/dc;->c:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070006

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/DragGridView;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->l:Lcom/powermo/SmartBar/DragGridView;

    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/DragGridView;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/c;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    new-instance v0, Lcom/powermo/SmartBar/m;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    iget-object v2, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {v0, v4, v1, v2, p0}, Lcom/powermo/SmartBar/m;-><init>(ZLcom/powermo/SmartBar/c;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->n:Lcom/powermo/SmartBar/m;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->l:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->n:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->l:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->w:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/powermo/SmartBar/m;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    iget-object v2, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {v0, v6, v1, v2, p0}, Lcom/powermo/SmartBar/m;-><init>(ZLcom/powermo/SmartBar/c;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->o:Lcom/powermo/SmartBar/m;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->o:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->v:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/powermo/SmartBar/y;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->d:Lcom/powermo/SmartBar/c;

    invoke-direct {v0, p0, p0, v1}, Lcom/powermo/SmartBar/y;-><init>(Lcom/powermo/SmartBar/AppListEditorActivity;Landroid/content/Context;Lcom/powermo/SmartBar/c;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->p:Lcom/powermo/SmartBar/aa;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->p:Lcom/powermo/SmartBar/aa;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setDragListener(Lcom/powermo/SmartBar/av;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    invoke-virtual {v0, v6}, Lcom/powermo/SmartBar/DragGridView;->a(Z)V

    const v0, 0x7f070009

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070008

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Lcom/powermo/SmartBar/dc;->d:Z

    if-eqz v1, :cond_7

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    instance-of v0, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v2, Lcom/powermo/SmartBar/dc;->c:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/k;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->c:Landroid/view/LayoutInflater;

    invoke-static {v0, v3, v2}, Lcom/powermo/SmartBar/m;->a(Lcom/powermo/SmartBar/k;Landroid/view/LayoutInflater;Landroid/content/res/ColorStateList;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->e:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    iput-object v3, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->h:Landroid/widget/LinearLayout;

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method static synthetic b(Lcom/powermo/SmartBar/AppListEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->c()V

    return-void
.end method

.method static synthetic c(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->n:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->o:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/m;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic d(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/DragGridView;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->m:Lcom/powermo/SmartBar/DragGridView;

    return-object v0
.end method

.method static synthetic e(Lcom/powermo/SmartBar/AppListEditorActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/bv;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    return-object v0
.end method

.method static synthetic g(Lcom/powermo/SmartBar/AppListEditorActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->k:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/AppListEditorActivity;->b:Lcom/powermo/SmartBar/bv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bv;->b(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->setContentView(I)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b()V

    return-void
.end method
