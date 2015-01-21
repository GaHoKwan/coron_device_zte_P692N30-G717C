.class final Lzte/com/cn/driverMode/ui/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMContactListActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMContactListActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->b(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/e;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->c(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/service/by;

    move-result-object v1

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v2}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lzte/com/cn/driverMode/ui/e;->c(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v3}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->a(Lzte/com/cn/driverMode/ui/DMContactListActivity;)Lzte/com/cn/driverMode/ui/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lzte/com/cn/driverMode/ui/e;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/w;->a:Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMContactListActivity;->finish()V

    return-void
.end method
