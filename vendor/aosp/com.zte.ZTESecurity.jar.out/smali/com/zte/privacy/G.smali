.class Lcom/zte/privacy/G;
.super Ljava/lang/Object;


# instance fields
.field public items:Ljava/util/List;

.field public type:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/privacy/G;->items:Ljava/util/List;

    iput-object p1, p0, Lcom/zte/privacy/G;->type:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/zte/privacy/G;->visible:Z

    return-void
.end method
