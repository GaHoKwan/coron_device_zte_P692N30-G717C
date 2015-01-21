.class Lcom/mediatek/contacts/plugin/OP09ContactsPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "OP09ContactsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin$1;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.mediatek.ct.TIME_DISPLAY_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "received time display mode broadcast message"

    #calls: Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->access$000(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin$1;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;

    #calls: Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->updateTimezoneRawOffset()V
    invoke-static {v0}, Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;->access$100(Lcom/mediatek/contacts/plugin/OP09ContactsPlugin;)V

    .line 121
    :cond_0
    return-void
.end method
