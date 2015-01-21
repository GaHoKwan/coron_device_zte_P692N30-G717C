.class Lcom/powermo/smartshow/frameworks/ad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;


# static fields
.field private static t:I

.field private static u:I

.field private static v:I

.field private static w:I

.field private static x:I

.field private static y:I


# instance fields
.field private A:Lcom/android/server/FullSmartShowContext;

.field private B:Landroid/graphics/Rect;

.field private final C:Landroid/util/SparseArray;

.field private final D:Landroid/util/SparseArray;

.field private E:Landroid/hardware/display/DisplayManager;

.field private F:Z

.field private G:Landroid/graphics/Region;

.field private H:I

.field private I:I

.field private J:Landroid/graphics/Rect;

.field private K:Landroid/graphics/Rect;

.field private L:[I

.field private M:I

.field private N:I

.field private final O:Ljava/util/ArrayList;

.field private P:[I

.field private Q:Landroid/graphics/Rect;

.field private final R:Landroid/util/SparseArray;

.field private final S:Landroid/util/SparseArray;

.field private T:Landroid/util/SparseArray;

.field private U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

.field private V:[I

.field private W:Landroid/graphics/Rect;

.field private X:Landroid/graphics/Point;

.field private Y:Landroid/content/Context;

.field private Z:[I

.field a:Z

.field private aa:Landroid/util/SparseArray;

.field private ab:I

.field private ac:Z

.field b:F

.field c:Z

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Lcom/android/server/am/a;

.field j:Lcom/powermo/smartshow/frameworks/ae;

.field k:Z

.field l:Lcom/powermo/smartshow/frameworks/c;

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:I

.field r:Landroid/graphics/Rect;

.field s:Z

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x20

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sput v1, Lcom/powermo/smartshow/frameworks/ad;->x:I

    const/16 v0, 0xa0

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->w:I

    sput v1, Lcom/powermo/smartshow/frameworks/ad;->v:I

    const/4 v0, 0x1

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->u:I

    const/4 v0, 0x2

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->t:I

    return-void
.end method

.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    iput-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->M:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->G:Landroid/graphics/Region;

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->ac:Z

    iput v3, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    const-string v0, "com.powermo.mutliwindow.exit"

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->z:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->e:I

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->g:I

    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, -0x280

    const/16 v2, 0x1e0

    invoke-direct {v0, v3, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iput v3, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    iput-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->i:Lcom/android/server/am/a;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->s:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->a:Z

    iput v4, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->n:Z

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v0, p0}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(Lcom/powermo/smartshow/frameworks/SmartShowManagerService$IFrameworkEventListener;)V

    invoke-static {}, Landroid/content/SmartShowContextWrapper;->getDefaultContext()Landroid/content/SmartShowContextWrapper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SmartShowContextWrapper;->getBaseContext()Landroid/content/SmartShowContext;

    move-result-object v0

    check-cast v0, Lcom/android/server/FullSmartShowContext;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->A:Lcom/android/server/FullSmartShowContext;

    return-void
.end method

.method private a([Landroid/graphics/Rect;)F
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-object v0, p1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    aget-object v1, p1, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    aget-object v1, p1, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/ad;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->e(II)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/ad;)Lcom/powermo/smartshow/frameworks/SmartShowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    return-object v0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/server/SmartShowEvent;

    iget-object v0, p1, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v1

    sget-boolean v2, Lcom/powermo/smartshow/frameworks/d;->CLEAN_REMOTE_TASK:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/powermo/smartshow/frameworks/l;->b(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/android/server/am/a;Lcom/android/server/am/a;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->allowMultiInstance(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/powermo/smartshow/frameworks/ad;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    return-object v0
.end method

.method private b(IZ)Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_0
    if-eqz p2, :cond_4

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-eq v1, v0, :cond_3

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    :cond_3
    if-eqz p2, :cond_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/powermo/smartshow/frameworks/ad;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    return-object v0
.end method

.method private e(II)I
    .locals 10

    const-wide/16 v8, 0x3e8

    const/4 v2, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v2, p1, p2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v6

    if-lez p2, :cond_2

    move v2, v4

    :goto_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/a;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/af;

    iput-object v0, v1, Lcom/powermo/smartshow/frameworks/af;->d:Lcom/android/server/am/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/af;

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->v:I

    iput v5, v1, Lcom/powermo/smartshow/frameworks/af;->f:I

    invoke-direct {p0, p1}, Lcom/powermo/smartshow/frameworks/ad;->m(I)V

    :cond_4
    move v5, v3

    :goto_2
    if-ge v5, v6, :cond_7

    if-nez v2, :cond_7

    if-eq v5, p1, :cond_5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    if-nez v1, :cond_6

    :cond_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Lcom/android/server/am/a;->k()Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/android/server/am/a;Lcom/android/server/am/a;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->u:I

    iput v2, v0, Lcom/powermo/smartshow/frameworks/af;->f:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powermo/smartshow/frameworks/af;

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powermo/smartshow/frameworks/af;

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/powermo/smartshow/frameworks/af;

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->a:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v5, v3}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v9}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v4

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_8

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/af;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/af;->a:Lcom/powermo/smartshow/frameworks/af;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/af;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/af;->a:Lcom/powermo/smartshow/frameworks/af;

    iget v2, v1, Lcom/powermo/smartshow/frameworks/af;->e:I

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/android/server/am/a;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    invoke-direct {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->a(Lcom/android/server/am/a;Lcom/android/server/am/a;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/powermo/smartshow/frameworks/af;->a:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v4, 0x4

    invoke-virtual {v1, v4, v2, v3}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    move v0, v3

    goto/16 :goto_0

    :cond_8
    move v0, v3

    goto/16 :goto_0
.end method

.method private f(ILjava/lang/Object;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    check-cast p2, Lcom/android/server/SmartShowEvent;

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-ne v0, v9, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v8}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v8}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move v4, v2

    :goto_1
    array-length v1, v0

    if-ge v4, v1, :cond_8

    aget-object v6, v0, v4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v7

    move v5, v2

    :goto_2
    if-ge v5, v7, :cond_5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    invoke-virtual {v1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    :goto_3
    if-ltz v5, :cond_7

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    invoke-virtual {v1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v8}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v7, v8}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_0
.end method

.method private g(ILjava/lang/Object;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    check-cast p2, Lcom/android/server/SmartShowEvent;

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v5

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v6, 0x5

    invoke-virtual {v4, v6, v5, v3}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v0}, Lcom/powermo/smartshow/frameworks/l;->b(Lcom/android/server/am/a;)V

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v4}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v4

    if-lt v5, v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status_in_fullscreen"

    const-string v4, "1"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iput-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->s:Z

    move v0, v2

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->s:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->s:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status_in_fullscreen"

    const-string v3, "0"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    if-ne v5, v4, :cond_0

    :cond_4
    if-nez v0, :cond_8

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    :goto_1
    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-eqz v4, :cond_a

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->i:Lcom/android/server/am/a;

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/am/a;->b()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.powermo.smartbar.action"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "cmd_show_toast"

    const-string v7, "Camera"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->a:Z

    if-nez v4, :cond_6

    if-eq v1, v0, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v1

    if-ge v5, v1, :cond_7

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "need_adjust_displaymode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_7
    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->a:Z

    move v0, v3

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v4, v2, v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getDstDisplayId(ILjava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_9

    move v4, v3

    :goto_3
    iput-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    goto/16 :goto_1

    :cond_9
    move v4, v2

    goto :goto_3

    :cond_a
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->i:Lcom/android/server/am/a;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/16 v7, 0x8

    invoke-virtual {v6, v7, v5, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x5dc

    invoke-virtual {v4, v6, v7, v8}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method private h(ILjava/lang/Object;)Z
    .locals 6

    const/4 v5, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    check-cast p2, Lcom/android/server/SmartShowEvent;

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v4

    monitor-enter p0

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    if-ne v1, v0, :cond_3

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v5}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v5}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private i(ILjava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    check-cast p2, Lcom/android/server/SmartShowEvent;

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v2

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_1
    monitor-exit p0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v1, 0x3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    sget v1, Lcom/powermo/smartshow/frameworks/ad;->t:I

    iput v1, v0, Lcom/powermo/smartshow/frameworks/af;->f:I

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0
.end method

.method private m(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v1, v0, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    iput-object v0, v1, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v1, v0, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    iput-object v0, v1, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->c:Lcom/powermo/smartshow/frameworks/af;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->b:Lcom/powermo/smartshow/frameworks/af;

    return-void
.end method

.method private q()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->v:I

    iput v2, v0, Lcom/powermo/smartshow/frameworks/af;->f:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/af;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/powermo/smartshow/frameworks/af;->d:Lcom/android/server/am/a;

    invoke-direct {p0, v1}, Lcom/powermo/smartshow/frameworks/ad;->m(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method a(II)I
    .locals 4

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iget v0, v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->a:I

    sub-int v3, p2, v0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v0, v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method a(IZ)I
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ac:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_1
    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    if-ge v0, v5, :cond_7

    if-eqz p2, :cond_3

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->P:[I

    aget v5, v5, v0

    :goto_2
    if-le v5, p1, :cond_4

    sub-int v6, v5, p1

    :goto_3
    if-lt v5, p1, :cond_5

    if-ge v6, v4, :cond_6

    move p1, v5

    :goto_4
    if-nez v0, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    :cond_2
    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->L:[I

    aget v5, v5, v0

    goto :goto_2

    :cond_4
    sub-int v6, p1, v5

    goto :goto_3

    :cond_5
    move v2, v0

    move v3, v5

    move v4, v6

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    move p1, v3

    goto :goto_4
.end method

.method a()V
    .locals 2

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SmartShowMultiWindowManager"

    const-string v1, "Exchange focus, multiwindow not enable, should not reach here"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ad;->l(I)V

    goto :goto_0
.end method

.method a(I)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    iput p1, p0, Lcom/powermo/smartshow/frameworks/ad;->e:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v5

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_1

    if-eq v3, p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/a;->g()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->isForcedOrientation(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/powermo/smartshow/frameworks/ad;->b(IZ)Z

    move-result v0

    if-nez v0, :cond_5

    iput p1, p0, Lcom/powermo/smartshow/frameworks/ad;->g:I

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->l(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.powermo.mutliwindow.exit"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v7}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v7}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v7}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3
.end method

.method a(ILandroid/graphics/Rect;)V
    .locals 8

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->E:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v6, 0x6

    iget v7, p0, Lcom/powermo/smartshow/frameworks/ad;->d:I

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/display/DisplayManager;->addVirtualDisplay(IIIIIII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aput v0, v1, p1

    :cond_0
    return-void
.end method

.method a(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->d(ILjava/lang/Object;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->a(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v1, v3}, Lcom/powermo/smartshow/frameworks/ad;->a(ZILjava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v0, Lcom/powermo/smartshow/frameworks/c;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/powermo/smartshow/frameworks/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->l:Lcom/powermo/smartshow/frameworks/c;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ss_multi_window_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->E:Landroid/hardware/display/DisplayManager;

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    new-instance v0, Lcom/powermo/smartshow/frameworks/ae;

    invoke-direct {v0, p0}, Lcom/powermo/smartshow/frameworks/ae;-><init>(Lcom/powermo/smartshow/frameworks/ad;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->b:F

    invoke-static {}, Lcom/powermo/smartshow/frameworks/d;->init()V

    sget v0, Lcom/powermo/smartshow/frameworks/d;->SPLIT_BAR_SIZE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sget v0, Lcom/powermo/smartshow/frameworks/d;->SPLIT_BAR_OVERLAP_SIZE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->x:I

    sget v0, Lcom/powermo/smartshow/frameworks/d;->CONTROL_PANEL_SIZE:I

    int-to-float v0, v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->b:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Lcom/powermo/smartshow/frameworks/ad;->w:I

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    new-instance v2, Lcom/powermo/smartshow/frameworks/af;

    invoke-direct {v2, p0, v0}, Lcom/powermo/smartshow/frameworks/af;-><init>(Lcom/powermo/smartshow/frameworks/ad;I)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method a(Landroid/graphics/RectF;)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->G:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->G:Landroid/graphics/Region;

    iget v1, p1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_0
.end method

.method a(Ljava/io/PrintWriter;)V
    .locals 4

    const/4 v1, 0x0

    const-string v0, "Multiple Window Manager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-nez v0, :cond_0

    const-string v0, "Enable false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current screen count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current focus screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current device portrait: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current split position: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current splitBar rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current controlPanel rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exclude focus region: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->G:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Landscape Rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Portrait Rect: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current input method show :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->n:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current input method rect :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has full screen activity :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max Screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "mCovered Activities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " covered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "mCoverring Activities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " covering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "mPreResumed Activities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " preresumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string v0, "mResumed Activities:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_3
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    if-ge v0, v2, :cond_8

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    screen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resumed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitiatePauseCoverScreen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsExitingMultiWindow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mExitFullscreen:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "SmartBar size:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    split bar size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    control panel size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->w:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Thumbnail displays:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_4
    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    if-ge v0, v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " display id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const-string v0, "Special size: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v1

    :goto_5
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->V:[I

    array-length v2, v2

    if-ge v0, v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->V:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window Size Limit: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->ac:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ac:Z

    if-eqz v0, :cond_b

    :goto_6
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    if-ge v1, v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->P:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->L:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method

.method a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->n:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/powermo/smartshow/frameworks/ad;->n:Z

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    goto :goto_0
.end method

.method a(ZILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(ZILjava/lang/Object;Z)V

    return-void
.end method

.method a(ZILjava/lang/Object;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v0, :cond_1

    const-string v0, "SmartShowMultiWindowManager"

    const-string v1, "Is exiting multi window mode, should not reach here"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-ne v0, p1, :cond_2

    if-nez p4, :cond_2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->M:I

    if-ne v0, v3, :cond_2

    if-eqz p3, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(I)V

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz p1, :cond_6

    move v0, v1

    :goto_2
    const-string v4, "ss_multi_window_enabled"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v3, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    iput-boolean p1, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    invoke-virtual {v0, v4, p2, p3}, Lcom/powermo/smartshow/frameworks/l;->a(ZILjava/lang/Object;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setFocusedDisplayId(I)I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->M:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->l:Lcom/powermo/smartshow/frameworks/c;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/c;->a()V

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iput-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    invoke-virtual {p0, v0, v3, v4}, Lcom/powermo/smartshow/frameworks/ad;->a(IIZ)Z

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.powermo.smartbar.action"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "status_in_fullscreen"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "status_splitbar_position"

    const-string v4, "0,-1,0,0"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v3

    move v0, v2

    :goto_3
    if-ge v0, v3, :cond_7

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    const/4 v5, 0x3

    invoke-virtual {v4, v0, v5}, Lcom/powermo/smartshow/frameworks/l;->e(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_7
    invoke-direct {p0}, Lcom/powermo/smartshow/frameworks/ad;->q()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v3

    move v0, v1

    :goto_4
    if-ge v0, v3, :cond_8

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->S:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->a:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iput-boolean v2, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->h:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/ah;->a(Z)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientation(Z)V

    :goto_5
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    :cond_a
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-ne v0, v5, :cond_b

    iput v1, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    :cond_b
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setFocusedDisplayId(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->l()V

    goto :goto_5
.end method

.method a([I)V
    .locals 7

    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/ad;->V:[I

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, 0x6

    aget v3, p1, v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    aget v4, p1, v1

    aget v5, p1, v0

    aget v6, p1, v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    aget v4, p1, v0

    aget v5, p1, v1

    const/4 v6, 0x2

    aget v6, p1, v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->E:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v3

    iput v3, p0, Lcom/powermo/smartshow/frameworks/ad;->d:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->i()V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->j()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    aget v4, p1, v1

    aget v5, p1, v6

    sub-int/2addr v4, v5

    aget v5, p1, v0

    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method a(IIZ)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/powermo/smartshow/frameworks/ad;->a(IZ)I

    move-result p2

    :cond_1
    if-nez p3, :cond_3

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/powermo/smartshow/frameworks/ad;->a(IZ)I

    move-result p1

    :cond_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v0, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move v0, v2

    :goto_0
    return v0

    :cond_5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_c

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eq v3, v4, :cond_6

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sget v7, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sub-int/2addr v3, v7

    :goto_1
    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v3, :cond_6

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v7

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_6
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v3, v4, :cond_b

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v7, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v3, v7

    :goto_2
    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    :cond_8
    :goto_3
    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v6, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v1, v2

    :goto_4
    if-eqz v1, :cond_11

    :goto_5
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    if-ge v2, v0, :cond_11

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v3, v0, v2

    if-lez v3, :cond_9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->d:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v5, v0}, Lcom/powermo/smartshow/frameworks/ah;->a(IILandroid/graphics/Rect;)I

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    goto/16 :goto_1

    :cond_b
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p2

    goto :goto_2

    :cond_c
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eq v3, v4, :cond_d

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget v7, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sub-int/2addr v3, v7

    :goto_6
    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v3, :cond_d

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v7

    iput v3, v1, Landroid/graphics/Rect;->right:I

    :cond_d
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v3, :cond_e

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_e
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v3, v4, :cond_10

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v7, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v3, v7

    :goto_7
    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_f
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p1, v3

    goto :goto_6

    :cond_10
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    goto :goto_7

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :cond_12
    move v1, v4

    goto/16 :goto_4
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->G:Landroid/graphics/Region;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->a(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/ad;->l(I)V

    goto :goto_0
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    return v0
.end method

.method b(ILandroid/graphics/Rect;)I
    .locals 4

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->E:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "SmartShowMultiWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can NOT get display for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalTop:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalLeft:I

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iget v1, v0, Landroid/view/DisplayInfo;->logicalTop:I

    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(I)Landroid/graphics/Rect;
    .locals 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    sget v1, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v1, v1, 0x2

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v2, v3, :cond_4

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v3, v2, v3

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int v1, v2, v1

    :cond_1
    :goto_1
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    sub-int v4, v2, v1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v2, v3, :cond_a

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, v2, v3

    if-le v1, v3, :cond_8

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v1

    :cond_7
    :goto_3
    sget v3, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_8
    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    if-le v1, v3, :cond_7

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v5, v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_a
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->B:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->w:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2
.end method

.method b(II)Landroid/graphics/Rect;
    .locals 6

    const/4 v1, 0x0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/ad;->g(I)Landroid/graphics/Rect;

    move-result-object v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez v2, :cond_2

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->x:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->x:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->x:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/powermo/smartshow/frameworks/ad;->b(I)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method b(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/powermo/smartshow/frameworks/ad;->a(ZILjava/lang/Object;Z)V

    return-void
.end method

.method b(Z)V
    .locals 7

    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez p1, :cond_4

    move v2, v1

    :goto_0
    if-eq v3, v2, :cond_5

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v3, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iput v2, v3, Landroid/graphics/Point;->x:I

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    invoke-virtual {p0, v0, v2, v3}, Lcom/powermo/smartshow/frameworks/ad;->a(IIZ)Z

    :goto_1
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-eq v0, v5, :cond_1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    invoke-direct {p0, v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v5, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    :cond_1
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->f:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v6}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v2, v6}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->n()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/l;->e()V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->l()V

    :cond_3
    return-void

    :cond_4
    move v2, v0

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_1
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    return v0
.end method

.method c(I)I
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method c(II)I
    .locals 5

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-boolean v3, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-eqz v3, :cond_1

    sget v3, Lcom/powermo/smartshow/frameworks/d;->DST_SMALLEST_SIZE:I

    add-int/2addr v3, p2

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v3, v4, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/powermo/smartshow/frameworks/d;->DST_SMALLEST_SIZE:I

    add-int/2addr v1, v3

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    if-gt p2, v1, :cond_0

    move v0, v2

    :cond_0
    :goto_1
    return v0

    :cond_1
    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/powermo/smartshow/frameworks/d;->DST_SMALLEST_SIZE:I

    add-int/2addr v3, v4

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-gt p1, v3, :cond_2

    move v1, v2

    :cond_2
    sget v2, Lcom/powermo/smartshow/frameworks/d;->DST_SMALLEST_SIZE:I

    add-int/2addr v2, p1

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public c(ILjava/lang/Object;)I
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x3

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    if-eq p1, v0, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    check-cast p2, Lcom/android/server/SmartShowEvent;

    invoke-virtual {p2}, Lcom/android/server/SmartShowEvent;->getScreen()I

    move-result v4

    iget-object v0, p2, Lcom/android/server/SmartShowEvent;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/l;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/a;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/am/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x3

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->T:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/powermo/smartshow/frameworks/af;

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->t:I

    iput v2, v1, Lcom/powermo/smartshow/frameworks/af;->f:I

    :cond_3
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->R:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->p:Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowModeMachine;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/powermo/smartshow/frameworks/ad;->e(II)I

    move-result v0

    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v3

    goto/16 :goto_0

    :cond_6
    move v2, v3

    goto :goto_1
.end method

.method d(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->g:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method d(ILjava/lang/Object;)I
    .locals 4

    const/4 v3, 0x0

    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_AT:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    check-cast p2, Ljava/lang/String;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/powermo/smartshow/frameworks/ad;->d(II)V

    :cond_0
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_START:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v3, v3}, Lcom/powermo/smartshow/frameworks/ad;->d(II)V

    :cond_1
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_MIDDLE:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->d(II)V

    :cond_2
    sget v0, Lcom/powermo/smartshow/frameworks/SmartShowManager;->ACTION_SPLIT_JUMP_END:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1}, Lcom/powermo/smartshow/frameworks/ad;->d(II)V

    :cond_3
    return v3
.end method

.method d()Landroid/graphics/Rect;
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ah;->c()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(II)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->c(II)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iput p2, v0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method e(I)Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->E:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, v1, Landroid/view/DisplayInfo;->logicalLeft:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalTop:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalLeft:I

    iget v3, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/view/DisplayInfo;->logicalTop:I

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method e()V
    .locals 3

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->l:Lcom/powermo/smartshow/frameworks/c;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {v1, v0, v2}, Lcom/powermo/smartshow/frameworks/c;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public e(ILjava/lang/Object;)Z
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->g(ILjava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    invoke-direct {p0, p2}, Lcom/powermo/smartshow/frameworks/ad;->a(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->h(ILjava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->o()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->i(ILjava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/ad;->f(ILjava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method f(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxScreen()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v3

    if-ne v3, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method f()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.powermo.smartbar.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iget-boolean v2, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "status_in_fullscreen"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fullscreen_index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iput-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "status_in_fullscreen"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "fullscreen_index"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.powermo.smartbar.action"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iget v4, p0, Lcom/powermo/smartshow/frameworks/ad;->M:I

    if-eq v0, v4, :cond_1c

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v0, :cond_5

    const-string v0, "status_splitbar_position"

    const-string v4, "0,1,0,0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->M:I

    move v0, v1

    :goto_3
    iget-boolean v4, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iget-boolean v5, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    if-eq v4, v5, :cond_3

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-eqz v0, :cond_7

    const-string v0, "status_in_fullscreen"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fullscreen_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_4
    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    iput-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->p:Z

    move v0, v1

    :cond_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v4

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    if-ge v0, v4, :cond_8

    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    if-eq v0, v5, :cond_4

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v5, v5, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v5, v0, v1, v2}, Lcom/powermo/smartshow/frameworks/l;->a(IIZ)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v0, v1, :cond_6

    const-string v0, "status_splitbar_position"

    const-string v4, "0,0,0,0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_6
    const-string v0, "status_splitbar_position"

    const-string v4, "0,-1,0,0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_7
    const-string v0, "status_in_fullscreen"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "fullscreen_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    :cond_8
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->h:I

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    :cond_9
    :goto_6
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iget v4, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {p0, v4}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->setFocusedDisplayId(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->l()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-nez v0, :cond_10

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-eq v0, v6, :cond_10

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateOrientation(Z)V

    :cond_a
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-nez v0, :cond_11

    const-string v0, "cmd_create_imedock"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_8
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->o:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->k:Z

    if-nez v0, :cond_12

    const-string v0, "cmd_show_splitbar"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_9
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->n:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->h()Z

    move-result v0

    if-nez v0, :cond_13

    sget-boolean v0, Lcom/powermo/smartshow/frameworks/d;->ENABLE_IME_FLOATING:Z

    if-eqz v0, :cond_13

    const-string v0, "cmd_show_imedock"

    const-string v4, "1"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_a
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, v2, v1}, Lcom/powermo/smartshow/frameworks/l;->b(II)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v1, v2}, Lcom/powermo/smartshow/frameworks/l;->b(II)Z

    move-result v4

    if-eqz v4, :cond_15

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v2, v1}, Lcom/powermo/smartshow/frameworks/l;->a(II)Z

    move-result v4

    if-eqz v4, :cond_16

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v2}, Lcom/powermo/smartshow/frameworks/l;->k(I)Z

    move-result v4

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v1}, Lcom/powermo/smartshow/frameworks/l;->k(I)Z

    move-result v4

    if-eqz v4, :cond_18

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_f
    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v4, v4, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v4, v2}, Lcom/powermo/smartshow/frameworks/l;->i(I)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_10
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v2, v1}, Lcom/powermo/smartshow/frameworks/l;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_11
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v1, v8}, Lcom/powermo/smartshow/frameworks/l;->i(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    const-string v1, "status_control_panel"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x4000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Y:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->g()V

    goto/16 :goto_1

    :cond_b
    if-ne v4, v8, :cond_d

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v0, :cond_d

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v0, v1, :cond_c

    iput v1, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, v2, v1, v2}, Lcom/powermo/smartshow/frameworks/l;->a(IIZ)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, v1, v1}, Lcom/powermo/smartshow/frameworks/l;->e(II)V

    iput v1, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    goto/16 :goto_6

    :cond_c
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, v2, v1}, Lcom/powermo/smartshow/frameworks/l;->e(II)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, v1, v1, v2}, Lcom/powermo/smartshow/frameworks/l;->a(IIZ)V

    iput v2, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    iput v2, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    goto/16 :goto_6

    :cond_d
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    if-eq v0, v6, :cond_f

    move v0, v2

    :goto_13
    if-ge v0, v4, :cond_f

    iget v5, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    if-eq v0, v5, :cond_e

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v5, v5, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v5, v0, v1}, Lcom/powermo/smartshow/frameworks/l;->e(II)V

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_f
    iput v6, p0, Lcom/powermo/smartshow/frameworks/ad;->m:I

    goto/16 :goto_6

    :cond_10
    move v0, v2

    goto/16 :goto_7

    :cond_11
    const-string v0, "cmd_create_imedock"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_12
    const-string v0, "cmd_show_splitbar"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    :cond_13
    const-string v0, "cmd_show_imedock"

    const-string v4, "0"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_a

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    :cond_1c
    move v0, v2

    goto/16 :goto_3
.end method

.method g(I)Landroid/graphics/Rect;
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->aa:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->r:Landroid/graphics/Rect;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v4, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v1, v2, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->W:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1
.end method

.method g()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    aget v1, v1, v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/powermo/smartshow/frameworks/ad;->b(ILandroid/graphics/Rect;)I

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v1, v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->a(ILandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k(I)V

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->k(I)V

    goto :goto_1
.end method

.method h()Z
    .locals 2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->N:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->D:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit p0

    :goto_0
    return v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method i()V
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v4, v0, [Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    aput-object v0, v4, v2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    sub-int/2addr v3, v5

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    aput-object v0, v4, v9

    invoke-direct {p0, v4}, Lcom/powermo/smartshow/frameworks/ad;->a([Landroid/graphics/Rect;)F

    move-result v3

    sget-object v0, Lcom/powermo/smartshow/frameworks/d;->mRatios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iput-boolean v9, p0, Lcom/powermo/smartshow/frameworks/ad;->ac:Z

    sget-object v0, Lcom/powermo/smartshow/frameworks/d;->mRatios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->P:[I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->ab:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->L:[I

    move v1, v2

    :goto_0
    sget-object v0, Lcom/powermo/smartshow/frameworks/d;->mRatios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/powermo/smartshow/frameworks/d;->mRatios:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v5, -0x4080

    cmpl-float v5, v0, v5

    if-nez v5, :cond_1

    move v0, v3

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->P:[I

    aget-object v6, v4, v9

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v0

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->V:[I

    const/4 v8, 0x4

    aget v7, v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    sget v7, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    aput v6, v5, v1

    iget-object v5, p0, Lcom/powermo/smartshow/frameworks/ad;->L:[I

    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sget v6, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v0, v6

    float-to-int v0, v0

    aput v0, v5, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/high16 v5, -0x4000

    cmpl-float v5, v0, v5

    if-nez v5, :cond_0

    const/high16 v0, 0x3f80

    sub-float/2addr v0, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method i(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ad;->l(I)V

    :cond_0
    return-void
.end method

.method j()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/powermo/smartshow/frameworks/d;->getScreenCount()I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->q:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v6, v6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sget v5, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v6, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(ILandroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sget v3, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v7, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(ILandroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->n()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->X:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sget v4, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v6, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(ILandroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sget v2, Lcom/powermo/smartshow/frameworks/ad;->y:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v7, v0}, Lcom/powermo/smartshow/frameworks/ad;->a(ILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method j(I)V
    .locals 11

    const/16 v10, 0xa

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->i:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->h(I)Ljava/util/ArrayList;

    move-result-object v9

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v8, v3

    move v2, v3

    move v4, v6

    move v5, v3

    move v7, v3

    :goto_1
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/a;

    if-eqz v0, :cond_4

    if-eqz v4, :cond_2

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v1, v0}, Lcom/powermo/smartshow/frameworks/l;->c(Lcom/android/server/am/a;)V

    invoke-virtual {v0}, Lcom/android/server/am/a;->d()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/server/am/a;->e()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move v2, v3

    :goto_2
    move v5, v6

    :goto_3
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v5

    move v5, v4

    move v4, v2

    move v2, v1

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/server/am/a;->a(I)V

    iget-object v7, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v7, v7, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v7, v0}, Lcom/powermo/smartshow/frameworks/l;->c(Lcom/android/server/am/a;)V

    move-object v0, v1

    move v1, v2

    move v2, v4

    move v4, v5

    goto :goto_2

    :cond_3
    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->j:Lcom/powermo/smartshow/frameworks/l;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/l;->a(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0, v2, v1}, Lcom/powermo/smartshow/frameworks/ah;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->refreshScreen(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v10}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->x:Lcom/powermo/smartshow/frameworks/ah;

    invoke-virtual {v0, v6}, Lcom/powermo/smartshow/frameworks/ah;->a(Z)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v10}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/powermo/smartshow/frameworks/ae;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    move v1, v2

    move v2, v4

    move v4, v5

    move v5, v7

    goto :goto_3
.end method

.method k(I)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getMaxLocalScreen()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-eq p1, v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->C:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    return v0
.end method

.method l()V
    .locals 3

    const/16 v2, 0x9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/ae;->removeMessages(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method l(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setFocusedDisplayId(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/ad;->f(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/ad;->l()V

    :cond_0
    return-void
.end method

.method m()V
    .locals 2

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->F:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->Z:[I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->I:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->U:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->w:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->setFocusedDisplayId(I)I

    move-result v0

    iput v0, p0, Lcom/powermo/smartshow/frameworks/ad;->H:I

    goto :goto_0
.end method

.method n()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/powermo/smartshow/frameworks/ad;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    const v1, 0x3f266666

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->K:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->J:Landroid/graphics/Rect;

    const v1, 0x3f666666

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/ad;->Q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method o()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/ad;->j:Lcom/powermo/smartshow/frameworks/ae;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/ae;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/smartshow/frameworks/ae;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
