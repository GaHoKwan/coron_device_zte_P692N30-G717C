.class Lcom/powermo/SmartBar/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/ct;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/cv;->a:Lcom/powermo/SmartBar/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/cv;->a:Lcom/powermo/SmartBar/ct;

    invoke-static {v0}, Lcom/powermo/SmartBar/ct;->a(Lcom/powermo/SmartBar/ct;)Lcom/powermo/SmartBar/db;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/db;->a(ILcom/powermo/SmartBar/ct;)V

    return-void
.end method
