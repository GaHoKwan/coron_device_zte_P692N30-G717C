.class public final Lcom/nuance/dragon/toolkit/audio/util/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

.field private b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/util/a;)Lcom/nuance/dragon/toolkit/audio/util/a$c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-object p1
.end method

.method private a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :goto_0
    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    invoke-virtual {v0, p1}, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$c;)Lcom/nuance/dragon/toolkit/audio/util/a$c;
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-object p1
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/util/a;)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget v0, v0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget-object v0, v0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    invoke-virtual {v1}, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/nuance/dragon/toolkit/audio/util/a;)I
    .locals 1

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->d:I

    return v0
.end method

.method static synthetic d(Lcom/nuance/dragon/toolkit/audio/util/a;)Lcom/nuance/dragon/toolkit/audio/util/a$c;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/nuance/dragon/toolkit/audio/util/a$a;
    .locals 3

    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/a$b;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/audio/util/a$b;-><init>()V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V

    new-instance v1, Lcom/nuance/dragon/toolkit/audio/util/a$a;

    iget v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->d:I

    invoke-direct {v1, p0, v0, v2}, Lcom/nuance/dragon/toolkit/audio/util/a$a;-><init>(Lcom/nuance/dragon/toolkit/audio/util/a;Lcom/nuance/dragon/toolkit/audio/util/a$b;I)V

    return-object v1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->a:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nuance/dragon/toolkit/audio/util/a$d;

    invoke-direct {v0, p1}, Lcom/nuance/dragon/toolkit/audio/util/a$d;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/audio/util/a;->a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V

    iget v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a;->d:I

    goto :goto_0
.end method
