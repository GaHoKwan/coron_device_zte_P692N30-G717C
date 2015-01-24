.class public Lcom/android/mipop/a/g;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field public static cD:I

.field public static cE:I

.field private static cF:J

.field public static cG:Z

.field private static cH:I

.field private static cI:I

.field private static cJ:I

.field private static cK:I

.field private static cL:I

.field private static cM:I

.field public static cN:Z

.field private static cO:I

.field private static cP:Z

.field private static cQ:Z

.field private static cR:J

.field private static cS:Landroid/os/Handler;

.field private static cT:Ljava/lang/Runnable;

.field private static cU:Landroid/os/Handler;

.field private static cV:Ljava/lang/Runnable;

.field private static cW:J

.field private static cX:Landroid/os/Handler;

.field private static cY:Ljava/lang/Runnable;

.field private static cZ:Landroid/os/Handler;

.field private static da:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Parking"

    sput-object v0, Lcom/android/mipop/a/g;->TAG:Ljava/lang/String;

    sget v0, Lcom/android/mipop/b/l;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cD:I

    sget v0, Lcom/android/mipop/b/l;->cE:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/android/mipop/a/g;->cF:J

    sput-boolean v2, Lcom/android/mipop/a/g;->cG:Z

    sput v2, Lcom/android/mipop/a/g;->cH:I

    sput v2, Lcom/android/mipop/a/g;->cI:I

    sput v2, Lcom/android/mipop/a/g;->cJ:I

    sput v2, Lcom/android/mipop/a/g;->cK:I

    sput v2, Lcom/android/mipop/a/g;->cL:I

    sput v2, Lcom/android/mipop/a/g;->cM:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    const/16 v0, 0xa

    sput v0, Lcom/android/mipop/a/g;->cO:I

    sput-boolean v2, Lcom/android/mipop/a/g;->cP:Z

    sput-boolean v2, Lcom/android/mipop/a/g;->cQ:Z

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/mipop/a/g;->cR:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cS:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/a/b;

    invoke-direct {v0}, Lcom/android/mipop/a/b;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cT:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/a/a;

    invoke-direct {v0}, Lcom/android/mipop/a/a;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/mipop/a/g;->cW:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cX:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/a/d;

    invoke-direct {v0}, Lcom/android/mipop/a/d;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cY:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/a/c;

    invoke-direct {v0}, Lcom/android/mipop/a/c;-><init>()V

    sput-object v0, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static E()V
    .locals 2

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v0, Lcom/android/mipop/b/l;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cD:I

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v0, Lcom/android/mipop/b/l;->cE:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    return-void
.end method

.method private static F()V
    .locals 2

    sget-object v0, Lcom/android/mipop/a/g;->cS:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cT:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/mipop/a/g;->cP:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/a/g;->cQ:Z

    :cond_0
    sget-boolean v0, Lcom/android/mipop/a/g;->cG:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/a/g;->cQ:Z

    :cond_1
    return-void
.end method

.method public static G()V
    .locals 4

    const-string v0, "Suhao"

    const-string v1, "shrinkStart() shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static H()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "Suhao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parking baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/a/g;->cD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-ne v3, v0, :cond_1

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->Z:I

    if-ge v0, v1, :cond_1

    invoke-static {v3}, Lcom/android/mipop/a/g;->b(Z)V

    :cond_0
    :goto_0
    const-string v0, "MBack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "baseX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/a/g;->cD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-nez v0, :cond_0

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->aa:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/mipop/a/g;->b(Z)V

    goto :goto_0
.end method

