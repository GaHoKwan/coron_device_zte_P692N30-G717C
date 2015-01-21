.class public Lcom/zte/zdm/a/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/Object;

.field private k:Lcom/zte/zdm/a/i;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/zdm/a/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/zdm/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/a/f;->e:I

    return v0
.end method

.method public a(I)Lcom/zte/zdm/a/f;
    .locals 0

    iput p1, p0, Lcom/zte/zdm/a/f;->e:I

    return-object p0
.end method

.method public a(II)Lcom/zte/zdm/a/f;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->k:Lcom/zte/zdm/a/i;

    iput p1, v0, Lcom/zte/zdm/a/i;->a:I

    iget-object v0, p0, Lcom/zte/zdm/a/f;->k:Lcom/zte/zdm/a/i;

    iput p2, v0, Lcom/zte/zdm/a/i;->b:I

    return-object p0
.end method

.method public a(Lcom/zte/zdm/a/i;)Lcom/zte/zdm/a/f;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/f;->k:Lcom/zte/zdm/a/i;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/zte/zdm/a/f;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/f;->j:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/zte/zdm/a/f;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/f;->g:Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/a/f;->f:I

    return v0
.end method

.method public b(I)Lcom/zte/zdm/a/f;
    .locals 0

    iput p1, p0, Lcom/zte/zdm/a/f;->f:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/zte/zdm/a/f;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/f;->h:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/zte/zdm/a/f;
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/a/f;->i:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->i:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->j:Ljava/lang/Object;

    return-object v0
.end method

.method public g()Lcom/zte/zdm/a/i;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/a/f;->k:Lcom/zte/zdm/a/i;

    return-object v0
.end method
