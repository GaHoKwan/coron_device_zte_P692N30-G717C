.class Lcom/zte/zdm/application/mmi/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/zte/zdm/application/mmi/c;


# direct methods
.method constructor <init>(Lcom/zte/zdm/application/mmi/c;)V
    .locals 0

    iput-object p1, p0, Lcom/zte/zdm/application/mmi/d;->a:Lcom/zte/zdm/application/mmi/c;

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

    invoke-static {}, Lcom/zte/zdm/application/App;->a()Lcom/zte/zdm/application/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/zdm/application/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/zdm/application/a/a;->a(Landroid/content/Context;)Lcom/zte/zdm/application/a/a;

    move-result-object v0

    const v1, 0x7f0d0004

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/d;->a:Lcom/zte/zdm/application/mmi/c;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/mmi/c;->a(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V

    :cond_0
    const v1, 0x7f0d0005

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/d;->a:Lcom/zte/zdm/application/mmi/c;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/mmi/c;->b(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V

    :cond_1
    const v1, 0x7f0d0006

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/d;->a:Lcom/zte/zdm/application/mmi/c;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/mmi/c;->c(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V

    :cond_2
    const v1, 0x7f0d0007

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/zte/zdm/application/mmi/d;->a:Lcom/zte/zdm/application/mmi/c;

    invoke-static {v1, v0}, Lcom/zte/zdm/application/mmi/c;->d(Lcom/zte/zdm/application/mmi/c;Lcom/zte/zdm/b/b/a;)V

    :cond_3
    return-void
.end method
