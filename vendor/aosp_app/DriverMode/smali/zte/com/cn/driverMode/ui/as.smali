.class final Lzte/com/cn/driverMode/ui/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMGridActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMGridActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/as;->a:Lzte/com/cn/driverMode/ui/DMGridActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    const-string v0, "DMGridActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Position = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/as;->a:Lzte/com/cn/driverMode/ui/DMGridActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->a(Lzte/com/cn/driverMode/ui/DMGridActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/GridView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/com/cn/driverMode/ui/d;

    new-instance v1, Lzte/com/cn/driverMode/service/by;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/as;->a:Lzte/com/cn/driverMode/ui/DMGridActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMGridActivity;->b(Lzte/com/cn/driverMode/ui/DMGridActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lzte/com/cn/driverMode/service/by;-><init>(Landroid/content/Context;)V

    const-string v2, "navigation"

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/as;->a:Lzte/com/cn/driverMode/ui/DMGridActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMGridActivity;->finish()V

    return-void
.end method