.method private static I()V
    .locals 3

    const/4 v2, 0x4

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method private static J()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method private static K()V
    .locals 4

    const-string v0, "Suhao"

    const-string v1, "turning() shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/mipop/a/g;->cX:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static L()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/android/mipop/a/g;->cO:I

    sget v1, Lcom/android/mipop/a/g;->cD:I

    sget v2, Lcom/android/mipop/b/a;->W:I

    if-ge v1, v2, :cond_0

    neg-int v0, v0

    :cond_0
    sget v1, Lcom/android/mipop/a/g;->cD:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cD:I

    const-string v0, "Suhao"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shrinking x= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/a/g;->cD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->M:I

    sget v2, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cD:I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    sput-boolean v3, Lcom/android/mipop/a/g;->cQ:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cN:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cG:Z

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.shrinking(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/f;->start()V

    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/mipop/a/g;->cD:I

    if-gt v0, v4, :cond_2

    sput v3, Lcom/android/mipop/a/g;->cD:I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    sput-boolean v3, Lcom/android/mipop/a/g;->cQ:Z

    sput-boolean v4, Lcom/android/mipop/a/g;->cN:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cG:Z

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.shrinking(), baseX<1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/f;->start()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static M()V
    .locals 2

    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mipop/a/g;->stop()V

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cD:I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    :cond_0
    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v0, Lcom/android/mipop/b/l;->cE:I

    sget v1, Lcom/android/mipop/b/a;->N:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->h(II)V

    :cond_1
    return-void
.end method

.method static synthetic N()V
    .locals 0

    invoke-static {}, Lcom/android/mipop/a/g;->L()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mipop/a/g;->cQ:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mipop/a/g;->cP:Z

    return p0
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, Lcom/android/mipop/a/g;->H()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/android/mipop/a/g;->K()V

    return-void
.end method

.method private static b(Z)V
    .locals 4

    sget v0, Lcom/android/mipop/b/a;->ac:I

    if-nez p0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sub-int/2addr v0, v1

    :cond_0
    sget v1, Lcom/android/mipop/a/g;->cO:I

    sget v2, Lcom/android/mipop/a/g;->cD:I

    if-le v2, v0, :cond_1

    sget v1, Lcom/android/mipop/a/g;->cO:I

    neg-int v1, v1

    :cond_1
    sget v2, Lcom/android/mipop/a/g;->cD:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cD:I

    sget v2, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v1, v2}, Lcom/android/mipop/a/g;->f(II)V

    sget v1, Lcom/android/mipop/a/g;->cD:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_2

    const-string v1, "Suhao"

    const-string v2, "parking2Margin() turning."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput v0, Lcom/android/mipop/a/g;->cD:I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->f(II)V

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cX:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cY:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cW:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static f(I)V
    .locals 2

    sget-boolean v0, Lcom/android/mipop/a/g;->cQ:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/mipop/a/g;->I()V

    :goto_0
    sget-boolean v0, Lcom/android/mipop/a/g;->cG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mipop/a/g;->I()V

    :cond_0
    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_1

    if-gez p0, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/mipop/a/g;->I()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/mipop/a/g;->J()V

    goto :goto_0
.end method

