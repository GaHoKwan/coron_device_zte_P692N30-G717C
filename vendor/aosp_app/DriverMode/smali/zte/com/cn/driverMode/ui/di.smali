.class final Lzte/com/cn/driverMode/ui/di;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/di;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/di;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a(Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/di;->a:Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMSelectContactNumberActivity;->a(Ljava/lang/String;)V

    return-void
.end method
