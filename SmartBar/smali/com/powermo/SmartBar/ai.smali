.class public Lcom/powermo/SmartBar/ai;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/os/Handler;

.field private b:Landroid/app/Dialog;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/powermo/b/a;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Landroid/media/AudioManager;

.field private o:Lcom/powermo/SmartBar/bv;

.field private p:Lcom/powermo/SmartBar/as;

.field private q:Lcom/powermo/SmartBar/at;

.field private r:Lcom/powermo/SmartBar/at;

.field private s:Lcom/powermo/SmartBar/at;

.field private t:Lcom/powermo/SmartBar/at;

.field private u:Lcom/powermo/SmartBar/at;

.field private v:Lcom/powermo/SmartBar/at;

.field private w:I

.field private x:Z

.field private y:I

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/powermo/SmartBar/db;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/powermo/SmartBar/ai;->d:Z

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->h:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    new-instance v0, Lcom/powermo/SmartBar/as;

    invoke-direct {v0, p0, v1}, Lcom/powermo/SmartBar/as;-><init>(Lcom/powermo/SmartBar/ai;Lcom/powermo/SmartBar/as;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    new-instance v0, Lcom/powermo/SmartBar/aj;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/aj;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->q:Lcom/powermo/SmartBar/at;

    new-instance v0, Lcom/powermo/SmartBar/ak;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ak;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->r:Lcom/powermo/SmartBar/at;

    new-instance v0, Lcom/powermo/SmartBar/al;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/al;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->s:Lcom/powermo/SmartBar/at;

    new-instance v0, Lcom/powermo/SmartBar/am;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/am;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->t:Lcom/powermo/SmartBar/at;

    new-instance v0, Lcom/powermo/SmartBar/an;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/an;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->u:Lcom/powermo/SmartBar/at;

    new-instance v0, Lcom/powermo/SmartBar/ao;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ao;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->v:Lcom/powermo/SmartBar/at;

    iput v2, p0, Lcom/powermo/SmartBar/ai;->w:I

    iput-boolean v2, p0, Lcom/powermo/SmartBar/ai;->x:Z

    iput v2, p0, Lcom/powermo/SmartBar/ai;->y:I

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/ap;

    invoke-direct {v0, p0}, Lcom/powermo/SmartBar/ap;-><init>(Lcom/powermo/SmartBar/ai;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->z:Ljava/lang/Runnable;

    invoke-static {}, Lcom/powermo/b/a;->a()Lcom/powermo/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    iput-object p1, p0, Lcom/powermo/SmartBar/ai;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/SmartBar/ai;->k:Z

    iput-boolean v0, p0, Lcom/powermo/SmartBar/ai;->l:Z

    iput-boolean v2, p0, Lcom/powermo/SmartBar/ai;->m:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->n:Landroid/media/AudioManager;

    new-instance v0, Lcom/powermo/SmartBar/bv;

    invoke-direct {v0, p1}, Lcom/powermo/SmartBar/bv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->o:Lcom/powermo/SmartBar/bv;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ai;)Lcom/powermo/b/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ai;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ai;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/ai;->x:Z

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ai;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/ai;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ai;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ai;->x:Z

    return v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/ai;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->n:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/ai;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->z:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a()V
    .locals 8

    const/16 v7, 0x8

    const v6, 0x7f070027

    const v5, 0x7f070023

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    invoke-virtual {v0, v3}, Lcom/powermo/b/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/SmartBar/ai;->w:I

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    const v1, 0x7f070028

    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->q:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    const v1, 0x7f070026

    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->r:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    const v1, 0x7f070025

    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->s:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    const v1, 0x7f070024

    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->u:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    const v0, 0x7f070026

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->h:Landroid/view/View;

    sget-boolean v0, Lcom/powermo/SmartBar/dc;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->v:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v5, v1, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    invoke-virtual {p0, v5}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    :goto_0
    sget-boolean v0, Lcom/powermo/SmartBar/dc;->f:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->t:Lcom/powermo/SmartBar/at;

    invoke-virtual {v0, v6, v1, v4, v3}, Lcom/powermo/SmartBar/as;->a(ILcom/powermo/SmartBar/at;II)V

    invoke-virtual {p0, v6}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v5}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v6}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    goto :goto_1
.end method

