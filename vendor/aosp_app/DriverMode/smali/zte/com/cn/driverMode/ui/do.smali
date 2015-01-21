.class final Lzte/com/cn/driverMode/ui/do;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lzte/com/cn/driverMode/ui/dn;


# direct methods
.method constructor <init>(Lzte/com/cn/driverMode/ui/dn;)V
    .locals 0

    iput-object p1, p0, Lzte/com/cn/driverMode/ui/do;->a:Lzte/com/cn/driverMode/ui/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/do;->a:Lzte/com/cn/driverMode/ui/dn;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/dn;->a:Lzte/com/cn/driverMode/ui/DMSettingsActivity;

    iget-object v0, v0, Lzte/com/cn/driverMode/ui/DMSettingsActivity;->h:Lzte/com/cn/driverMode/service/by;

    const-string v1, "join_ue"

    invoke-virtual {v0, v1, p2}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;Z)V

    return-void
.end method
