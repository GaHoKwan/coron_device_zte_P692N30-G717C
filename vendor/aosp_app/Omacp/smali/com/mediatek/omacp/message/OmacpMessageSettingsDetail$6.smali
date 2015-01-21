.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->showCustomDialog()V
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
    .line 666
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 7
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 669
    if-eqz p3, :cond_1

    .line 670
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 676
    :goto_0
    const-string v1, "Omacp/OmacpMessageSettingsDetail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OmacpMessageSettingsDetail mApSettingsListNameChecked is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$900(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 681
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mCustomDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$900(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 689
    :cond_0
    return-void

    .line 672
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$6;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 681
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
