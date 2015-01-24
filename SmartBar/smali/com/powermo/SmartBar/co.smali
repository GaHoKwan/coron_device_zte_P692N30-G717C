.class Lcom/powermo/SmartBar/co;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/cm;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/cm;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/co;->a:Lcom/powermo/SmartBar/cm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/powermo/SmartBar/co;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->c(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->c()V

    iget-object v0, p0, Lcom/powermo/SmartBar/co;->a:Lcom/powermo/SmartBar/cm;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/SmartBar/co;->a:Lcom/powermo/SmartBar/cm;

    invoke-static {v0}, Lcom/powermo/SmartBar/cm;->c(Lcom/powermo/SmartBar/cm;)Lcom/powermo/SmartBar/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/powermo/SmartBar/cp;->a()V

    iget-object v0, p0, Lcom/powermo/SmartBar/co;->a:Lcom/powermo/SmartBar/cm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/powermo/SmartBar/cm;->a(Lcom/powermo/SmartBar/cm;Z)V

    goto :goto_0
.end method
