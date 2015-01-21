.class Lcom/zte/zdm/d/d/d;
.super Lcom/zte/zdm/d/d/e;


# instance fields
.field private a:[Ljava/lang/String;

.field private b:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zte/zdm/d/d/e;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/zte/zdm/d/d/d;->b:I

    return-void
.end method

.method private a()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/d/d/d;->a:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/d/d/d;->b()V

    :cond_0
    iget-object v0, p0, Lcom/zte/zdm/d/d/d;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    iget v0, p0, Lcom/zte/zdm/d/d/d;->b:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/zte/zdm/d/d/d;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    iget v1, p0, Lcom/zte/zdm/d/d/d;->b:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/zte/zdm/d/d/d;->a:[Ljava/lang/String;

    invoke-super {p0, v0}, Lcom/zte/zdm/d/d/e;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/zte/zdm/d/d/d;->b:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zte/zdm/d/d/d;->a()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/zte/zdm/d/d/e;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
