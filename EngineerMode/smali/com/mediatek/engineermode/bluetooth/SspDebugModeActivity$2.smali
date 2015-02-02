.class Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;
.super Ljava/lang/Object;
.source "SspDebugModeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity$2;->this$0:Lcom/mediatek/engineermode/bluetooth/SspDebugModeActivity;

    const-class v3, Lcom/mediatek/engineermode/EngineerMode;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method
