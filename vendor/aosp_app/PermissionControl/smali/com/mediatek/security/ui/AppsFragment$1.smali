.class Lcom/mediatek/security/ui/AppsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/security/ui/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/security/ui/AppsFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/security/ui/AppsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/security/ui/AppsFragment$1;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.mediatek.security.action.DATA_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "AppsFragment"

    const-string v2, "receiver ,re-loading......"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/mediatek/security/ui/AppsFragment$1;->this$0:Lcom/mediatek/security/ui/AppsFragment;

    #calls: Lcom/mediatek/security/ui/AppsFragment;->load()V
    invoke-static {v1}, Lcom/mediatek/security/ui/AppsFragment;->access$000(Lcom/mediatek/security/ui/AppsFragment;)V

    .line 110
    :cond_0
    return-void
.end method
