.class Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;
.super Ljava/lang/Object;
.source "OP09ContactDetailEnhancementExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$contentResolver:Landroid/content/ContentResolver;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->this$0:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;

    iput-object p2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$contentResolver:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 199
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 200
    const-string v1, "com.android.phone.extra.slot"

    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSlot(Landroid/content/ContentResolver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 204
    return-void
.end method
