.class Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;
.super Landroid/content/BroadcastReceiver;
.source "CooTekSmartdialerOemModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->registerCallerIdResultReceiver(Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

.field private final synthetic val$receiver:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;


# direct methods
.method constructor <init>(Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;->this$0:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;

    iput-object p2, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;->val$receiver:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;

    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v1, "CallerIdResult"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;->val$receiver:Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;

    invoke-interface {v1, p1, p2}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    :cond_0
    return-void
.end method
