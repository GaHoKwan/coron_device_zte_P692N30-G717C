.class Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;
.super Ljava/lang/Object;
.source "DeviceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/devicemgr/DeviceMgr;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;->this$0:Lcom/mediatek/engineermode/devicemgr/DeviceMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "arg"

    .prologue
    const/4 v3, 0x1

    .line 148
    iget-object v1, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;->this$0:Lcom/mediatek/engineermode/devicemgr/DeviceMgr;

    iget-object v2, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;->this$0:Lcom/mediatek/engineermode/devicemgr/DeviceMgr;

    #getter for: Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->mDmConfigSwitch:I
    invoke-static {v2}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->access$000(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;)I

    move-result v2

    #calls: Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->setSwitchValue(I)V
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/devicemgr/DeviceMgr;->access$100(Lcom/mediatek/engineermode/devicemgr/DeviceMgr;I)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    const-string v1, "interval"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v1, p0, Lcom/mediatek/engineermode/devicemgr/DeviceMgr$1;->this$0:Lcom/mediatek/engineermode/devicemgr/DeviceMgr;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method
