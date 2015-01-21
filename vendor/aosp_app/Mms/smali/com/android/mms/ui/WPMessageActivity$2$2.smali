.class Lcom/android/mms/ui/WPMessageActivity$2$2;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/WPMessageActivity$2;

.field final synthetic val$msgItem:Lcom/android/mms/ui/WPMessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity$2;Lcom/android/mms/ui/WPMessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->this$1:Lcom/android/mms/ui/WPMessageActivity$2;

    iput-object p2, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->val$msgItem:Lcom/android/mms/ui/WPMessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 756
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->val$msgItem:Lcom/android/mms/ui/WPMessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 757
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->val$msgItem:Lcom/android/mms/ui/WPMessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageItem;->mURL:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->checkAndModifyUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 758
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 759
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.browser.application_id"

    iget-object v4, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->this$1:Lcom/android/mms/ui/WPMessageActivity$2;

    iget-object v4, v4, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 763
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->this$1:Lcom/android/mms/ui/WPMessageActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/WPMessageActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 764
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 765
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v3, p0, Lcom/android/mms/ui/WPMessageActivity$2$2;->this$1:Lcom/android/mms/ui/WPMessageActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/WPMessageActivity$2;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    const v4, 0x7f0b0028

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 768
    const-string v3, "Mms/WapPush"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheme "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is not supported!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
