.class public final Lzte/com/cn/driverMode/service/bb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lzte/com/cn/driverMode/service/bb;->a:I

    iput-object p2, p0, Lzte/com/cn/driverMode/service/bb;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/service/bb;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/bb;->b:Ljava/util/List;

    return-object v0
.end method
