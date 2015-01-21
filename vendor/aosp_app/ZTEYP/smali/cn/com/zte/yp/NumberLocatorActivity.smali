.class public Lcn/com/zte/yp/NumberLocatorActivity;
.super Landroid/app/Activity;
.source "NumberLocatorActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/NumberLocatorActivity;->requestWindowFeature(I)Z

    .line 20
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcn/com/zte/yp/NumberLocatorMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcn/com/zte/yp/NumberLocatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcn/com/zte/yp/NumberLocatorActivity;->finish()V

    .line 22
    return-void
.end method
