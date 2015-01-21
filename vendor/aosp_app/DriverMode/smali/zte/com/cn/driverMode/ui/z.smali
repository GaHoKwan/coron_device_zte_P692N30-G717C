.class final Lzte/com/cn/driverMode/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/z;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "DMDialPadActivity"

    const-string v1, "del onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/z;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/z;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lzte/com/cn/driverMode/ui/z;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->b()Z

    goto :goto_0
.end method
