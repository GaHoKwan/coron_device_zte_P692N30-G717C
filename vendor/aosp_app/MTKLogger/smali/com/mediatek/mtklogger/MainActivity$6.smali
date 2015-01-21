.class Lcom/mediatek/mtklogger/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/MainActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$6;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 484
    const-string v1, "MTKLogger/MainActivity"

    const-string v2, "Settings button is clicked!"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$6;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const-class v2, Lcom/mediatek/mtklogger/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 486
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$6;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-virtual {v1, v0}, Lcom/mediatek/mtklogger/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 487
    return-void
.end method
