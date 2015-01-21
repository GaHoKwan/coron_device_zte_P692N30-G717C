.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 287
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    const/4 v1, 0x1

    #setter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mReInstall:Z
    invoke-static {v0, v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$002(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Z)Z

    .line 291
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$1;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleInstall()V
    invoke-static {v0}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    .line 292
    return-void
.end method
