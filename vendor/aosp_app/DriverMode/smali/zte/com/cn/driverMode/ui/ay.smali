.class final Lzte/com/cn/driverMode/ui/ay;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHomeActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMHomeActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ay;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ay;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMHomeActivity;->o:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ay;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->a(IZ)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ay;->a:Lzte/com/cn/driverMode/ui/DMHomeActivity;

    invoke-virtual {v0, v2}, Lzte/com/cn/driverMode/ui/DMHomeActivity;->b(Z)V

    return-void
.end method
