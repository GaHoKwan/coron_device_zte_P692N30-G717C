.class public Lzte/com/cn/driverMode/ui/DMStatisActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Landroid/widget/SimpleAdapter;

.field protected b:Ljava/util/ArrayList;

.field protected c:Landroid/content/Context;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field private s:Landroid/widget/ListView;

.field private t:Landroid/widget/ImageButton;

.field private u:Lzte/com/cn/driverMode/service/by;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->h:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->i:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->j:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->k:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->l:I

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->q:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->r:Ljava/lang/String;

    return-void
.end method

.method private static a(II)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "###.0"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "0.0%"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "activityname"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "counts"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "proportion"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->setContentView(I)V

    new-instance v0, Lzte/com/cn/driverMode/service/by;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f080101

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->h:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f080102

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->i:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f080103

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->j:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f080104

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->k:I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->u:Lzte/com/cn/driverMode/service/by;

    const v1, 0x7f080105

    invoke-virtual {p0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->l:I

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->h:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->i:I

    add-int/2addr v0, v1

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->l:I

    add-int/2addr v0, v1

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->h:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->n:Ljava/lang/String;

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->i:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->o:Ljava/lang/String;

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->j:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->p:Ljava/lang/String;

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->k:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->q:Ljava/lang/String;

    iget v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->l:I

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->m:I

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->r:Ljava/lang/String;

    const v0, 0x7f0b0101

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->t:Landroid/widget/ImageButton;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->t:Landroid/widget/ImageButton;

    new-instance v1, Lzte/com/cn/driverMode/ui/dt;

    invoke-direct {v1, p0}, Lzte/com/cn/driverMode/ui/dt;-><init>(Lzte/com/cn/driverMode/ui/DMStatisActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->b:Ljava/util/ArrayList;

    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->b:Ljava/util/ArrayList;

    const v3, 0x7f030044

    new-array v4, v6, [Ljava/lang/String;

    const-string v1, "activityname"

    aput-object v1, v4, v5

    const/4 v1, 0x1

    const-string v5, "counts"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "proportion"

    aput-object v5, v4, v1

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a:Landroid/widget/SimpleAdapter;

    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->s:Landroid/widget/ListView;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->h:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->n:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->i:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->o:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->j:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->p:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v1, 0x7f0800fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->q:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->c:Landroid/content/Context;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->l:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/DMStatisActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMStatisActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x4t 0x1t 0xbt 0x7ft
        0x5t 0x1t 0xbt 0x7ft
        0x6t 0x1t 0xbt 0x7ft
    .end array-data
.end method
