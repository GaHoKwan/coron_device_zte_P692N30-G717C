.class Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity$7;->onItemClicked(Lcom/android/contacts/quickcontact/Action;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

.field final synthetic val$action:Lcom/android/contacts/quickcontact/Action;

.field final synthetic val$alternate:Z


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity$7;ZLcom/android/contacts/quickcontact/Action;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iput-boolean p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$alternate:Z

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 740
    :try_start_0
    iget-boolean v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$alternate:Z

    if-eqz v2, :cond_0

    .line 741
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v2}, Lcom/android/contacts/quickcontact/Action;->getAlternateIntent()Landroid/content/Intent;

    move-result-object v1

    .line 742
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x400

    or-int/2addr v2, v3

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 745
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    #calls: Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V
    invoke-static {v2, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V

    .line 758
    return-void

    .line 747
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->val$action:Lcom/android/contacts/quickcontact/Action;

    invoke-interface {v3}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$7$1;->this$1:Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    iget-object v2, v2, Lcom/android/contacts/quickcontact/QuickContactActivity$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const v3, 0x7f0c01f9

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
