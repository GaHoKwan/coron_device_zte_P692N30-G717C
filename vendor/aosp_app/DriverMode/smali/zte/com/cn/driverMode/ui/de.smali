.class final Lzte/com/cn/driverMode/ui/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/de;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const-string v0, "DMSelectContactNameActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "position:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/de;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "DMSelectContactNameActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "nameString:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/de;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-virtual {v0, p3}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->a(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/de;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNameActivity;->finish()V

    return-void
.end method
