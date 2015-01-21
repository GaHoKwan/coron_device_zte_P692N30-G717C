.class final Lzte/com/cn/driverMode/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ad;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/ad;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ad;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(Ljava/lang/String;)V

    return-void
.end method
