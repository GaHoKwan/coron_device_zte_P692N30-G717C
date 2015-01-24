.class Lcom/powermo/SmartBar/as;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ai;

.field private b:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Lcom/powermo/SmartBar/ai;)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/SmartBar/as;->a:Lcom/powermo/SmartBar/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/as;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/powermo/SmartBar/ai;Lcom/powermo/SmartBar/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/powermo/SmartBar/as;-><init>(Lcom/powermo/SmartBar/ai;)V

    return-void
.end method


# virtual methods
.method a(I)Lcom/powermo/SmartBar/ar;
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ar;

    iget v2, v0, Lcom/powermo/SmartBar/ar;->a:I

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method a()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/SmartBar/ar;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ar;->a()V

    goto :goto_0
.end method

.method a(ILcom/powermo/SmartBar/at;II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/powermo/SmartBar/as;->a(I)Lcom/powermo/SmartBar/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/as;->a:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v1, p1}, Lcom/powermo/SmartBar/ai;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_0

    new-instance v0, Lcom/powermo/SmartBar/ar;

    iget-object v2, p0, Lcom/powermo/SmartBar/as;->a:Lcom/powermo/SmartBar/ai;

    invoke-direct {v0, v2, p1, p3, p4}, Lcom/powermo/SmartBar/ar;-><init>(Lcom/powermo/SmartBar/ai;III)V

    iget-object v2, p0, Lcom/powermo/SmartBar/as;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/powermo/SmartBar/ar;->a()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p3, p4}, Lcom/powermo/SmartBar/ar;->a(ZII)V

    invoke-virtual {v0, v1, p2}, Lcom/powermo/SmartBar/ar;->a(Landroid/view/View;Lcom/powermo/SmartBar/at;)V

    return-void
.end method
