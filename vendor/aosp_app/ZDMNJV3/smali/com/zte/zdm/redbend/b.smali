.class Lcom/zte/zdm/redbend/b;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/zte/zdm/redbend/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/redbend/b;->a:I

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/redbend/b;->e:Ljava/util/List;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/redbend/b;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/redbend/b;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/redbend/b;->b:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/redbend/b;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/redbend/b;->c:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/redbend/b;->d:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/redbend/b;->d:I

    return v0
.end method
