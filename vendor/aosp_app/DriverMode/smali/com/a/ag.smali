.class public final Lcom/a/ag;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/a/ag;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/a/ag;->b:Ljava/lang/String;

    iput v1, p0, Lcom/a/ag;->c:I

    iput v1, p0, Lcom/a/ag;->d:I

    iput v1, p0, Lcom/a/ag;->e:I

    iput v1, p0, Lcom/a/ag;->f:I

    iput v1, p0, Lcom/a/ag;->g:I

    iput v1, p0, Lcom/a/ag;->h:I

    iput v1, p0, Lcom/a/ag;->i:I

    const/16 v0, -0x71

    iput v0, p0, Lcom/a/ag;->j:I

    return-void
.end method
