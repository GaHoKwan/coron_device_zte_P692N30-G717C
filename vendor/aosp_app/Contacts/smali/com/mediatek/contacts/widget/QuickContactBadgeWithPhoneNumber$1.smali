.class Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;
.super Ljava/lang/Object;
.source "QuickContactBadgeWithPhoneNumber.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    iput-object p2, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    #getter for: Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->mIsSipNumber:Z
    invoke-static {v1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->access$000(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const-string v1, "sip_address"

    iget-object v2, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->this$0:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->access$100(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 121
    return-void

    .line 118
    :cond_0
    const-string v1, "phone"

    iget-object v2, p0, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber$1;->val$number:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
