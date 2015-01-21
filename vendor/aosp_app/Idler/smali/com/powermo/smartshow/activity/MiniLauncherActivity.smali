.class public Lcom/powermo/smartshow/activity/MiniLauncherActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/powermo/smartshow/activity/o;

.field private b:Landroid/widget/GridView;

.field private c:Landroid/view/LayoutInflater;

.field private d:Lcom/powermo/smartshow/activity/a;

.field private e:Lcom/powermo/smartshow/activity/k;

.field private f:Lcom/powermo/smartshow/activity/n;

.field private g:Lcom/powermo/b/b;

.field private h:J

.field private i:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->b:Landroid/widget/GridView;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->c:Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->g:Lcom/powermo/b/b;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->h:J

    new-instance v0, Lcom/powermo/smartshow/activity/t;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/t;-><init>(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/powermo/smartshow/activity/u;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/activity/u;-><init>(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a:Lcom/powermo/smartshow/activity/o;

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    return-object v0
.end method

.method static synthetic b(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)Lcom/powermo/smartshow/activity/k;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->h:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iput-wide v2, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->h:J

    const v0, 0x7f050005

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->g:Lcom/powermo/b/b;

    invoke-virtual {v2}, Lcom/powermo/b/b;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->g:Lcom/powermo/b/b;

    invoke-virtual {v2, v1}, Lcom/powermo/b/b;->b(I)I

    move-result v2

    iget-object v3, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->g:Lcom/powermo/b/b;

    if-ne v2, v0, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v3, v1, v0}, Lcom/powermo/b/b;->a(II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->setContentView(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->c:Landroid/view/LayoutInflater;

    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->b:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->i:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Lcom/powermo/smartshow/activity/n;->a(Landroid/content/Context;)Lcom/powermo/smartshow/activity/n;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    invoke-static {p0, v0}, Lcom/powermo/smartshow/activity/w;->a(Landroid/content/Context;Lcom/powermo/smartshow/activity/n;)V

    new-instance v0, Lcom/powermo/smartshow/activity/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    invoke-direct {v0, p0, v1, v2}, Lcom/powermo/smartshow/activity/a;-><init>(Landroid/content/Context;ZLcom/powermo/smartshow/activity/n;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    new-instance v0, Lcom/powermo/smartshow/activity/k;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    iget-object v2, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->c:Landroid/view/LayoutInflater;

    invoke-direct {v0, v3, v1, v2, p0}, Lcom/powermo/smartshow/activity/k;-><init>(ZLcom/powermo/smartshow/activity/a;Landroid/view/LayoutInflater;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    invoke-virtual {v0}, Lcom/powermo/smartshow/activity/a;->a()V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->b:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    new-instance v1, Lcom/powermo/smartshow/activity/v;

    invoke-direct {v1, p0}, Lcom/powermo/smartshow/activity/v;-><init>(Lcom/powermo/smartshow/activity/MiniLauncherActivity;)V

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/j;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a:Lcom/powermo/smartshow/activity/o;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/n;->a(Lcom/powermo/smartshow/activity/o;)V

    invoke-static {}, Lcom/powermo/b/b;->a()Lcom/powermo/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->g:Lcom/powermo/b/b;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->b:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->d:Lcom/powermo/smartshow/activity/a;

    invoke-virtual {v0}, Lcom/powermo/smartshow/activity/a;->b()V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->f:Lcom/powermo/smartshow/activity/n;

    iget-object v1, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->a:Lcom/powermo/smartshow/activity/o;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/activity/n;->b(Lcom/powermo/smartshow/activity/o;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/activity/MiniLauncherActivity;->e:Lcom/powermo/smartshow/activity/k;

    invoke-virtual {v0}, Lcom/powermo/smartshow/activity/k;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
