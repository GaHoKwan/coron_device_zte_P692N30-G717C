.class final Lzte/com/cn/driverMode/ui/cm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/ck;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/ck;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/cm;->a:Lzte/com/cn/driverMode/ui/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
