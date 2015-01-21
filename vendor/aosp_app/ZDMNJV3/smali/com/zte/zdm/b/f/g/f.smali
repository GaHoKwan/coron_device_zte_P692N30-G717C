.class Lcom/zte/zdm/b/f/g/f;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:[B

.field c:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/zte/zdm/b/f/g/f;->c:Ljava/util/Vector;

    return-void
.end method
