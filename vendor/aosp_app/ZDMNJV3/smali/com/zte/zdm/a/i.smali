.class public Lcom/zte/zdm/a/i;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zte/zdm/a/i;->a:I

    iput p2, p0, Lcom/zte/zdm/a/i;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/a/i;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/a/i;->a:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/zte/zdm/a/i;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/zte/zdm/a/i;->b:I

    return-void
.end method
