.class public Lcom/powermo/SmartBar/bo;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Dialog;

.field private b:Lcom/powermo/SmartBar/MLRootLayout;

.field private c:Landroid/content/Context;

.field private d:Landroid/view/Window;

.field private e:Lcom/powermo/SmartBar/c;

.field private f:Lcom/powermo/SmartBar/DragGridView;

.field private g:Lcom/powermo/SmartBar/m;

.field private h:Z

.field private i:Landroid/view/LayoutInflater;

.field private j:Lcom/powermo/SmartBar/bz;

.field private k:Lcom/powermo/SmartBar/aw;

.field private l:Lcom/powermo/SmartBar/bu;

.field private m:Landroid/os/Handler;

.field private n:Ljava/lang/String;

.field private o:Lcom/powermo/SmartBar/bt;

.field private p:Landroid/view/View$OnClickListener;

.field private q:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powermo/SmartBar/bz;Lcom/powermo/SmartBar/c;Lcom/powermo/SmartBar/ad;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/bo;->h:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->m:Landroid/os/Handler;

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->n:Ljava/lang/String;

    new-instance v0, Lcom/powermo/SmartBar/bt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powermo/SmartBar/bt;-><init>(Lcom/powermo/SmartBar/bo;Lcom/powermo/SmartBar/bt;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->o:Lcom/powermo/SmartBar/bt;

    new-instance v0, Lcom/powermo/SmartBar/bp;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/bp;-><init>(Lcom/powermo/SmartBar/bo;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->p:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/powermo/SmartBar/bq;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/bq;-><init>(Lcom/powermo/SmartBar/bo;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->q:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object p1, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/powermo/SmartBar/bo;->j:Lcom/powermo/SmartBar/bz;

    new-instance v0, Lcom/powermo/SmartBar/aw;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p4}, Lcom/powermo/SmartBar/aw;-><init>(Landroid/content/Context;Lcom/powermo/SmartBar/ad;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->k:Lcom/powermo/SmartBar/aw;

    iput-object p3, p0, Lcom/powermo/SmartBar/bo;->e:Lcom/powermo/SmartBar/c;

    new-instance v0, Lcom/powermo/SmartBar/bu;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/powermo/SmartBar/bo;->e:Lcom/powermo/SmartBar/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/powermo/SmartBar/bu;-><init>(Lcom/powermo/SmartBar/bo;Landroid/content/Context;Lcom/powermo/SmartBar/c;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->l:Lcom/powermo/SmartBar/bu;

    return-void
.end method

.method private a(F)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/bo;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->g()V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/bo;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/bo;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/bo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/c;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->e:Lcom/powermo/SmartBar/c;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bo;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->j:Lcom/powermo/SmartBar/bz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bz;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->e()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->d()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->e()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/aw;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->k:Lcom/powermo/SmartBar/aw;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->i:Landroid/view/LayoutInflater;

    const v1, 0x7f030008

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/MLRootLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/MLRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/DragGridView;

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->l:Lcom/powermo/SmartBar/bu;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setDragListener(Lcom/powermo/SmartBar/av;)V

    new-instance v0, Lcom/powermo/SmartBar/m;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->e:Lcom/powermo/SmartBar/c;

    iget-object v2, p0, Lcom/powermo/SmartBar/bo;->i:Landroid/view/LayoutInflater;

    iget-object v3, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/powermo/SmartBar/m;-><init>(ZLcom/powermo/SmartBar/c;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->g:Lcom/powermo/SmartBar/m;

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->g:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->q:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/DragGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    const v1, 0x7f070029

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/MLRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->p:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    sget v2, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    const-string v1, "MiniLauncher"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    new-instance v1, Lcom/powermo/SmartBar/br;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/br;-><init>(Lcom/powermo/SmartBar/bo;)V

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/MLRootLayout;->setOnTouchEventDispatchListener(Lcom/powermo/SmartBar/bb;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/bs;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/bs;-><init>(Lcom/powermo/SmartBar/bo;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v5, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v2, Lcom/powermo/SmartBar/dc;->i:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->f()V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->d:Landroid/view/Window;

    return-void
.end method

.method static synthetic e(Lcom/powermo/SmartBar/bo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->n:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const-string v0, "MiniLauncher"

    const-string v1, "mDialog=null should not reach here"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->g:Lcom/powermo/SmartBar/m;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/m;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->j:Lcom/powermo/SmartBar/bz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bz;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->o:Lcom/powermo/SmartBar/bt;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bt;->a()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/bo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->m:Landroid/os/Handler;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/SmartBar/bo;->j:Lcom/powermo/SmartBar/bz;

    invoke-virtual {v3}, Lcom/powermo/SmartBar/bz;->a()I

    move-result v3

    if-eqz v0, :cond_3

    if-eqz v3, :cond_2

    sget v0, Lcom/powermo/SmartBar/dc;->a:I

    or-int/lit8 v0, v0, 0x5

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget v0, Lcom/powermo/SmartBar/dc;->a:I

    or-int/lit8 v0, v0, 0x3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/powermo/SmartBar/dc;->b:I

    or-int/lit8 v0, v0, 0x50

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_1
.end method

.method static synthetic g(Lcom/powermo/SmartBar/bo;)Landroid/view/Window;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->d:Landroid/view/Window;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/SmartBar/bo;->b()V

    return-void
.end method

.method static synthetic h(Lcom/powermo/SmartBar/bo;)Lcom/powermo/SmartBar/bt;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->o:Lcom/powermo/SmartBar/bt;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/powermo/SmartBar/bo;->i:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->d()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->c()V

    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->l:Lcom/powermo/SmartBar/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->l:Lcom/powermo/SmartBar/bu;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bu;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->f()V

    return-void
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/bo;->h:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/bo;->h:Z

    invoke-direct {p0}, Lcom/powermo/SmartBar/bo;->c()V

    goto :goto_0
.end method

.method b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->o:Lcom/powermo/SmartBar/bt;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bt;->b()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->j:Lcom/powermo/SmartBar/bz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bz;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->l:Lcom/powermo/SmartBar/bu;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/bu;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/DragGridView;->setDragListener(Lcom/powermo/SmartBar/av;)V

    :cond_0
    iput-object v2, p0, Lcom/powermo/SmartBar/bo;->a:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/bo;->h:Z

    iput-object v2, p0, Lcom/powermo/SmartBar/bo;->f:Lcom/powermo/SmartBar/DragGridView;

    iput-object v2, p0, Lcom/powermo/SmartBar/bo;->d:Landroid/view/Window;

    iput-object v2, p0, Lcom/powermo/SmartBar/bo;->b:Lcom/powermo/SmartBar/MLRootLayout;

    return-void
.end method
