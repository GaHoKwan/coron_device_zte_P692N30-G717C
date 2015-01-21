.class public Lzte/com/cn/driverMode/ui/DMDisturbActivity;
.super Lzte/com/cn/driverMode/ui/DMBaseActivity;


# instance fields
.field protected a:Lzte/com/cn/driverMode/service/by;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 5

    const v4, 0x7f080104

    const/4 v3, 0x0

    iget-boolean v0, p0, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->b:Z

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->a:Lzte/com/cn/driverMode/service/by;

    const v2, 0x7f0800ca

    invoke-virtual {p0, v2}, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->a:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lzte/com/cn/driverMode/service/by;->a(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->a:Lzte/com/cn/driverMode/service/by;

    invoke-virtual {p0, v4}, Lzte/com/cn/driverMode/ui/DMDisturbActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lzte/com/cn/driverMode/service/by;->b(Ljava/lang/String;I)V

    :cond_0
    invoke-super {p0}, Lzte/com/cn/driverMode/ui/DMBaseActivity;->onDestroy()V

    return-void
.end method
