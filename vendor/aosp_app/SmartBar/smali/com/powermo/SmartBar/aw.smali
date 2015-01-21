.class public Lcom/powermo/SmartBar/aw;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/Point;

.field b:I

.field c:I

.field private final d:Landroid/content/Context;

.field private e:Landroid/app/Dialog;

.field private f:Z

.field private final g:Lcom/powermo/b/a;

.field private final h:Landroid/view/LayoutInflater;

.field private final i:Landroid/app/ActivityManager;

.field private final j:Landroid/content/pm/PackageManager;

.field private final k:Lcom/powermo/SmartBar/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powermo/SmartBar/ad;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/aw;->f:Z

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->h:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->i:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->j:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/powermo/SmartBar/aw;->k:Lcom/powermo/SmartBar/ad;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/aw;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/aw;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/aw;->f:Z

    return-void
.end method

.method static a(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/powermo/SmartBar/aw;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->g()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->h:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    sget v3, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v1, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    const-string v2, "DragHolder"

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/ax;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/ax;-><init>(Lcom/powermo/SmartBar/aw;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v4, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/16 v2, 0x7d2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x33

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->f()V

    const/16 v1, 0x118

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method a(II)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    return-void
.end method

.method a(IIZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/aw;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/aw;->a(Z)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/aw;->f:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->a()V

    return-void
.end method

.method b(IIZ)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/powermo/SmartBar/aw;->a(Z)V

    iget-object v2, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    invoke-virtual {v2, v1}, Lcom/powermo/b/a;->a(I)I

    move-result v2

    if-gt v2, v0, :cond_3

    iget v2, p0, Lcom/powermo/SmartBar/aw;->b:I

    iget v3, p0, Lcom/powermo/SmartBar/aw;->c:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/powermo/SmartBar/aw;->b:I

    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/powermo/SmartBar/aw;->c:I

    div-int/lit8 v2, v2, 0x2

    if-gt p2, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    iget-object v2, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lcom/powermo/b/a;->b(ILandroid/graphics/Point;)I

    move-result v0

    goto :goto_0
.end method

.method b()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/aw;->i:Landroid/app/ActivityManager;

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/powermo/SmartBar/aw;->j:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/aw;->a(Landroid/content/ComponentName;Landroid/content/pm/PackageManager;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method c()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->i:Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v4, p0, Lcom/powermo/SmartBar/aw;->k:Lcom/powermo/SmartBar/ad;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Lcom/powermo/SmartBar/ad;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/powermo/SmartBar/z;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    :cond_0
    return v1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->c()Z

    move-result v0

    return v0
.end method

.method e()I
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/powermo/b/a;->a(I)I

    move-result v0

    return v0
.end method

.method f()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    iget-object v4, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v4}, Lcom/powermo/b/a;->b(ILandroid/graphics/Point;)I

    move-result v0

    iget-object v4, p0, Lcom/powermo/SmartBar/aw;->g:Lcom/powermo/b/a;

    invoke-virtual {v4, v1, v0}, Lcom/powermo/b/a;->e(II)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->b()Z

    move-result v0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/aw;->d()Z

    move-result v4

    iget-object v5, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    iget-object v6, p0, Lcom/powermo/SmartBar/aw;->a:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_2

    if-eqz v4, :cond_3

    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    iget v4, p0, Lcom/powermo/SmartBar/aw;->c:I

    if-le v0, v4, :cond_5

    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    div-int/lit8 v0, v0, 0x2

    if-le v5, v0, :cond_4

    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    div-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    div-int/lit8 v0, v0, 0x2

    if-le v6, v0, :cond_6

    iget v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    div-int/lit8 v0, v0, 0x2

    :goto_2
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->b:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v0, p0, Lcom/powermo/SmartBar/aw;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/aw;->e:Landroid/app/Dialog;

    :cond_0
    return-void
.end method
