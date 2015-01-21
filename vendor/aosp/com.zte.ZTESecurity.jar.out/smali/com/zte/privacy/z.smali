.class public Lcom/zte/privacy/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/zte/privacy/i;


# instance fields
.field public gg:Ljava/util/List;

.field public gh:Ljava/util/List;

.field p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/privacy/z;->p:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Q()V
    .locals 1

    iget v0, p0, Lcom/zte/privacy/z;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zte/privacy/z;->p:I

    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/privacy/z;->e(Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zte/privacy/z;->gh:Ljava/util/List;

    iget v1, p0, Lcom/zte/privacy/z;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zte/privacy/z;->gg:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public push()V
    .locals 1

    iget v0, p0, Lcom/zte/privacy/z;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/privacy/z;->p:I

    return-void
.end method
