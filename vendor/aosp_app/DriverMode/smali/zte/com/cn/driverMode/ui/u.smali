.class final Lzte/com/cn/driverMode/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMContactListActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/u;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/u;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/u;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;

    invoke-static {p3}, Lzte/com/cn/driverMode/ui/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p3, v0}, Lzte/com/cn/driverMode/ui/e;->a(IZ)V

    const v0, 0x7f0b0019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
