.class final Lcom/powermo/input/a/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field final synthetic f:Lcom/powermo/input/a/i;


# direct methods
.method private constructor <init>(Lcom/powermo/input/a/i;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/input/a/j;->f:Lcom/powermo/input/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/input/a/i;Lcom/powermo/input/a/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/input/a/j;-><init>(Lcom/powermo/input/a/i;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget v0, p0, Lcom/powermo/input/a/j;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
