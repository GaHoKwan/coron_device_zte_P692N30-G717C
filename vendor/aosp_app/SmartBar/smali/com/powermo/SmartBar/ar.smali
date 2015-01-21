.class Lcom/powermo/SmartBar/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final a:I

.field b:Landroid/view/View;

.field c:Lcom/powermo/SmartBar/at;

.field d:[I

.field e:[Ljava/lang/Object;

.field final synthetic f:Lcom/powermo/SmartBar/ai;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ai;III)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/powermo/SmartBar/ar;->f:Lcom/powermo/SmartBar/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->d:[I

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->e:[Ljava/lang/Object;

    iput p2, p0, Lcom/powermo/SmartBar/ar;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p3, p4}, Lcom/powermo/SmartBar/ar;->a(ZII)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->f:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->b()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    invoke-virtual {v1, p0, v0}, Lcom/powermo/SmartBar/at;->c(Lcom/powermo/SmartBar/ar;I)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iput-object v2, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    iput-object v2, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    return-void
.end method

.method a(Landroid/view/View;Lcom/powermo/SmartBar/at;)V
    .locals 2

    iput-object p1, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    iput-object p2, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->f:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->b()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    invoke-virtual {v1, p0, v0}, Lcom/powermo/SmartBar/at;->b(Lcom/powermo/SmartBar/ar;I)V

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method a(ZII)V
    .locals 3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->d:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->d:[I

    array-length v0, v0

    if-ne v0, p2, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->e:[Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, p2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-array v0, p2, [I

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->d:[I

    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/powermo/SmartBar/ar;->e:[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->d:[I

    aput p3, v1, v0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->e:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->b:Landroid/view/View;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/ar;->f:Lcom/powermo/SmartBar/ai;

    invoke-virtual {v0}, Lcom/powermo/SmartBar/ai;->b()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->d:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/powermo/SmartBar/ar;->c:Lcom/powermo/SmartBar/at;

    invoke-virtual {v1, p0, v0}, Lcom/powermo/SmartBar/at;->a(Lcom/powermo/SmartBar/ar;I)V

    :cond_0
    return-void
.end method
