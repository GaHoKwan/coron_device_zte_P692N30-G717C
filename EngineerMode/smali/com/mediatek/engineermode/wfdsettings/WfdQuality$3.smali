.class Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;
.super Ljava/lang/Object;
.source "WfdQuality.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mCbAcsInfo:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->access$400(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 103
    .local v0, newState:Z
    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;

    if-ne v0, v1, :cond_0

    :goto_0
    #setter for: Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I
    invoke-static {v2, v1}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->access$502(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;I)I

    .line 104
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_auto_channel_selection"

    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdQuality$3;->this$0:Lcom/mediatek/engineermode/wfdsettings/WfdQuality;

    #getter for: Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->mAcsInfo:I
    invoke-static {v3}, Lcom/mediatek/engineermode/wfdsettings/WfdQuality;->access$500(Lcom/mediatek/engineermode/wfdsettings/WfdQuality;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    return-void

    .line 103
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method