.method a(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "status_control_panel"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v3, p0, Lcom/powermo/SmartBar/ai;->k:Z

    :cond_0
    :goto_0
    const-string v1, "1"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/powermo/SmartBar/ai;->l:Z

    :cond_1
    :goto_1
    const-string v1, "1"

    aget-object v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iput-boolean v3, p0, Lcom/powermo/SmartBar/ai;->m:Z

    :cond_2
    :goto_2
    const-string v0, "status_splitbar_position"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iput v4, p0, Lcom/powermo/SmartBar/ai;->y:I

    :cond_3
    :goto_3
    const-string v0, "need_adjust_displaymode"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->b()I

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->o:Lcom/powermo/SmartBar/bv;

    invoke-virtual {v2}, Lcom/powermo/SmartBar/bv;->d()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_a

    iget-boolean v3, p0, Lcom/powermo/SmartBar/ai;->d:Z

    if-nez v3, :cond_a

    if-ltz v0, :cond_a

    if-ne v0, v1, :cond_a

    invoke-virtual {p0, v4}, Lcom/powermo/SmartBar/ai;->c(Z)V

    invoke-virtual {p0, v4}, Lcom/powermo/SmartBar/ai;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->o:Lcom/powermo/SmartBar/bv;

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/bv;->a(I)V

    const-string v0, "WALA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "need_adjust_displaymode:adjusted: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->f()V

    return-void

    :cond_5
    const-string v1, "0"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/powermo/SmartBar/ai;->k:Z

    goto/16 :goto_0

    :cond_6
    const-string v1, "0"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/powermo/SmartBar/ai;->l:Z

    goto/16 :goto_1

    :cond_7
    const-string v1, "0"

    aget-object v0, v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v4, p0, Lcom/powermo/SmartBar/ai;->m:Z

    goto/16 :goto_2

    :cond_8
    const-string v1, "1"

    aget-object v2, v0, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iput v5, p0, Lcom/powermo/SmartBar/ai;->y:I

    goto :goto_3

    :cond_9
    const-string v1, "-1"

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/powermo/SmartBar/ai;->y:I

    goto/16 :goto_3

    :cond_a
    const-string v0, "WALA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "need_adjust_displaymode:notshown: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method a(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    invoke-virtual {v0, v2, v2, v2}, Lcom/powermo/b/a;->a(IIZ)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    invoke-virtual {v0, v2, v3, v2}, Lcom/powermo/b/a;->a(IIZ)V

    invoke-virtual {p0, v2}, Lcom/powermo/SmartBar/ai;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    const v1, 0x7f070025

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/as;->a(I)Lcom/powermo/SmartBar/ar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v2}, Lcom/powermo/SmartBar/ar;->a(ZII)V

    :cond_0
    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/ai;->w:I

    return v0
.end method

.method b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ai;->d:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/ai;->d:Z

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->d()V

    goto :goto_0
.end method

.method c()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->d()V

    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/ai;->x:Z

    return-void
.end method

.method d()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->e()V

    :cond_0
    iget-boolean v0, p0, Lcom/powermo/SmartBar/ai;->d:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->c:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030005

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->a()V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->c:Landroid/content/Context;

    sget v2, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    const-string v1, "ControlPanel"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/aq;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/aq;-><init>(Lcom/powermo/SmartBar/ai;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v2, Lcom/powermo/SmartBar/dc;->l:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->f()V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->g()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->d()V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->f()V

    return-void
.end method

.method e()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->p:Lcom/powermo/SmartBar/as;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/as;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->e:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->f:Landroid/view/View;

    iput-object v1, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method f()V
    .locals 9

    const/16 v6, 0x30

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v4, 0x4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/powermo/SmartBar/ai;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    invoke-virtual {v0, v2}, Lcom/powermo/b/a;->b(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/SmartBar/ai;->w:I

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->f:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v7, p0, Lcom/powermo/SmartBar/ai;->f:Landroid/view/View;

    iget-boolean v3, p0, Lcom/powermo/SmartBar/ai;->m:Z

    if-eqz v3, :cond_9

    move v3, v4

    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->j:Lcom/powermo/b/a;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parameter_is_idler:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/powermo/SmartBar/ai;->w:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/powermo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    if-eqz v7, :cond_3

    if-eqz v3, :cond_a

    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/powermo/SmartBar/ai;->h:Landroid/view/View;

    if-eqz v7, :cond_4

    if-eqz v3, :cond_b

    const-string v7, "1"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->h:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    :goto_4
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_d

    iget v3, p0, Lcom/powermo/SmartBar/ai;->w:I

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    const v7, 0x7f020003

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_5
    iget v3, p0, Lcom/powermo/SmartBar/ai;->w:I

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/powermo/SmartBar/ai;->k:Z

    if-eqz v7, :cond_f

    :goto_6
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_7
    iget-object v2, p0, Lcom/powermo/SmartBar/ai;->b:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v2, 0x11

    sget v4, Lcom/powermo/SmartBar/dc;->g:I

    if-nez v4, :cond_6

    if-eqz v0, :cond_12

    move v2, v5

    :cond_6
    :goto_8
    iget v4, p0, Lcom/powermo/SmartBar/ai;->y:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_14

    if-eqz v0, :cond_13

    :cond_7
    :goto_9
    or-int v0, v2, v6

    invoke-virtual {v3, v0}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p0}, Lcom/powermo/SmartBar/ai;->g()V

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_1

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    iget-object v7, p0, Lcom/powermo/SmartBar/ai;->g:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_b
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->h:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    const v7, 0x7f020028

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_d
    iget v3, p0, Lcom/powermo/SmartBar/ai;->w:I

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    const v7, 0x7f020019

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_e
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    const v7, 0x7f020010

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_5

    :cond_f
    move v4, v2

    goto :goto_6

    :cond_10
    iget-object v3, p0, Lcom/powermo/SmartBar/ai;->i:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/powermo/SmartBar/ai;->l:Z

    if-eqz v7, :cond_11

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_11
    move v4, v2

    goto :goto_a

    :cond_12
    move v2, v6

    goto :goto_8

    :cond_13
    const/4 v6, 0x3

    goto :goto_9

    :cond_14
    iget v4, p0, Lcom/powermo/SmartBar/ai;->y:I

    if-ne v4, v1, :cond_16

    if-eqz v0, :cond_15

    const/16 v5, 0x50

    :cond_15
    move v6, v5

    goto :goto_9

    :cond_16
    iget v1, p0, Lcom/powermo/SmartBar/ai;->w:I

    if-nez v1, :cond_17

    if-nez v0, :cond_7

    const/4 v6, 0x3

    goto :goto_9

    :cond_17
    if-eqz v0, :cond_18

    const/16 v5, 0x50

    :cond_18
    move v6, v5

    goto :goto_9
.end method

.method g()V
    .locals 4

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/ai;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/powermo/SmartBar/ai;->z:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
