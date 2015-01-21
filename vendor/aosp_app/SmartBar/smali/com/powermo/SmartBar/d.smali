.class Lcom/powermo/SmartBar/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/c;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/d;->a:Lcom/powermo/SmartBar/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/powermo/SmartBar/k;Lcom/powermo/SmartBar/k;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/powermo/SmartBar/k;->e()I

    move-result v3

    invoke-virtual {p2}, Lcom/powermo/SmartBar/k;->e()I

    move-result v4

    if-le v3, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/powermo/SmartBar/k;->e()I

    move-result v2

    invoke-virtual {p2}, Lcom/powermo/SmartBar/k;->e()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/powermo/SmartBar/k;

    check-cast p2, Lcom/powermo/SmartBar/k;

    invoke-virtual {p0, p1, p2}, Lcom/powermo/SmartBar/d;->a(Lcom/powermo/SmartBar/k;Lcom/powermo/SmartBar/k;)I

    move-result v0

    return v0
.end method
