.class Lil;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lhr;


# direct methods
.method private constructor <init>(Lhr;)V
    .locals 0
    .parameter

    .prologue
    .line 1383
    iput-object p1, p0, Lil;->a:Lhr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lhr;Lhs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1383
    invoke-direct {p0, p1}, Lil;-><init>(Lhr;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1385
    check-cast p1, Lie;

    iget-wide v0, p1, Lie;->a:J

    .line 1386
    check-cast p2, Lie;

    iget-wide v2, p2, Lie;->a:J

    .line 1387
    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    .line 1389
    :goto_0
    return v0

    .line 1388
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 1389
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
