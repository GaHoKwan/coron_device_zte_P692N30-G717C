.class Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;
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

.field final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;->this$0:Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail;

    iput-object p2, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/mediatek/omacp/message/OmacpMessageSettingsDetail$2;->val$editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method
