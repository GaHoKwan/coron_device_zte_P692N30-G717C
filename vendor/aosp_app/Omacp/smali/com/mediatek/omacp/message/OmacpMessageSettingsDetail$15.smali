.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$15;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->giveInstallationReport()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 1643
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$15;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1646
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$15;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1647
    return-void
.end method