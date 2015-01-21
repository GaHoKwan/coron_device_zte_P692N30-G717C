.class final Lzte/com/cn/driverMode/ui/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMConfirmActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMConfirmActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/p;->a:Lzte/com/cn/driverMode/ui/DMConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/p;->a:Lzte/com/cn/driverMode/ui/DMConfirmActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->setResult(I)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/p;->a:Lzte/com/cn/driverMode/ui/DMConfirmActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMConfirmActivity;->finish()V

    return-void
.end method
