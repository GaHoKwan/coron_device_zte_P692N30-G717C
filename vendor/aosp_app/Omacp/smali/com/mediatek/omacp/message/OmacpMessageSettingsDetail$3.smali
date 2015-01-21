.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showUnLockPinDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

.field final synthetic val$dialogUnlockPin:I

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/widget/EditText;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    iput-object p2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->val$editText:Landroid/widget/EditText;

    iput p3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->val$dialogUnlockPin:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 318
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, inputPin:Ljava/lang/String;
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->isPinCorrect([B)Z
    invoke-static {v1, v2}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$200(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail pin unlock failed, inputPin is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    iget v2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->val$dialogUnlockPin:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->val$editText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    return-void

    .line 325
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$302(Z)Z

    .line 327
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->markMessageAsPinUnlock()V
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$400(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    .line 328
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$3;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #calls: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->handleInstall()V
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$100(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)V

    goto :goto_0
.end method
