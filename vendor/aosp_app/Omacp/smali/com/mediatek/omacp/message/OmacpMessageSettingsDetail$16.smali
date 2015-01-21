.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$16;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 1638
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$16;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$16;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1642
    return-void
.end method
