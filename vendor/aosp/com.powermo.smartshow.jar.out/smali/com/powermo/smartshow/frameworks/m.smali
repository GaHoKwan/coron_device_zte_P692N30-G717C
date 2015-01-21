.class Lcom/powermo/smartshow/frameworks/m;
.super Ljava/lang/Object;


# instance fields
.field a:[I

.field b:I

.field final synthetic c:Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;

.field d:I


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;I)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/m;->c:Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/powermo/smartshow/frameworks/m;->b:I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/m;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Stack is full"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/m;->a:[I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    aput p1, v0, v1

    goto :goto_0
.end method

.method a()Z
    .locals 2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Z
    .locals 2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/powermo/smartshow/frameworks/m;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method c()Z
    .locals 2

    iget v0, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/m;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/m;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/m;->c()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/m;->a:[I

    iget v1, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/powermo/smartshow/frameworks/m;->d:I

    aget v0, v0, v1

    goto :goto_0
.end method
