.class final Lzte/com/cn/driverMode/ui/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/aa;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "DMDialPadActivity"

    const-string v1, "numButton onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aa;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a()Z

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/aa;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/aa;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b(Ljava/lang/String;)V

    return-void
.end method
