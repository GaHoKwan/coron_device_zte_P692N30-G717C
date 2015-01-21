.class final Lcom/android/mms/ui/MessageUtils$9;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->addNumberOrEmailtoContact(Ljava/lang/String;ILandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$REQUEST_CODE:I

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$numberOrEmail:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1880
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$numberOrEmail:Ljava/lang/String;

    iput p2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$REQUEST_CODE:I

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$9;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1884
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1885
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1886
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$numberOrEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1887
    const-string v1, "email"

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$numberOrEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1891
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$REQUEST_CODE:I

    if-lez v1, :cond_1

    .line 1892
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$REQUEST_CODE:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1896
    :goto_1
    return-void

    .line 1889
    :cond_0
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$9;->val$numberOrEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1894
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$9;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
