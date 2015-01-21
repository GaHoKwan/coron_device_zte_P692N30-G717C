.class Lcom/mediatek/settings/plugin/RoamingNotify$1;
.super Ljava/lang/Object;
.source "RoamingNotify.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/plugin/RoamingNotify;->showTimeZoneChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/plugin/RoamingNotify;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/plugin/RoamingNotify;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/settings/plugin/RoamingNotify$1;->this$0:Lcom/mediatek/settings/plugin/RoamingNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 102
    const-string v1, "RoamingNotify"

    const-string v2, "Pressed OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify$1;->this$0:Lcom/mediatek/settings/plugin/RoamingNotify;

    #getter for: Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/RoamingNotify;->access$000(Lcom/mediatek/settings/plugin/RoamingNotify;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ct_time_display_mode"

    iget-object v3, p0, Lcom/mediatek/settings/plugin/RoamingNotify$1;->this$0:Lcom/mediatek/settings/plugin/RoamingNotify;

    #getter for: Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I
    invoke-static {v3}, Lcom/mediatek/settings/plugin/RoamingNotify;->access$100(Lcom/mediatek/settings/plugin/RoamingNotify;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.ct.TIME_DISPLAY_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "time_display_mode"

    iget-object v2, p0, Lcom/mediatek/settings/plugin/RoamingNotify$1;->this$0:Lcom/mediatek/settings/plugin/RoamingNotify;

    #getter for: Lcom/mediatek/settings/plugin/RoamingNotify;->mCurrentTime:I
    invoke-static {v2}, Lcom/mediatek/settings/plugin/RoamingNotify;->access$100(Lcom/mediatek/settings/plugin/RoamingNotify;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    iget-object v1, p0, Lcom/mediatek/settings/plugin/RoamingNotify$1;->this$0:Lcom/mediatek/settings/plugin/RoamingNotify;

    #getter for: Lcom/mediatek/settings/plugin/RoamingNotify;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/settings/plugin/RoamingNotify;->access$000(Lcom/mediatek/settings/plugin/RoamingNotify;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 109
    return-void
.end method
