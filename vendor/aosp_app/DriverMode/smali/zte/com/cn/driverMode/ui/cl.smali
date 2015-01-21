.class final Lzte/com/cn/driverMode/ui/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lzte/com/cn/driverMode/ui/ck;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/ck;I)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cl;->b:Lzte/com/cn/driverMode/ui/ck;

    iput p2, p0, Lzte/com/cn/driverMode/ui/cl;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cl;->b:Lzte/com/cn/driverMode/ui/ck;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->c(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/service/by;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/cl;->b:Lzte/com/cn/driverMode/ui/ck;

    iget-object v1, v1, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-static {v1}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/ui/ei;

    move-result-object v1

    iget v2, p0, Lzte/com/cn/driverMode/ui/cl;->a:I

    invoke-virtual {v1, v2}, Lzte/com/cn/driverMode/ui/ei;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cl;->b:Lzte/com/cn/driverMode/ui/ck;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/ui/ei;

    move-result-object v0

    iget v1, p0, Lzte/com/cn/driverMode/ui/cl;->a:I

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/ei;->b(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/cl;->b:Lzte/com/cn/driverMode/ui/ck;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->b(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Lzte/com/cn/driverMode/ui/ei;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/ei;->notifyDataSetChanged()V

    return-void
.end method
