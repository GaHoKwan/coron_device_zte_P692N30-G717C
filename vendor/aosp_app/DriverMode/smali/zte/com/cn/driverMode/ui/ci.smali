.class final Lzte/com/cn/driverMode/ui/ci;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ci;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ci;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ci;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    const-class v1, Lzte/com/cn/driverMode/ui/DMContactListActivity;

    invoke-static {v0, v1}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->a(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method
