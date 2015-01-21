.class Lcom/powermo/SmartBar/cy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ct;

.field private final b:Ljava/lang/Class;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Field;

.field private final e:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lcom/powermo/SmartBar/ct;)V
    .locals 6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/powermo/SmartBar/cy;->a:Lcom/powermo/SmartBar/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "android.view.ViewTreeObserver$InternalInsetsInfo"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v1, "setTouchableInsets"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v1, "touchableRegion"

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const-string v4, "TOUCHABLE_INSETS_REGION"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iput-object v3, p0, Lcom/powermo/SmartBar/cy;->b:Ljava/lang/Class;

    iput-object v2, p0, Lcom/powermo/SmartBar/cy;->c:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/powermo/SmartBar/cy;->d:Ljava/lang/reflect/Field;

    iput-object v0, p0, Lcom/powermo/SmartBar/cy;->e:Ljava/lang/reflect/Field;

    return-void

    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto :goto_0
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->b:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->c:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->d:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->e:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    if-ne v0, v1, :cond_0

    const-string v0, "onComputeInternalInsets"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p3, v0

    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iget-object v2, p0, Lcom/powermo/SmartBar/cy;->e:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/powermo/SmartBar/cy;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v2}, Lcom/powermo/SmartBar/ct;->d(Lcom/powermo/SmartBar/ct;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v3, p0, Lcom/powermo/SmartBar/cy;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v3}, Lcom/powermo/SmartBar/ct;->d(Lcom/powermo/SmartBar/ct;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v4, Lcom/powermo/SmartBar/dc;->C:I

    sget v5, Lcom/powermo/SmartBar/dc;->D:I

    add-int/2addr v4, v5

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/powermo/SmartBar/cy;->a:Lcom/powermo/SmartBar/ct;

    iget-boolean v7, v7, Lcom/powermo/SmartBar/ct;->a:Z

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    sget v7, Lcom/powermo/SmartBar/dc;->D:I

    sget v8, Lcom/powermo/SmartBar/dc;->C:I

    sget v9, Lcom/powermo/SmartBar/dc;->D:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v7, v2, v8}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    sub-int v3, v2, v4

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sget v4, Lcom/powermo/SmartBar/dc;->B:I

    invoke-virtual {v6, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :goto_0
    iget-object v0, p0, Lcom/powermo/SmartBar/cy;->c:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_1
    sget v2, Lcom/powermo/SmartBar/dc;->D:I

    const/4 v7, 0x0

    sget v8, Lcom/powermo/SmartBar/dc;->C:I

    sget v9, Lcom/powermo/SmartBar/dc;->D:I

    add-int/2addr v8, v9

    invoke-virtual {v5, v2, v7, v8, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    const/4 v2, 0x0

    sub-int v5, v3, v4

    div-int/lit8 v5, v5, 0x2

    sget v7, Lcom/powermo/SmartBar/dc;->B:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v6, v2, v5, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v6, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
