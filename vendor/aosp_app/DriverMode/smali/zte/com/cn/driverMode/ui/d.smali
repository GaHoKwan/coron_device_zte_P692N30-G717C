.class public final Lzte/com/cn/driverMode/ui/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/d;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/d;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/driverMode/ui/d;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/driverMode/ui/d;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lzte/com/cn/driverMode/ui/d;->d:I

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/d;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/d;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/d;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/d;->c:Ljava/lang/String;

    return-void
.end method
