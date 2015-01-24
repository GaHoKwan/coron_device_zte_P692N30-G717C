.class public Lcom/powermo/input/LocalInputInjector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/input/a;


# instance fields
.field private b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Lcom/powermo/input/e;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/powermo/a/a;->a()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    new-instance v0, Lcom/powermo/input/e;

    invoke-direct {v0, p0}, Lcom/powermo/input/e;-><init>(Lcom/powermo/input/a;)V

    iput-object v0, p0, Lcom/powermo/input/LocalInputInjector;->e:Lcom/powermo/input/e;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/com.powermo.input.sock.input_proxy"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "input_proxy"

    iput-object v0, p0, Lcom/powermo/input/LocalInputInjector;->c:Ljava/lang/String;

    :goto_0
    iput p1, p0, Lcom/powermo/input/LocalInputInjector;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/com.powermo.input.sock.qwerty"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "qwerty"

    iput-object v0, p0, Lcom/powermo/input/LocalInputInjector;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/input/LocalInputInjector;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private native nativeBeginInjectMultiTouchSlot(I)I
.end method

.method private native nativeCloseSession(I)Z
.end method

.method private native nativeCreate(Ljava/lang/String;I)I
.end method

.method private native nativeDestroy(I)V
.end method

.method private native nativeEndInjectMultiTouchSlot(II)Z
.end method

.method private native nativeInjectMultiTouchSlot(IIIIIIIIIII)I
.end method

.method private native nativeOpenSession(I)Z
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/input/LocalInputInjector;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "cannot access input sink node"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/powermo/input/LocalInputInjector;->c:Ljava/lang/String;

    iget v1, p0, Lcom/powermo/input/LocalInputInjector;->d:I

    invoke-direct {p0, v0, v1}, Lcom/powermo/input/LocalInputInjector;->nativeCreate(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/input/LocalInputInjector;->e:Lcom/powermo/input/e;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/powermo/input/e;->a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V

    return-void
.end method

.method public a([Lcom/powermo/input/d;I)Z
    .locals 13

    const/4 v0, 0x0

    iget v1, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    invoke-direct {p0, v1}, Lcom/powermo/input/LocalInputInjector;->nativeBeginInjectMultiTouchSlot(I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v12, v0

    :goto_1
    array-length v1, p1

    if-ge v12, v1, :cond_1

    aget-object v1, p1, v12

    iget-boolean v1, v1, Lcom/powermo/input/d;->a:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    aget-object v0, p1, v12

    iget v3, v0, Lcom/powermo/input/d;->b:I

    aget-object v0, p1, v12

    iget v4, v0, Lcom/powermo/input/d;->c:I

    aget-object v0, p1, v12

    iget v5, v0, Lcom/powermo/input/d;->d:I

    aget-object v0, p1, v12

    iget v7, v0, Lcom/powermo/input/d;->e:I

    aget-object v0, p1, v12

    iget v8, v0, Lcom/powermo/input/d;->f:I

    aget-object v0, p1, v12

    iget v9, v0, Lcom/powermo/input/d;->g:I

    aget-object v0, p1, v12

    iget v10, v0, Lcom/powermo/input/d;->h:I

    aget-object v0, p1, v12

    iget v11, v0, Lcom/powermo/input/d;->i:I

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v11}, Lcom/powermo/input/LocalInputInjector;->nativeInjectMultiTouchSlot(IIIIIIIIIII)I

    move-result v1

    :goto_2
    const/16 v0, 0xa

    if-lt v1, v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    invoke-direct {p0, v0, v2}, Lcom/powermo/input/LocalInputInjector;->nativeEndInjectMultiTouchSlot(II)Z

    move-result v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_2
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    invoke-direct {p0, v0}, Lcom/powermo/input/LocalInputInjector;->nativeDestroy(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    iget v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    invoke-direct {p0, v0}, Lcom/powermo/input/LocalInputInjector;->nativeOpenSession(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/powermo/input/LocalInputInjector;->b:I

    invoke-direct {p0, v0}, Lcom/powermo/input/LocalInputInjector;->nativeCloseSession(I)Z

    move-result v0

    return v0
.end method
