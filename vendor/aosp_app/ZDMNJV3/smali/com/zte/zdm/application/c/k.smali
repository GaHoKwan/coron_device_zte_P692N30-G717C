.class Lcom/zte/zdm/application/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/c/e;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/c/e;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/c/k;->a:Lcom/zte/zdm/application/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radioGroup checked id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/zdm/g/b/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0d0033

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/zte/zdm/application/c/k;->a:Lcom/zte/zdm/application/c/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/zdm/application/c/e;->b(Lcom/zte/zdm/application/c/e;I)I

    :cond_0
    const v0, 0x7f0d0034

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/zte/zdm/application/c/k;->a:Lcom/zte/zdm/application/c/e;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/zte/zdm/application/c/e;->b(Lcom/zte/zdm/application/c/e;I)I

    :cond_1
    const v0, 0x7f0d0035

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/zte/zdm/application/c/k;->a:Lcom/zte/zdm/application/c/e;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/zte/zdm/application/c/e;->b(Lcom/zte/zdm/application/c/e;I)I

    :cond_2
    const v0, 0x7f0d0036

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/zte/zdm/application/c/k;->a:Lcom/zte/zdm/application/c/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/zte/zdm/application/c/e;->b(Lcom/zte/zdm/application/c/e;I)I

    :cond_3
    return-void
.end method
