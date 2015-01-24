.class public Lcom/powermo/SmartBar/ck;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/hardware/input/InputManager;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Landroid/os/Handler;

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powermo/SmartBar/ck;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/powermo/SmartBar/ck;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->a:Landroid/content/Context;

    const-string v2, "input"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/powermo/SmartBar/ck;->b:Landroid/hardware/input/InputManager;

    :try_start_0
    const-class v0, Landroid/hardware/input/InputManager;

    const-string v2, "injectInputEvent"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/view/InputEvent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v0, Landroid/hardware/input/InputManager;

    const-string v4, "INJECT_INPUT_EVENT_MODE_ASYNC"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v4, p0, Lcom/powermo/SmartBar/ck;->b:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move-object v1, v2

    :goto_0
    iput-object v1, p0, Lcom/powermo/SmartBar/ck;->c:Ljava/lang/reflect/Method;

    iput v0, p0, Lcom/powermo/SmartBar/ck;->f:I

    :try_start_1
    const-class v0, Landroid/hardware/input/InputManager;

    const-string v1, "setTouchTranscodeRect"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/powermo/SmartBar/ck;->d:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v3}, Lcom/powermo/SmartBar/ck;->a(Landroid/graphics/Rect;)V

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/powermo/SmartBar/ck;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/powermo/SmartBar/ck;)Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->c:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic c(Lcom/powermo/SmartBar/ck;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->b:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic d(Lcom/powermo/SmartBar/ck;)I
    .locals 1

    iget v0, p0, Lcom/powermo/SmartBar/ck;->f:I

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/ck;->b(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/powermo/SmartBar/ck;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/powermo/SmartBar/ck;->b:Landroid/hardware/input/InputManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ck;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/powermo/SmartBar/ck;->b:Landroid/hardware/input/InputManager;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    instance-of v0, p1, Lcom/powermo/SmartBar/cl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p1, Lcom/powermo/SmartBar/cl;

    invoke-virtual {p1}, Lcom/powermo/SmartBar/cl;->a()V

    goto :goto_0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/powermo/SmartBar/cl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/powermo/SmartBar/cl;-><init>(Lcom/powermo/SmartBar/ck;Lcom/powermo/SmartBar/cl;)V

    invoke-virtual {v0, p1}, Lcom/powermo/SmartBar/cl;->a(I)V

    return-object v0
.end method
