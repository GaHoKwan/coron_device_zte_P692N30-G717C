.class public Lcom/powermo/SmartBar/cm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/powermo/SmartBar/bv;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/hardware/display/DisplayManager;

.field private final e:Lcom/powermo/SmartBar/ck;

.field private final f:Landroid/os/Handler;

.field private final g:Z

.field private h:I

.field private i:Z

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/widget/ImageView;

.field private o:Lcom/powermo/ui/SmartShowThumbnailView;

.field private p:Landroid/app/Dialog;

.field private q:Z

.field private r:Z

.field private s:Lcom/powermo/SmartBar/cq;

.field private t:I

.field private u:Lcom/powermo/SmartBar/cp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->j:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->k:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->m:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->n:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    iput-object v2, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    iput-boolean v1, p0, Lcom/powermo/SmartBar/cm;->q:Z

    iput-boolean v1, p0, Lcom/powermo/SmartBar/cm;->r:Z

    new-instance v0, Lcom/powermo/SmartBar/cq;

    invoke-direct {v0, p0, v2}, Lcom/powermo/SmartBar/cq;-><init>(Lcom/powermo/SmartBar/cm;Lcom/powermo/SmartBar/cq;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    iput v1, p0, Lcom/powermo/SmartBar/cm;->t:I

    new-instance v0, Lcom/powermo/SmartBar/cp;

    invoke-direct {v0, p0, v2}, Lcom/powermo/SmartBar/cp;-><init>(Lcom/powermo/SmartBar/cm;Lcom/powermo/SmartBar/cp;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    iput-object p1, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->f:Landroid/os/Handler;

    new-instance v0, Lcom/powermo/SmartBar/bv;

    invoke-direct {v0, p1}, Lcom/powermo/SmartBar/bv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->d:Landroid/hardware/display/DisplayManager;

    new-instance v0, Lcom/powermo/SmartBar/ck;

    iget-object v2, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/powermo/SmartBar/cm;->f:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/powermo/SmartBar/ck;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->e:Lcom/powermo/SmartBar/ck;

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/powermo/SmartBar/dc;->w:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/powermo/SmartBar/cm;->g:Z

    sget v0, Lcom/powermo/SmartBar/dc;->x:I

    iput v0, p0, Lcom/powermo/SmartBar/cm;->h:I

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/ck;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->e:Lcom/powermo/SmartBar/ck;

    return-object v0
.end method

.method private a(I)V
    .locals 9

    const/16 v3, 0x32

    const/16 v8, 0x1f4

    const/16 v0, 0x46

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v4, "cfg_shopm_x"

    invoke-virtual {v1, v4, v8}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v4, "cfg_shopm_y"

    invoke-virtual {v1, v4, v8}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v4

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v5, "cfg_shopm_p"

    invoke-virtual {v1, v5, v0}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v5

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v6, "cfg_shopm_fw"

    const/16 v7, 0xc8

    invoke-virtual {v1, v6, v7}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v7, "cfg_shopm_fh"

    invoke-virtual {v1, v7, v8}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v7

    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->d:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    add-int v1, v5, p1

    if-le v1, v0, :cond_0

    move v1, v3

    :cond_0
    if-ge v1, v3, :cond_3

    :goto_0
    mul-int v1, v6, v0

    div-int/2addr v1, v5

    mul-int v3, v7, v0

    div-int v5, v3, v5

    iget-boolean v3, p0, Lcom/powermo/SmartBar/cm;->r:Z

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    add-int v1, v4, v7

    sub-int/2addr v1, v5

    if-gez v1, :cond_1

    move v1, v2

    :cond_1
    invoke-direct {p0, v3, v1, v0}, Lcom/powermo/SmartBar/cm;->a(III)V

    return-void

    :cond_2
    iget v3, v8, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    move v3, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(II)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v2, "cfg_shopm_p"

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v3}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v3, "cfg_shopm_fw"

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v4, p0, Lcom/powermo/SmartBar/cm;->d:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v4, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p2, v2}, Lcom/powermo/SmartBar/cm;->a(III)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Lcom/powermo/SmartBar/cm;->a(ZZ)V

    return-void

    :cond_0
    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v0, v3, v0

    goto :goto_0
