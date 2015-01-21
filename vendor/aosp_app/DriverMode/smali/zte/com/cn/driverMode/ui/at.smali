.class final Lzte/com/cn/driverMode/ui/at;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMHelpActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMHelpActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/at;->a:Lzte/com/cn/driverMode/ui/DMHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/at;->a:Lzte/com/cn/driverMode/ui/DMHelpActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMHelpActivity;->finish()V

    return-void
.end method
