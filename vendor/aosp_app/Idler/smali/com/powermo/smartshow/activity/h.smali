.class Lcom/powermo/smartshow/activity/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/activity/a;


# direct methods
.method constructor <init>(Lcom/powermo/smartshow/activity/a;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/activity/h;->a:Lcom/powermo/smartshow/activity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/powermo/smartshow/activity/i;Lcom/powermo/smartshow/activity/i;)I
    .locals 3

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/powermo/smartshow/activity/h;->a:Lcom/powermo/smartshow/activity/a;

    const-string v1, "-"

    invoke-virtual {p1, v1}, Lcom/powermo/smartshow/activity/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/activity/h;->a:Lcom/powermo/smartshow/activity/a;

    const-string v2, "-"

    invoke-virtual {p2, v2}, Lcom/powermo/smartshow/activity/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/powermo/smartshow/activity/a;->a(Lcom/powermo/smartshow/activity/a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/activity/h;->a:Lcom/powermo/smartshow/activity/a;

    invoke-static {v2}, Lcom/powermo/smartshow/activity/a;->f(Lcom/powermo/smartshow/activity/a;)Ljava/text/Collator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/powermo/smartshow/activity/i;

    check-cast p2, Lcom/powermo/smartshow/activity/i;

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/activity/h;->a(Lcom/powermo/smartshow/activity/i;Lcom/powermo/smartshow/activity/i;)I

    move-result v0

    return v0
.end method
