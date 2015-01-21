.class public final Lzte/com/cn/driverMode/ui/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->a(Lzte/com/cn/driverMode/ui/DMPermissionListActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lzte/com/cn/driverMode/ui/ck;->a:Lzte/com/cn/driverMode/ui/DMPermissionListActivity;

    const v3, 0x7f0800d6

    invoke-virtual {v2, v3}, Lzte/com/cn/driverMode/ui/DMPermissionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0800c3

    new-instance v3, Lzte/com/cn/driverMode/ui/cl;

    invoke-direct {v3, p0, v0}, Lzte/com/cn/driverMode/ui/cl;-><init>(Lzte/com/cn/driverMode/ui/ck;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f0800c4

    new-instance v2, Lzte/com/cn/driverMode/ui/cm;

    invoke-direct {v2, p0}, Lzte/com/cn/driverMode/ui/cm;-><init>(Lzte/com/cn/driverMode/ui/ck;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
