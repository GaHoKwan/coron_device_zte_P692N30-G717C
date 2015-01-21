.class Lcom/mediatek/lbs/em/MyTabActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MyTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/MyTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/MyTabActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/MyTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/mediatek/lbs/em/MyTabActivity$1;->this$0:Lcom/mediatek/lbs/em/MyTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.mediatek.lbs.em.changetab"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 71
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "tab"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 72
    .local v2, tab:I
    iget-object v3, p0, Lcom/mediatek/lbs/em/MyTabActivity$1;->this$0:Lcom/mediatek/lbs/em/MyTabActivity;

    iget-object v3, v3, Lcom/mediatek/lbs/em/MyTabActivity;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 74
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #tab:I
    :cond_0
    return-void
.end method
