.class public final Lzte/com/cn/driverMode/service/cd;
.super Ljava/lang/Object;


# instance fields
.field protected a:I

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/util/ArrayList;

.field protected e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lzte/com/cn/driverMode/service/cd;->a:I

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cd;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cd;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cd;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cd;->d:Ljava/util/ArrayList;

    iput v1, p0, Lzte/com/cn/driverMode/service/cd;->e:I

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/service/cd;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cd;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lzte/com/cn/driverMode/service/cd;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cd;->g:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cd;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lzte/com/cn/driverMode/service/cd;->a:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cd;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cd;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cd;->c:Ljava/lang/String;

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/service/cd;->f:Ljava/lang/String;

    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cd;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/service/cd;->d:Ljava/util/ArrayList;

    return-object v0
.end method
