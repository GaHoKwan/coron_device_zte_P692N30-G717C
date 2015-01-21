.class public final Lcom/nuance/a/a/a/c/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field private static final m:Ljava/lang/reflect/Constructor;

.field private static final n:Ljava/lang/reflect/Method;

.field private static final o:Ljava/lang/reflect/Method;

.field private static final p:Ljava/lang/reflect/Method;

.field private static final q:Ljava/lang/reflect/Method;

.field private static final r:Ljava/lang/reflect/Method;

.field private static final s:Ljava/lang/reflect/Method;

.field private static final t:Ljava/lang/reflect/Method;

.field private static final u:Ljava/lang/Class;

.field private static final v:Z

.field private static final w:Ljava/lang/reflect/Method;

.field private static final x:Ljava/lang/reflect/Method;


# instance fields
.field private y:Ljava/lang/Object;

.field private z:Lcom/nuance/a/a/a/c/a/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/a/a/a/c/a/e;

    invoke-direct {v0}, Lcom/nuance/a/a/a/c/a/e;-><init>()V

    const-string v0, "android.bluetooth.BluetoothHeadset"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v0, "android.bluetooth.BluetoothHeadset$ServiceListener"

    invoke-static {v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    new-array v0, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v2

    aput-object v5, v0, v1

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->m:Ljava/lang/reflect/Constructor;

    const-string v0, "getState"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getState"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v3, v2

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    move-object v3, v0

    move v0, v1

    :goto_0
    sput-object v3, Lcom/nuance/a/a/a/c/a/c;->n:Ljava/lang/reflect/Method;

    sput-boolean v0, Lcom/nuance/a/a/a/c/a/c;->v:Z

    const-string v0, "getCurrentHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->q:Ljava/lang/reflect/Method;

    const-string v0, "connectHeadset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v3, v2

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->s:Ljava/lang/reflect/Method;

    const-string v0, "disconnectHeadset"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "disconnectHeadset"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v3, v2

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    :cond_0
    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->r:Ljava/lang/reflect/Method;

    const-string v0, "startVoiceRecognition"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->o:Ljava/lang/reflect/Method;

    const-string v0, "stopVoiceRecognition"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->p:Ljava/lang/reflect/Method;

    const-string v0, "close"

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->t:Ljava/lang/reflect/Method;

    const-string v0, "getPriority"

    new-array v3, v1, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v3, v2

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->w:Ljava/lang/reflect/Method;

    const-string v0, "setPriority"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v6, Landroid/bluetooth/BluetoothDevice;

    aput-object v6, v3, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v3, v1

    invoke-static {v4, v0, v3}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->x:Ljava/lang/reflect/Method;

    sput-object v5, Lcom/nuance/a/a/a/c/a/c;->u:Ljava/lang/Class;

    const-string v0, "ACTION_STATE_CHANGED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->a:Ljava/lang/String;

    const-string v0, "ACTION_AUDIO_STATE_CHANGED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->b:Ljava/lang/String;

    const-string v0, "EXTRA_STATE"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->c:Ljava/lang/String;

    const-string v0, "EXTRA_AUDIO_STATE"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/nuance/a/a/a/c/a/c;->d:Ljava/lang/String;

    const-string v0, "STATE_ERROR"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->e:I

    const-string v0, "STATE_DISCONNECTED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->f:I

    const-string v0, "STATE_CONNECTING"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->g:I

    const-string v0, "STATE_CONNECTED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->h:I

    const-string v0, "AUDIO_STATE_DISCONNECTED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->i:I

    const-string v0, "AUDIO_STATE_CONNECTED"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->j:I

    const-string v0, "PRIORITY_OFF"

    invoke-static {v4, v0}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->k:I

    const-string v0, "PRIORITY_UNDEFINED"

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/nuance/a/a/a/c/a/e;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nuance/a/a/a/c/a/c;->l:I

    return-void

    :cond_1
    move-object v3, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nuance/a/a/a/c/a/c$a;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/a/a/a/c/a/c;->z:Lcom/nuance/a/a/a/c/a/c$a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Lcom/nuance/a/a/a/c/a/c;->u:Ljava/lang/Class;

    aput-object v2, v1, v3

    new-instance v2, Lcom/nuance/a/a/a/c/a/c$1;

    invoke-direct {v2, p0}, Lcom/nuance/a/a/a/c/a/c$1;-><init>(Lcom/nuance/a/a/a/c/a/c;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/nuance/a/a/a/c/a/c;->m:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/a/a/a/c/a/c;->y:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/nuance/a/a/a/c/a/c;)Lcom/nuance/a/a/a/c/a/c$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/a/a/a/c/a/c;->z:Lcom/nuance/a/a/a/c/a/c$a;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/bluetooth/BluetoothDevice;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    sget-object v0, Lcom/nuance/a/a/a/c/a/c;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/a/a/a/c/a/c;->q:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nuance/a/a/a/c/a/c;->y:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nuance/a/a/a/c/a/c;->t:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/nuance/a/a/a/c/a/c;->y:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
