.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;
.super Ljava/lang/Object;
.source "OmacpMessageSettingsDetail.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 701
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 704
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 705
    iget-object v1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$8;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    #getter for: Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->mApSettingsListNameChecked:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;->access$800(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 707
    :cond_0
    return-void
.end method
