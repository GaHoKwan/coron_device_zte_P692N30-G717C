.class Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;
.super Ljava/lang/Object;
.source "WiFiTestActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTestActivity;->access$000(Lcom/mediatek/engineermode/wifi/WiFiTestActivity;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/engineermode/wifi/WiFiStateManager;->disableWiFi()V

    .line 148
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTestActivity$1;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 149
    return-void
.end method