.end method

.method private a(III)V
    .locals 11

    iget-object v5, p0, Lcom/powermo/SmartBar/cm;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->k:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/powermo/SmartBar/cm;->m:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    if-eqz v5, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x5a

    if-le p3, v0, :cond_7

    const/16 v0, 0x5a

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    const/16 v0, 0xa

    :cond_2
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/powermo/SmartBar/cm;->d:Landroid/hardware/display/DisplayManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v9, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    iget v1, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v8

    add-int v3, v1, v9

    add-int v1, p1, v2

    add-int v4, p2, v3

    if-gez p1, :cond_3

    const/4 p1, 0x0

    move v1, v2

    :cond_3
    iget v10, v7, Landroid/graphics/Point;->x:I

    if-le v1, v10, :cond_6

    iget v1, v7, Landroid/graphics/Point;->x:I

    sub-int p1, v1, v2

    move v2, v1

    :goto_2
    if-gez p2, :cond_5

    const/4 p2, 0x0

    move v1, v3

    :goto_3
    iget v4, v7, Landroid/graphics/Point;->y:I

    if-le v1, v4, :cond_4

    iget v1, v7, Landroid/graphics/Point;->y:I

    sub-int p2, v1, v3

    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v10, p2

    add-int/2addr v8, v10

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v2, v10

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v1, v10

    sub-int/2addr v1, v9

    invoke-direct {v4, v7, v8, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v1, p1

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setX(F)V

    int-to-float v1, p2

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->e:Lcom/powermo/SmartBar/ck;

    invoke-virtual {v1, v4}, Lcom/powermo/SmartBar/ck;->a(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v2, "cfg_shopm_x"

    iget v5, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2, v5}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v2, "cfg_shopm_y"

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v3}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v2, "cfg_shopm_p"

    invoke-virtual {v1, v2, v0}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_shopm_fw"

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v1, "cfg_shopm_fh"

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/bv;->b(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    move v1, v4

    goto/16 :goto_3

    :cond_6
    move v2, v1

    goto/16 :goto_2

    :cond_7
    move v0, p3

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cm;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/cm;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cm;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/powermo/SmartBar/cm;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cm;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/powermo/SmartBar/cm;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/powermo/SmartBar/cm;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/powermo/SmartBar/cm;->a(ZZ)V

    return-void
.end method

.method private a(ZZ)V
    .locals 9

    const/16 v5, 0x1f4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v3, "cfg_shopm_x"

    invoke-virtual {v2, v3, v5}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v4, "cfg_shopm_y"

    invoke-virtual {v3, v4, v5}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v5, "cfg_shopm_p"

    const/16 v6, 0x46

    invoke-virtual {v4, v5, v6}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/powermo/SmartBar/cm;->b:Lcom/powermo/SmartBar/bv;

    const-string v6, "cfg_shopm_fw"

    const/16 v7, 0xc8

    invoke-virtual {v5, v6, v7}, Lcom/powermo/SmartBar/bv;->a(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    iget-object v7, p0, Lcom/powermo/SmartBar/cm;->d:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-boolean v7, p0, Lcom/powermo/SmartBar/cm;->r:Z

    if-eqz p1, :cond_4

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v7

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_3

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-direct {p0, v1, v3, v4}, Lcom/powermo/SmartBar/cm;->a(III)V

    :cond_1
    iput-boolean v0, p0, Lcom/powermo/SmartBar/cm;->r:Z

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->n:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->n:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    const v0, 0x7f020043

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    return-void

    :cond_3
    iget v0, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v5

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    :cond_4
    div-int/lit8 v7, v5, 0x2

    add-int/2addr v2, v7

    iget v7, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v7, 0x2

    if-ge v2, v7, :cond_0

    iget v0, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v5

    move v8, v1

    move v1, v0

    move v0, v8

    goto :goto_0

    :cond_5
    const v0, 0x7f020042

    goto :goto_1
.end method

.method private b()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f07002f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f070035

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/powermo/ui/SmartShowThumbnailView;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-virtual {v0, v4}, Lcom/powermo/ui/SmartShowThumbnailView;->a(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-virtual {v0, v4}, Lcom/powermo/ui/SmartShowThumbnailView;->b(Z)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    invoke-virtual {v0, v4}, Lcom/powermo/ui/SmartShowThumbnailView;->a(I)V

    const v0, 0x7f070030

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f070036

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f070034

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->m:Landroid/widget/FrameLayout;

    const v0, 0x7f070033

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070031

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->n:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070032

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07003b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f07003c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f070037

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f07003a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f070039

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f070038

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->s:Lcom/powermo/SmartBar/cq;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->a:Landroid/content/Context;

    sget v3, Lcom/powermo/SmartBar/dc;->h:I

    invoke-direct {v0, v1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    new-instance v1, Lcom/powermo/SmartBar/cn;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/cn;-><init>(Lcom/powermo/SmartBar/cm;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f040011

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v7, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget v2, Lcom/powermo/SmartBar/dc;->m:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, p0, Lcom/powermo/SmartBar/cm;->t:I

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput-boolean v4, p0, Lcom/powermo/SmartBar/cm;->i:Z

    iget v2, p0, Lcom/powermo/SmartBar/cm;->h:I

    packed-switch v2, :pswitch_data_0

    iput v4, p0, Lcom/powermo/SmartBar/cm;->h:I

    iget-boolean v2, p0, Lcom/powermo/SmartBar/cm;->g:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/powermo/SmartBar/dc;->y:Z

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Lcom/powermo/SmartBar/cm;->i:Z

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v1}, Lcom/powermo/SmartBar/cp;->b()V

    :goto_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/powermo/SmartBar/co;

    invoke-direct {v1, p0}, Lcom/powermo/SmartBar/co;-><init>(Lcom/powermo/SmartBar/cm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    :goto_1
    invoke-direct {p0, v5, v5}, Lcom/powermo/SmartBar/cm;->a(ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->b()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->a()V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v1}, Lcom/powermo/SmartBar/cp;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->b()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->a()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/powermo/SmartBar/cm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->i:Z

    return v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/cp;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->u:Lcom/powermo/SmartBar/cp;

    return-object v0
.end method

.method private c()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->e:Lcom/powermo/SmartBar/ck;

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/ck;->a(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->j:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->o:Lcom/powermo/ui/SmartShowThumbnailView;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->k:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->m:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/powermo/SmartBar/cm;->n:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/SmartBar/cm;->q:Z

    return-void
.end method

.method static synthetic d(Lcom/powermo/SmartBar/cm;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-direct {p0}, Lcom/powermo/SmartBar/cm;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/powermo/SmartBar/cm;->b()V

    :cond_2
    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->p:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/powermo/SmartBar/cm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/cm;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/powermo/SmartBar/cm;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/cm;->t:I

    return v0
.end method

.method static synthetic g(Lcom/powermo/SmartBar/cm;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/cm;->h:I

    return v0
.end method

.method static synthetic h(Lcom/powermo/SmartBar/cm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->g:Z

    return v0
.end method

.method static synthetic i(Lcom/powermo/SmartBar/cm;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/SmartBar/cm;->c()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/cm;->a(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/cm;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/cm;->a(Z)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/SmartBar/cm;->q:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/powermo/SmartBar/cm;->q:Z

    invoke-direct {p0}, Lcom/powermo/SmartBar/cm;->d()V

    goto :goto_0
.end method