.method public static f(II)V
    .locals 2

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, p0, p1}, Lcom/android/mipop/b/l;->update(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sput p0, Lcom/android/mipop/b/l;->cD:I

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sput p1, Lcom/android/mipop/b/l;->cE:I

    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/a/g;->cN:Z

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/android/mipop/a/g;->k(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/android/mipop/a/g;->i(II)V

    goto :goto_0
.end method

.method private static g(II)V
    .locals 4

    const-wide v0, 0x3fe69fbe76c8b439L

    sget v2, Lcom/android/mipop/b/a;->V:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/a/g;->cN:Z

    if-ne v0, v1, :cond_2

    sget v0, Lcom/android/mipop/b/a;->ae:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->Z:I

    if-ge p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sput p0, Lcom/android/mipop/a/g;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    invoke-static {p0, v0}, Lcom/android/mipop/a/g;->f(II)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->ae:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->aa:I

    if-le p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sput p0, Lcom/android/mipop/a/g;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    invoke-static {p0, v0}, Lcom/android/mipop/a/g;->f(II)V

    goto :goto_0
.end method

.method private static h(II)V
    .locals 3

    sget v0, Lcom/android/mipop/b/a;->ah:I

    if-gt p1, v0, :cond_1

    const-string v0, "Bottom"

    const-string v1, "return"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sget-boolean v1, Lcom/android/mipop/a/g;->cN:Z

    if-ne v0, v1, :cond_2

    sget v0, Lcom/android/mipop/b/a;->ae:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->Z:I

    if-ge p0, v0, :cond_0

    const-string v0, "Bottom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LEFT bar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/b/a;->O:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/b/a;->ah:I

    sput p0, Lcom/android/mipop/a/g;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    invoke-static {p0, v0}, Lcom/android/mipop/a/g;->f(II)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->ae:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/mipop/b/a;->aa:I

    if-le p0, v0, :cond_0

    const-string v0, "Bottom"

    const-string v1, "RIGHT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/b/a;->ah:I

    sput p0, Lcom/android/mipop/a/g;->cD:I

    sput v0, Lcom/android/mipop/a/g;->cE:I

    invoke-static {p0, v0}, Lcom/android/mipop/a/g;->f(II)V

    goto :goto_0
.end method

.method private static i(II)V
    .locals 3

    invoke-static {p0}, Lcom/android/mipop/a/g;->f(I)V

    sget v0, Lcom/android/mipop/b/a;->af:I

    if-le p0, v0, :cond_1

    sget v0, Lcom/android/mipop/b/a;->ac:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/a/g;->cK:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mipop/a/g;->cL:I

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cH:I

    sget v2, Lcom/android/mipop/a/g;->cI:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cJ:I

    sget v2, Lcom/android/mipop/a/g;->cK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cL:I

    sget v2, Lcom/android/mipop/a/g;->cM:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    return-void

    :cond_1
    sget v0, Lcom/android/mipop/b/a;->aa:I

    if-le p0, v0, :cond_2

    sget v0, Lcom/android/mipop/b/a;->ac:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/a/g;->cK:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sput v0, Lcom/android/mipop/a/g;->cL:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/mipop/b/a;->aa:I

    sget v1, Lcom/android/mipop/b/a;->ad:I

    sub-int/2addr v0, v1

    if-le p0, v0, :cond_3

    sget v0, Lcom/android/mipop/b/a;->ac:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->aa:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->aa:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->aa:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cK:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->aa:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cL:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->aa:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    goto/16 :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/a/g;->cG:Z

    sput p0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sput p0, Lcom/android/mipop/a/g;->cJ:I

    sput p1, Lcom/android/mipop/a/g;->cK:I

    sput p0, Lcom/android/mipop/a/g;->cL:I

    sput p1, Lcom/android/mipop/a/g;->cM:I

    invoke-static {}, Lcom/android/mipop/a/g;->I()V

    goto/16 :goto_0
.end method

.method private static j(II)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/android/mipop/b/a;->ac:I

    if-ge p0, v0, :cond_1

    sget v0, Lcom/android/mipop/b/a;->ac:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/a/g;->cK:I

    div-int/lit8 v0, p0, 0x2

    sput v0, Lcom/android/mipop/a/g;->cL:I

    div-int/lit8 v0, p0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/android/mipop/b/a;->Z:I

    if-ge p0, v0, :cond_2

    sget v0, Lcom/android/mipop/b/a;->ac:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/mipop/a/g;->cK:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/android/mipop/a/g;->cL:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/mipop/b/a;->Z:I

    sget v1, Lcom/android/mipop/b/a;->ad:I

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_3

    const-string v0, "Park"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Left shrink x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->Z:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->Z:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cJ:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->Z:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cK:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->Z:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cL:I

    sget v0, Lcom/android/mipop/b/a;->ac:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    sget v1, Lcom/android/mipop/b/a;->ac:I

    sget v2, Lcom/android/mipop/b/a;->ad:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/mipop/b/a;->Z:I

    sub-int v2, p0, v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cM:I

    goto/16 :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-ne v2, v0, :cond_0

    sput-boolean v2, Lcom/android/mipop/a/g;->cG:Z

    sput p0, Lcom/android/mipop/a/g;->cH:I

    sput p1, Lcom/android/mipop/a/g;->cI:I

    sput p0, Lcom/android/mipop/a/g;->cJ:I

    sput p1, Lcom/android/mipop/a/g;->cK:I

    sput p0, Lcom/android/mipop/a/g;->cL:I

    sput p1, Lcom/android/mipop/a/g;->cM:I

    invoke-static {}, Lcom/android/mipop/a/g;->I()V

    goto/16 :goto_0
.end method

.method private static k(II)V
    .locals 3

    invoke-static {p0}, Lcom/android/mipop/a/g;->f(I)V

    invoke-static {p0, p1}, Lcom/android/mipop/a/g;->j(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cH:I

    sget v2, Lcom/android/mipop/a/g;->cI:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cJ:I

    sget v2, Lcom/android/mipop/a/g;->cK:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/g;->cL:I

    sget v2, Lcom/android/mipop/a/g;->cM:I

    invoke-virtual {v0, v1, v2}, Lcom/android/mipop/b/l;->update(II)V

    return-void
.end method

.method public static start()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Suhao"

    const-string v1, "AnimationParking start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/g;->F()V

    invoke-static {}, Lcom/android/mipop/a/g;->E()V

    sget v0, Lcom/android/mipop/a/g;->cD:I

    if-gtz v0, :cond_0

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX<0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v4, Lcom/android/mipop/a/g;->cN:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cG:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cQ:Z

    sput v3, Lcom/android/mipop/a/g;->cD:I

    invoke-static {}, Lcom/android/mipop/a/f;->start()V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->M:I

    sget v2, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.start(), baseX>SCREEN_WIDTH-IMAGE_WIDTH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/mipop/a/g;->cN:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cG:Z

    sput-boolean v3, Lcom/android/mipop/a/g;->cQ:Z

    sget v0, Lcom/android/mipop/b/a;->M:I

    sget v1, Lcom/android/mipop/b/a;->V:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/mipop/a/g;->cD:I

    invoke-static {}, Lcom/android/mipop/a/f;->start()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->g(II)V

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/a/g;->cE:I

    invoke-static {v0, v1}, Lcom/android/mipop/a/g;->h(II)V

    sget-boolean v0, Lcom/android/mipop/a/g;->cG:Z

    if-nez v0, :cond_6

    const-string v0, "Suhao"

    const-string v1, "mAreaChanged = false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->ae:I

    if-lt v0, v1, :cond_2

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->ag:I

    if-le v0, v1, :cond_3

    :cond_2
    const-string v0, "Suhao"

    const-string v1, "LEFT && > PARKING_LINE_RIGHT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-ne v4, v0, :cond_4

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->Z:I

    if-le v0, v1, :cond_4

    const-string v0, "Suhao"

    const-string v1, "LEFT && > AREA_CHANGED_LINE_LEFT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/android/mipop/a/g;->cN:Z

    if-nez v0, :cond_5

    sget v0, Lcom/android/mipop/a/g;->cD:I

    sget v1, Lcom/android/mipop/b/a;->aa:I

    if-ge v0, v1, :cond_5

    const-string v0, "Suhao"

    const-string v1, "LEFT && > AREA_CHANGED_LINE_RIGHT shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_5
    const-string v0, "Suhao"

    const-string v1, "else"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "Suhao"

    const-string v1, "mAreaChanged = true shrinked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cF:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public static stop()V
    .locals 4

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationParking.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/mipop/a/f;->stop()V

    sget-object v0, Lcom/android/mipop/a/g;->cU:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cV:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cZ:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->da:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/a/g;->cX:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cY:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mipop/a/g;->cP:Z

    sget-object v0, Lcom/android/mipop/a/g;->cS:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/g;->cT:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/mipop/a/g;->cR:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
