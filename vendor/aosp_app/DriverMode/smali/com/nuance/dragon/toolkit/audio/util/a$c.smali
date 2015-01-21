.class abstract Lcom/nuance/dragon/toolkit/audio/util/a$c;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

.field c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

.field private final d:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->a:I

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->d:Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/nuance/dragon/toolkit/audio/util/a$c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->d:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object v1, v0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget-object v1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object v1, v0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_1
    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object v2, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-void
.end method

.method final a(Lcom/nuance/dragon/toolkit/audio/util/a$c;)V
    .locals 1

    iput-object p0, p1, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object p1, v0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->b:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object v0, p1, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/audio/util/a$c;->c:Lcom/nuance/dragon/toolkit/audio/util/a$c;

    return-void
.end method
