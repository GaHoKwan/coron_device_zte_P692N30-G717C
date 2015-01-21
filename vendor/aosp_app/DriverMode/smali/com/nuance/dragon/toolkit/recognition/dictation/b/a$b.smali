.class final Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

.field public b:I

.field public c:I

.field final synthetic d:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;


# direct methods
.method private constructor <init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->d:Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    invoke-direct {v0}, Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;-><init>()V

    iput-object v0, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->a:Lcom/nuance/dragon/toolkit/recognition/dictation/a/g;

    iput v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->b:I

    iput v1, p0, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/dragon/toolkit/recognition/dictation/b/a$b;-><init>(Lcom/nuance/dragon/toolkit/recognition/dictation/b/a;)V

    return-void
.end method
