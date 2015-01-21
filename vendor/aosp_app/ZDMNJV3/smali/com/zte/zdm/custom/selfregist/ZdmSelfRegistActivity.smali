.class public Lcom/zte/zdm/custom/selfregist/ZdmSelfRegistActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.TEST_REGISTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/zte/zdm/custom/selfregist/ZdmSelfRegistActivity;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zte/zdm/custom/selfregist/ZdmSelfRegistActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
