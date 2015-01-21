.class public Lcom/powermo/smartshow/activity/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/net/Uri;


# instance fields
.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/util/ArrayList;

.field private final d:Ljava/util/ArrayList;

.field private final e:Landroid/content/ContentResolver;

.field private final f:Landroid/content/pm/PackageManager;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/os/Handler;

.field private i:Z

.field private final j:Z

.field private final k:Lcom/powermo/smartshow/activity/n;

.field private final l:Ljava/util/Comparator;

.field private m:Ljava/util/List;

.field private n:Ljava/lang/Runnable;

.field private o:Landroid/content/BroadcastReceiver;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/database/ContentObserver;

.field private r:Lcom/powermo/smartshow/activity/j;

.field private s:Ljava/text/Collator;

.field private final t:Ljava/util/Comparator;

.field private final u:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.powermo.pmmlstat/appconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/powermo/smartshow/activity/n;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->d:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z

    new-instance v0, Lcom/powermo/smartshow/activity/b;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/b;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->l:Ljava/util/Comparator;

    iput-object v2, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    new-instance v0, Lcom/powermo/smartshow/activity/c;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/c;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/powermo/smartshow/activity/d;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/d;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/powermo/smartshow/activity/e;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/e;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->p:Ljava/lang/Runnable;

    new-instance v0, Lcom/powermo/smartshow/activity/f;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/powermo/smartshow/activity/f;-><init>(Lcom/powermo/smartshow/activity/a;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->q:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/powermo/smartshow/activity/a;->r:Lcom/powermo/smartshow/activity/j;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->s:Ljava/text/Collator;

    new-instance v0, Lcom/powermo/smartshow/activity/g;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/g;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->t:Ljava/util/Comparator;

    new-instance v0, Lcom/powermo/smartshow/activity/h;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/h;-><init>(Lcom/powermo/smartshow/activity/a;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->u:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    iput-boolean p2, p0, Lcom/powermo/smartshow/activity/a;->j:Z

    iput-object p3, p0, Lcom/powermo/smartshow/activity/a;->k:Lcom/powermo/smartshow/activity/n;

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/activity/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/powermo/smartshow/activity/i;
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/powermo/smartshow/activity/i;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v1, Lcom/powermo/smartshow/activity/i;

    invoke-direct {v1}, Lcom/powermo/smartshow/activity/i;-><init>()V

    invoke-static {v1, p1}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    invoke-static {v1, p2}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    invoke-static {v1, p3}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    invoke-static {v1, p4}, Lcom/powermo/smartshow/activity/i;->d(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    if-ltz p5, :cond_3

    if-le p5, v0, :cond_4

    :cond_3
    move p5, v0

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3}, Lcom/powermo/smartshow/activity/a;->a(ZZ)V

    invoke-direct {p0, v1, v3}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/i;Z)Z

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/smartshow/activity/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/activity/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/activity/a;Ljava/text/Collator;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/a;->s:Ljava/text/Collator;

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/activity/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/activity/a;->c(Z)V

    return-void
.end method

.method private a(ZZ)V
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-lt v1, v2, :cond_3

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    sub-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x64

    invoke-static {v0, v4}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    sub-int v3, v2, v1

    mul-int/lit8 v3, v3, 0x64

    invoke-static {v0, v3}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lcom/powermo/smartshow/activity/i;Z)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    move v0, v6

    :goto_0
    return v0

    :cond_1
    invoke-static {p1, v1}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1, v1}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/powermo/smartshow/activity/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";;;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-lt v2, v12, :cond_3

    aget-object v2, v0, v6

    const-string v3, "///"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v0, v0, v5

    const-string v2, "///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_3

    array-length v0, v7

    if-lt v0, v12, :cond_3

    if-eqz v8, :cond_3

    array-length v0, v8

    if-lt v0, v12, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    new-array v0, v12, [Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v0

    aput-object v4, v0, v6

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v0

    aput-object v3, v0, v5

    new-array v0, v12, [Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v2, v0, v6

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v1, v0, v5

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    move v0, v5

    goto :goto_0

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aget-object v11, v7, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aget-object v11, v7, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    new-instance v4, Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v10}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_5
    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aget-object v11, v8, v6

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aget-object v11, v8, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v1, Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v10}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v3, v1

    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/powermo/smartshow/activity/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v2, "///"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v0, v3

    if-lt v0, v12, :cond_3

    if-eqz p2, :cond_9

    move-object v2, v1

    :goto_3
    if-nez v2, :cond_8

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    :goto_4
    if-eqz v2, :cond_c

    new-instance v0, Ljava/lang/String;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p1, v2}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;Landroid/content/pm/ResolveInfo;)V

    :goto_5
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v2

    aput-object v0, v2, v6

    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v1, v0, v6

    goto/16 :goto_2

    :cond_9
    invoke-static {p1}, Lcom/powermo/smartshow/activity/i;->h(Lcom/powermo/smartshow/activity/i;)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    goto :goto_3

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v2, v0

    goto :goto_4

    :cond_b
    move v0, v6

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    goto :goto_5
.end method

