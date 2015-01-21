.class public final Lzte/com/cn/driverMode/service/w;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayList;

.field final synthetic c:Lzte/com/cn/driverMode/service/m;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/service/m;)V
    .locals 1

    iput-object p1, p0, Lzte/com/cn/driverMode/service/w;->c:Lzte/com/cn/driverMode/service/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/service/w;->a:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/w;->b:Ljava/util/ArrayList;

    return-void
.end method
