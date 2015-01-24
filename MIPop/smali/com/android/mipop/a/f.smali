.class public Lcom/android/mipop/a/f;
.super Ljava/lang/Object;


# static fields
.field private static bl:I

.field private static bm:I

.field private static bn:I

.field private static bo:J

.field private static bp:I

.field private static bq:I

.field private static br:Landroid/os/Handler;

.field private static bs:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xff

    sput v1, Lcom/android/mipop/a/f;->bl:I

    const/16 v0, 0x9b

    sput v0, Lcom/android/mipop/a/f;->bm:I

    sput v1, Lcom/android/mipop/a/f;->bn:I

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/mipop/a/f;->bo:J

    const/4 v0, 0x0

    sput v0, Lcom/android/mipop/a/f;->bp:I

    const/16 v0, 0xa

    sput v0, Lcom/android/mipop/a/f;->bq:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mipop/a/f;->br:Landroid/os/Handler;

    new-instance v0, Lcom/android/mipop/a/e;

    invoke-direct {v0}, Lcom/android/mipop/a/e;-><init>()V

    sput-object v0, Lcom/android/mipop/a/f;->bs:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/android/mipop/a/f;->v()V

    return-void
.end method

.method public static start()V
    .locals 5

    const/16 v4, 0x8

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-wide v0, Lcom/android/mipop/a/f;->bo:J

    sget v2, Lcom/android/mipop/a/f;->bm:I

    sget v3, Lcom/android/mipop/a/f;->bl:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    long-to-int v0, v0

    sput v0, Lcom/android/mipop/a/f;->bq:I

    sget-object v0, Lcom/android/mipop/a/f;->br:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/f;->bs:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/h;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v4}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/i;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v4}, Lcom/android/mipop/b/l;->setVisibility(I)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v4}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method public static stop()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/a/f;->bl:I

    sput v0, Lcom/android/mipop/a/f;->bn:I

    sget-object v0, Lcom/android/mipop/a/f;->br:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/f;->bs:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/f;->bl:I

    invoke-virtual {v0, v1}, Lcom/android/mipop/b/l;->setAlpha(I)V

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

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/e;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    invoke-virtual {v0, v2}, Lcom/android/mipop/b/l;->setVisibility(I)V

    return-void
.end method

.method private static v()V
    .locals 4

    const-string v0, "Suhao.TransParent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnimationTransparent.transparenting(), alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mipop/a/f;->bn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/mipop/a/f;->bn:I

    sget v1, Lcom/android/mipop/a/f;->bm:I

    if-gt v0, v1, :cond_0

    const-string v0, "Suhao.TransParent"

    const-string v1, "AnimationTransparent.transparenting(), removeCallbacks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/mipop/a/f;->br:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/f;->bs:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/android/mipop/a/f;->bn:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/mipop/a/f;->bn:I

    sget-object v0, Lcom/android/mipop/b/l;->hj:Ljava/util/Map;

    sget-object v1, Lcom/android/mipop/b/b;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/b/l;

    sget v1, Lcom/android/mipop/a/f;->bn:I

    invoke-virtual {v0, v1}, Lcom/android/mipop/b/l;->setAlpha(I)V

    sget-object v0, Lcom/android/mipop/a/f;->br:Landroid/os/Handler;

    sget-object v1, Lcom/android/mipop/a/f;->bs:Ljava/lang/Runnable;

    sget v2, Lcom/android/mipop/a/f;->bq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
