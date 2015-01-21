.class public Lcom/zte/privacy/K;
.super Lcom/zte/privacy/ai;


# instance fields
.field private offset:I


# direct methods
.method public constructor <init>(Lcom/zte/privacy/o;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/privacy/ai;-><init>(Lcom/zte/privacy/o;)V

    invoke-super {p0, p2}, Lcom/zte/privacy/ai;->h(I)V

    iput p2, p0, Lcom/zte/privacy/K;->offset:I

    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    invoke-super {p0}, Lcom/zte/privacy/ai;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lcom/zte/privacy/K;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public h(I)V
    .locals 1

    iget v0, p0, Lcom/zte/privacy/K;->offset:I

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/zte/privacy/ai;->h(I)V

    return-void
.end method

.method public r(I)V
    .locals 1

    iget v0, p0, Lcom/zte/privacy/K;->offset:I

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/zte/privacy/ai;->r(I)V

    return-void
.end method
