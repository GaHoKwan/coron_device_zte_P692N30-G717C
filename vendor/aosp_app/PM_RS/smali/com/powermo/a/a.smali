.class public final Lcom/powermo/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/powermo/a/a;


# instance fields
.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/reflect/Method;

.field private e:Ljava/lang/reflect/Method;

.field private f:Ljava/lang/reflect/Method;

.field private g:Ljava/lang/reflect/Method;

.field private h:Ljava/lang/reflect/Method;

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field private n:Ljava/lang/reflect/Method;

.field private o:Ljava/lang/reflect/Method;

.field private p:Ljava/lang/reflect/Method;

.field private q:Ljava/lang/reflect/Method;

.field private r:Ljava/lang/reflect/Method;

.field private s:Ljava/lang/reflect/Method;

.field private t:Ljava/lang/reflect/Method;

.field private u:Ljava/lang/reflect/Method;

.field private v:Ljava/lang/reflect/Method;

.field private w:Ljava/lang/reflect/Method;

.field private x:Ljava/lang/reflect/Method;

.field private y:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartShowManager"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/a/a;->a:Ljava/lang/String;

    new-instance v0, Lcom/powermo/a/a;

    invoke-direct {v0}, Lcom/powermo/a/a;-><init>()V

    sput-object v0, Lcom/powermo/a/a;->b:Lcom/powermo/a/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/powermo/a/a;->c:Ljava/lang/Object;

    iput-object v1, p0, Lcom/powermo/a/a;->d:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->e:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->f:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->g:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->h:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->i:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->j:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->k:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->l:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->m:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->n:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->o:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->p:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->q:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->r:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->t:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->u:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->v:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->w:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->x:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/a/a;->y:Ljava/lang/reflect/Method;

    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.powermo.smartshow.frameworks.SmartShowManager"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/powermo/a/a;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v1, "create SmartShowManager failed !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/powermo/a/a;->c:Ljava/lang/Object;

    move-object v0, v1

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v2, "getNumberOfScreens"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->d:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    const-string v2, "getFocusedScreen"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->e:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    const-string v2, "exchangeTask"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->f:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    const-string v2, "moveTask"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->g:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    const-string v2, "adjustSplitRatio"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Point;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->h:Ljava/lang/reflect/Method;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    const-string v2, "adjustSplitRatio"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->i:Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    const-string v2, "enableDualScreen"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->j:Ljava/lang/reflect/Method;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    :goto_8
    :try_start_8
    const-string v2, "enableDualScreen"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->k:Ljava/lang/reflect/Method;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    :goto_9
    :try_start_9
    const-string v2, "resetScreen"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->l:Ljava/lang/reflect/Method;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    :goto_a
    :try_start_a
    const-string v2, "switchToNextDisplayMode"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->m:Ljava/lang/reflect/Method;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :goto_b
    :try_start_b
    const-string v2, "getScreenOfPoint"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/graphics/Point;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->o:Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    :goto_c
    :try_start_c
    const-string v2, "getScreenRect"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->n:Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    :goto_d
    :try_start_d
    const-string v2, "connectWifiDisplay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->p:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :goto_e
    :try_start_e
    const-string v2, "muteScreen"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->q:Ljava/lang/reflect/Method;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    :goto_f
    :try_start_f
    const-string v2, "mirrorRemoteAudio"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->r:Ljava/lang/reflect/Method;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    :goto_10
    :try_start_10
    const-string v2, "getVersion"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    :goto_11
    :try_start_11
    const-string v2, "getRawService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->t:Ljava/lang/reflect/Method;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_12

    :goto_12
    :try_start_12
    const-string v2, "createOverlayDisplay"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/Surface;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->u:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_13

    :goto_13
    :try_start_13
    const-string v2, "removeOverlayDisplay"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->v:Ljava/lang/reflect/Method;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_14

    :goto_14
    :try_start_14
    const-string v2, "setParameters"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->w:Ljava/lang/reflect/Method;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    :goto_15
    :try_start_15
    const-string v2, "getParameters"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/powermo/a/a;->x:Ljava/lang/reflect/Method;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_16

    :goto_16
    :try_start_16
    const-string v2, "getAppDisplayRect"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/a/a;->y:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v2, "interface: getAppDisplayRect not available"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->y:Ljava/lang/reflect/Method;

    goto/16 :goto_1

    :catch_2
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getNumberOfScreens not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->d:Ljava/lang/reflect/Method;

    goto/16 :goto_2

    :catch_3
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getFocusedScreen not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->e:Ljava/lang/reflect/Method;

    goto/16 :goto_3

    :catch_4
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: exchangeTask not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->f:Ljava/lang/reflect/Method;

    goto/16 :goto_4

    :catch_5
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: moveTask not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->g:Ljava/lang/reflect/Method;

    goto/16 :goto_5

    :catch_6
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: adjustSplitRatio not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->h:Ljava/lang/reflect/Method;

    goto/16 :goto_6

    :catch_7
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: adjustSplitRatio not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->i:Ljava/lang/reflect/Method;

    goto/16 :goto_7

    :catch_8
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: enableDualScreen not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->j:Ljava/lang/reflect/Method;

    goto/16 :goto_8

    :catch_9
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: enableDualScreen not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->k:Ljava/lang/reflect/Method;

    goto/16 :goto_9

    :catch_a
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: resetScreen not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->l:Ljava/lang/reflect/Method;

    goto/16 :goto_a

    :catch_b
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: switchToNextDisplayMode not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->m:Ljava/lang/reflect/Method;

    goto/16 :goto_b

    :catch_c
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getScreenOfPoint not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->o:Ljava/lang/reflect/Method;

    goto/16 :goto_c

    :catch_d
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getScreenRect not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->n:Ljava/lang/reflect/Method;

    goto/16 :goto_d

    :catch_e
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: connectWifiDisplay not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->p:Ljava/lang/reflect/Method;

    goto/16 :goto_e

    :catch_f
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: muteScreen not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->q:Ljava/lang/reflect/Method;

    goto/16 :goto_f

    :catch_10
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: mirrorRemoteAudio not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->r:Ljava/lang/reflect/Method;

    goto/16 :goto_10

    :catch_11
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getVersion not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;

    goto/16 :goto_11

    :catch_12
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getRawService not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->t:Ljava/lang/reflect/Method;

    goto/16 :goto_12

    :catch_13
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: createOverlayDisplay not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->u:Ljava/lang/reflect/Method;

    goto/16 :goto_13

    :catch_14
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: removeOverlayDisplay not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->v:Ljava/lang/reflect/Method;

    goto/16 :goto_14

    :catch_15
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: setParameters not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->w:Ljava/lang/reflect/Method;

    goto/16 :goto_15

    :catch_16
    move-exception v2

    sget-object v2, Lcom/powermo/a/a;->a:Ljava/lang/String;

    const-string v3, "interface: getParameters not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/powermo/a/a;->x:Ljava/lang/reflect/Method;

    goto/16 :goto_16
.end method

.method public static a()Lcom/powermo/a/a;
    .locals 1

    sget-object v0, Lcom/powermo/a/a;->b:Lcom/powermo/a/a;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/powermo/a/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/a/a;->s:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move v0, v1

    goto :goto_0
.end method