.method static synthetic b(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static b(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/powermo/smartshow/activity/a;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa0

    const/16 v4, 0x20

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_0
    if-gt v2, v1, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_1

    move v0, v1

    :goto_1
    if-lt v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v4, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_2

    :cond_0
    if-nez v2, :cond_3

    if-ne v0, v1, :cond_3

    :goto_2
    return-object p1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private b(Z)V
    .locals 7

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->f()V

    :cond_2
    return-void

    :cond_3
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "NAME"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DISPLAY_NAME"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    const-string v1, ""

    :goto_3
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "FLAGS"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_4
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CONFIG"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->d(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WEIGHT"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->e(Lcom/powermo/smartshow/activity/i;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MODE"

    const-string v1, "show"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    :try_start_4
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    :try_start_5
    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/activity/i;

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "NAME"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "DISPLAY_NAME"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    const-string v1, ""

    :goto_6
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "FLAGS"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    :goto_7
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "CONFIG"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->d(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "WEIGHT"

    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->e(Lcom/powermo/smartshow/activity/i;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MODE"

    const-string v1, "hide"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_8
    :try_start_7
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_2

    :cond_7
    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_8
    invoke-static {v0}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v1

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/powermo/smartshow/activity/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->h()V

    return-void
.end method

.method private c(Z)V
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    iput-object v3, p0, Lcom/powermo/smartshow/activity/a;->m:Ljava/util/List;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    :goto_0
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    if-gtz v2, :cond_f

    :cond_2
    iget-object v9, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    monitor-enter v9

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v8

    :goto_3
    const/4 v1, 0x2

    if-lt v3, v1, :cond_a

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_4
    invoke-static {v1}, Lcom/powermo/smartshow/activity/l;->a(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/powermo/smartshow/activity/a;->k:Lcom/powermo/smartshow/activity/n;

    invoke-virtual {v4, v1}, Lcom/powermo/smartshow/activity/n;->a(Landroid/content/pm/ResolveInfo;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/powermo/smartshow/activity/i;

    invoke-direct {v5}, Lcom/powermo/smartshow/activity/i;-><init>()V

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/powermo/smartshow/activity/a;->b(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->d(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    new-array v4, v10, [Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Ljava/lang/String;)V

    invoke-static {v5}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/String;

    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v4, v8

    new-array v4, v10, [Landroid/graphics/drawable/Drawable;

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;[Landroid/graphics/drawable/Drawable;)V

    invoke-static {v5}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aput-object v1, v4, v8

    invoke-static {v5}, Lcom/powermo/smartshow/activity/i;->f(Lcom/powermo/smartshow/activity/i;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    invoke-static {v5}, Lcom/powermo/smartshow/activity/i;->g(Lcom/powermo/smartshow/activity/i;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Lcom/powermo/smartshow/activity/a;->f:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_7
    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const-string v1, "AppList"

    const-string v4, "remove items with no resource"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    :try_start_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/pm/ResolveInfo;

    move-object v7, v0

    invoke-static {v7}, Lcom/powermo/smartshow/activity/a;->a(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/powermo/smartshow/activity/a;->a(Ljava/lang/String;)Lcom/powermo/smartshow/activity/i;

    move-result-object v1

    if-nez v1, :cond_9

    const-string v3, ""

    const-string v4, ""

    invoke-static {v7}, Lcom/powermo/smartshow/activity/a;->b(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/powermo/smartshow/activity/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/powermo/smartshow/activity/i;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_3

    invoke-static {v1, v7}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;Landroid/content/pm/ResolveInfo;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_a
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-nez v3, :cond_c

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    move-object v2, v1

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    move-object v2, v1

    goto :goto_4

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/activity/i;

    invoke-direct {p0, v1, p1}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/i;Z)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/activity/i;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :cond_f
    move v1, v2

    goto/16 :goto_0
.end method

.method static synthetic d(Lcom/powermo/smartshow/activity/a;)Lcom/powermo/smartshow/activity/j;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->r:Lcom/powermo/smartshow/activity/j;

    return-object v0
.end method

.method private e()Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "NAME"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "DISPLAY_NAME"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "FLAGS"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "CONFIG"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "WEIGHT"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "MODE"

    aput-object v1, v2, v0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_0
.end method

.method static synthetic e(Lcom/powermo/smartshow/activity/a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic f(Lcom/powermo/smartshow/activity/a;)Ljava/text/Collator;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->s:Ljava/text/Collator;

    return-object v0
.end method

.method private f()V
    .locals 7

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->e()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    :cond_1
    const-string v3, "MODE"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "NAME"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_3
    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->l:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->l:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/powermo/smartshow/activity/i;

    invoke-direct {v5}, Lcom/powermo/smartshow/activity/i;-><init>()V

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;I)V

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->a(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    const-string v4, "DISPLAY_NAME"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    const-string v4, "FLAGS"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->c(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    const-string v4, "CONFIG"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->d(Lcom/powermo/smartshow/activity/i;Ljava/lang/String;)V

    const-string v4, "WEIGHT"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v5, v4}, Lcom/powermo/smartshow/activity/i;->b(Lcom/powermo/smartshow/activity/i;I)V

    const-string v4, "show"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    const-string v4, "hide"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private g()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->b(Z)V

    :cond_0
    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->g()V

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->f()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private i()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/a;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    sget-object v1, Lcom/powermo/smartshow/activity/a;->a:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/powermo/smartshow/activity/a;->q:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->e:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->q:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public a(Z)Ljava/util/ArrayList;
    .locals 2

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->b:Ljava/util/ArrayList;

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->c:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->f()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->c(Z)V

    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->b(Z)V

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->i()V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/powermo/smartshow/activity/i;Landroid/content/Context;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/powermo/smartshow/activity/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";;;"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    const-string v4, "///"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, v3, v1

    aget-object v3, v3, v8

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    array-length v4, v2

    if-ne v4, v8, :cond_5

    if-ltz p3, :cond_4

    sget-object v4, Lcom/powermo/smartshow/activity/w;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    :try_start_0
    invoke-virtual {p2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_3
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    const-wide/16 v3, 0x1f4

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_4
    const/16 v4, 0x4000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    :cond_5
    if-ltz p3, :cond_6

    sget-object v4, Lcom/powermo/smartshow/activity/w;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v6, p3, v0

    array-length v7, v2

    rem-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    sget-object v4, Lcom/powermo/smartshow/activity/w;->p:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public a(Lcom/powermo/smartshow/activity/j;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/a;->r:Lcom/powermo/smartshow/activity/j;

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->j:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->j()V

    :goto_1
    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->g()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/powermo/smartshow/activity/a;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/activity/a;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/powermo/smartshow/activity/a;->b(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/a;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/a;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
