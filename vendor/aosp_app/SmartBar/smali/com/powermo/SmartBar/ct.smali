.class public Lcom/powermo/SmartBar/ct;
.super Ljava/lang/Object;


# static fields
.field private static final z:[Ljava/lang/String;


# instance fields
.field private final A:Ljava/util/ArrayList;

.field private B:Ljava/lang/Runnable;

.field a:Z

.field b:Lcom/powermo/b/a;

.field c:I

.field d:Lcom/powermo/SmartBar/SplitBarView;

.field e:Z

.field f:Ljava/lang/String;

.field g:Z

.field h:Landroid/os/Handler;

.field i:Landroid/view/View$OnClickListener;

.field j:Z

.field k:Landroid/graphics/PointF;

.field final l:Landroid/view/View$OnTouchListener;

.field private m:Landroid/content/Context;

.field private n:Landroid/app/Dialog;

.field private o:I

.field private p:Z

.field private q:Lcom/powermo/SmartBar/db;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:I

.field private w:Landroid/app/ActivityManager;

.field private x:Lcom/powermo/SmartBar/da;

.field private y:Lcom/powermo/SmartBar/cy;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/powermo/SmartBar/dc;->s:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/powermo/SmartBar/dc;->t:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/powermo/SmartBar/dc;->u:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/powermo/SmartBar/ct;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/powermo/SmartBar/db;Landroid/content/Context;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/SmartBar/ct;->c:I

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ct;->e:Z

    new-instance v0, Lcom/powermo/SmartBar/cy;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cy;-><init>(Lcom/powermo/SmartBar/ct;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->y:Lcom/powermo/SmartBar/cy;

    iput-object v2, p0, Lcom/powermo/SmartBar/ct;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->A:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ct;->g:Z

    iput-object v2, p0, Lcom/powermo/SmartBar/ct;->h:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/cu;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cu;-><init>(Lcom/powermo/SmartBar/ct;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->B:Ljava/lang/Runnable;

    new-instance v0, Lcom/powermo/SmartBar/cv;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cv;-><init>(Lcom/powermo/SmartBar/ct;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->i:Landroid/view/View$OnClickListener;

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ct;->j:Z

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->k:Landroid/graphics/PointF;

    new-instance v0, Lcom/powermo/SmartBar/cw;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/cw;-><init>(Lcom/powermo/SmartBar/ct;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->l:Landroid/view/View$OnTouchListener;

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->b:Lcom/powermo/b/a;

    iput-object p1, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    iput-object p2, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    iput p3, p0, Lcom/powermo/SmartBar/ct;->o:I

    iput-boolean v1, p0, Lcom/powermo/SmartBar/ct;->p:Z

    iput v1, p0, Lcom/powermo/SmartBar/ct;->v:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->h:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->w:Landroid/app/ActivityManager;

    new-instance v0, Lcom/powermo/SmartBar/da;

    invoke-direct {v0, p2}, Lcom/powermo/SmartBar/da;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->x:Lcom/powermo/SmartBar/da;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/db;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/ClassLoader;)V
    .locals 6

    :try_start_0
    const-string v1, "android.view.ViewTreeObserver$OnComputeInternalInsetsListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/view/ViewTreeObserver;

    const-string v3, "addOnComputeInternalInsetsListener"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v1, 0x1

    const-class v4, Lcom/powermo/SmartBar/cz;

    aput-object v4, v2, v1

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->y:Lcom/powermo/SmartBar/cy;

    invoke-static {p2, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/powermo/SmartBar/cz;

    move-object v1, v0

    invoke-interface {v1}, Lcom/powermo/SmartBar/cz;->a()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    sget-object v0, Lcom/powermo/SmartBar/ct;->z:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->A:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_1
    return v2

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v3, Lcom/powermo/SmartBar/ct;->z:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v3, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/powermo/SmartBar/ct;->A:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ct;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->B:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/da;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->x:Lcom/powermo/SmartBar/da;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/ct;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ct;->b()V

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ct;->p:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v1, :cond_1

    const v1, 0x7f03000f

    :goto_1
    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/SplitBarView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/ct;->a(Landroid/view/View;Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/SplitBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->b:Lcom/powermo/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/b/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/SmartBar/ct;->c:I

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    const v1, 0x7f07003f

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/SplitBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    const v1, 0x7f070040

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/SplitBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->t:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    const v1, 0x7f070041

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/SplitBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    const v1, 0x7f070042

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/SplitBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->D:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->C:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->D:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->B:I

    sget v2, Lcom/powermo/SmartBar/dc;->D:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v1, Lcom/powermo/SmartBar/dc;->B:I

    sget v2, Lcom/powermo/SmartBar/dc;->D:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    sget v2, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SplitBar:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/powermo/SmartBar/ct;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/cx;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/cx;-><init>(Lcom/powermo/SmartBar/ct;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040011

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v2, Lcom/powermo/SmartBar/dc;->j:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x40028

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ct;->c()V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    :cond_1
    const v1, 0x7f03000e

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->D:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->C:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->t:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sget v1, Lcom/powermo/SmartBar/dc;->D:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method a(I)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->w:Landroid/app/ActivityManager;

    const/16 v1, 0x1f

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    :goto_0
    if-lt v2, v5, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void

    :cond_0
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    new-instance v6, Landroid/content/Intent;

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "SplitBar"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "recent info"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    :try_start_0
    const-class v1, Landroid/app/ActivityManager$RecentTaskInfo;

    const-string v8, "displayId"

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_2
    if-ne v1, p1, :cond_1

    invoke-direct {p0, v7}, Lcom/powermo/SmartBar/ct;->a(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_3
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v1, -0x200001

    and-int/2addr v0, v1

    const/high16 v1, 0x1000

    or-int/2addr v0, v1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v1, -0x2

    goto :goto_2
.end method

.method a(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "status_splitbar_position"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iput v3, p0, Lcom/powermo/SmartBar/ct;->v:I

    :cond_0
    :goto_0
    const-string v0, "status_disable_adjust_ratio"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "status_disable_adjust_ratio"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/ct;->e:Z

    :cond_1
    invoke-virtual {p0}, Lcom/powermo/SmartBar/ct;->c()V

    return-void

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/powermo/SmartBar/ct;->v:I

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/powermo/SmartBar/ct;->v:I

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ct;->p:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/ct;->p:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ct;->a()V

    goto :goto_0
.end method

.method a(FF)Z
    .locals 6

    const/4 v1, 0x0

    const/high16 v5, 0x4220

    const/high16 v4, -0x3de0

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/powermo/SmartBar/ct;->o:I

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/powermo/SmartBar/ct;->g:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v2, :cond_3

    cmpl-float v2, p2, v5

    if-lez v2, :cond_2

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    goto :goto_0

    :cond_2
    cmpg-float v2, p2, v4

    if-gez v2, :cond_5

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    goto :goto_0

    :cond_3
    cmpl-float v2, p1, v5

    if-lez v2, :cond_4

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    goto :goto_0

    :cond_4
    cmpg-float v2, p1, v4

    if-gez v2, :cond_5

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->q:Lcom/powermo/SmartBar/db;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ct;->n:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/powermo/SmartBar/ct;->a:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ct;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->x:Lcom/powermo/SmartBar/da;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/da;->a(Z)V

    return-void
.end method

.method c()V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x4

    iget v0, p0, Lcom/powermo/SmartBar/ct;->v:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget v0, p0, Lcom/powermo/SmartBar/ct;->v:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->b:Lcom/powermo/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "parameter_is_idler:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powermo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v1, Lcom/powermo/SmartBar/dc;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/powermo/SmartBar/ct;->m:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/powermo/SmartBar/ct;->v:I

    if-ne v1, v6, :cond_4

    iget-boolean v1, p0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x31

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    invoke-virtual {v0, v6}, Lcom/powermo/SmartBar/SplitBarView;->setMode(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ct;->a(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v1, :cond_5

    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_5
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lcom/powermo/SmartBar/ct;->c:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->d:Lcom/powermo/SmartBar/SplitBarView;

    invoke-virtual {v0, v2}, Lcom/powermo/SmartBar/SplitBarView;->setMode(I)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/powermo/SmartBar/ct;->c:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ct;->s:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method
