.class public Lcom/powermo/input/a/g;
.super Lcom/powermo/input/a/b;

# interfaces
.implements Lcom/powermo/input/a;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/Object;

.field private d:I

.field private final e:Lcom/powermo/input/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InputSinkStubImpl"

    invoke-static {v0}, Lcom/powermo/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/input/a/g;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/powermo/input/a/b;-><init>(Ljava/lang/String;II)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/input/a/g;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/input/a/g;->d:I

    new-instance v0, Lcom/powermo/input/a/i;

    invoke-direct {v0, p0}, Lcom/powermo/input/a/i;-><init>(Lcom/powermo/input/a/g;)V

    iput-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    return-void
.end method

.method private a(I)Lcom/powermo/input/a/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method

.method private a(IIII)Lcom/powermo/input/a/a;
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/powermo/input/a/a;->a(Lcom/powermo/input/a/b;IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/input/a/g;I)Lcom/powermo/input/a/a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/powermo/input/a/g;->a(I)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/powermo/input/a/g;IIII)Lcom/powermo/input/a/a;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/powermo/input/a/g;->a(IIII)Lcom/powermo/input/a/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;Lcom/powermo/input/c;II)V
    .locals 11

    const v10, 0xff00

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    iget-object v9, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    invoke-virtual {v0, p3, p4}, Lcom/powermo/input/a/i;->a(II)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v8, :cond_0

    and-int/lit16 v0, v8, 0xff

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    and-int v0, v8, v10

    shr-int/lit8 v1, v0, 0x8

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/powermo/input/a/i;->a(Lcom/powermo/input/c;IFFFF)V

    :cond_1
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge v7, v0, :cond_2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v3, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    iget-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v6

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/powermo/input/a/i;->a(Lcom/powermo/input/c;IFFFF)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-eq v8, v0, :cond_3

    const/4 v0, 0x3

    if-eq v8, v0, :cond_3

    and-int/lit16 v0, v8, 0xff

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    :cond_3
    and-int v0, v8, v10

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iget-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    const/high16 v3, 0x7fc0

    const/high16 v4, 0x7fc0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/powermo/input/a/i;->a(Lcom/powermo/input/c;IFFFF)V

    :cond_4
    iget-object v0, p0, Lcom/powermo/input/a/g;->e:Lcom/powermo/input/a/i;

    invoke-virtual {v0}, Lcom/powermo/input/a/i;->a()V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a([Lcom/powermo/input/d;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/input/a/g;->a()V

    return-void
.end method
