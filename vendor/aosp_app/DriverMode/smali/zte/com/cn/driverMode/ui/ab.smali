.class final Lzte/com/cn/driverMode/ui/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(IZ)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a()Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ab;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(IZ)V

    goto :goto_0
.end method
