.class final Lzte/com/cn/driverMode/ui/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/DMDialPadActivity;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/ac;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    const v0, 0x7f0b00b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/ac;->a:Lzte/com/cn/driverMode/ui/DMDialPadActivity;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lzte/com/cn/driverMode/ui/DMDialPadActivity;->a(Ljava/lang/String;)V

    return-void
.end method
