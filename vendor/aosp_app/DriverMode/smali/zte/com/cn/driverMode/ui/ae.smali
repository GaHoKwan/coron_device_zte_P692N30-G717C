.class final Lzte/com/cn/driverMode/ui/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ae;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ae;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->b:Lzte/com/cn/driverMode/service/by;

    const-string v1, "show_help"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ae;->a:Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDisclaimerActivity;->finish()V

    return-void
.end method
