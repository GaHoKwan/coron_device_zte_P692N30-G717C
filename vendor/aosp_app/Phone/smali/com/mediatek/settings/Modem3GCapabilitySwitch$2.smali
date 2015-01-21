.class Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;
.super Ljava/lang/Object;
.source "Modem3GCapabilitySwitch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/Modem3GCapabilitySwitch;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    #getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mServiceList:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    invoke-static {v0}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$200(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/Modem3GCapabilitySwitch$2;->this$0:Lcom/mediatek/settings/Modem3GCapabilitySwitch;

    #getter for: Lcom/mediatek/settings/Modem3GCapabilitySwitch;->mCurrent3GSim:J
    invoke-static {v1}, Lcom/mediatek/settings/Modem3GCapabilitySwitch;->access$100(Lcom/mediatek/settings/Modem3GCapabilitySwitch;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 330
    return-void
.end method
