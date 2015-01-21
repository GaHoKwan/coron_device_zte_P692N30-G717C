.class public Lcom/zte/zdm/g/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zdm/g/e;->a:Z

    return-void
.end method


# virtual methods
.method protected a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zte/zdm/g/e;->a:Z

    return-void
.end method

.method protected a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zte/zdm/g/e;->a:Z

    return v0
.end method
