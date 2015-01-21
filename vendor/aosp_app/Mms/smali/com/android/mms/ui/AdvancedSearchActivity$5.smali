.class Lcom/android/mms/ui/AdvancedSearchActivity$5;
.super Ljava/lang/Object;
.source "AdvancedSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/AdvancedSearchActivity;->initResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/AdvancedSearchActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/AdvancedSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-wide/16 v3, 0x0

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J
    invoke-static {v1}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$400(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J
    invoke-static {v1}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$500(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J
    invoke-static {v1}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$400(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J
    invoke-static {v3}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$500(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    const v2, 0x7f0b020b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 201
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    const-class v2, Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const-string v1, "advanced_query"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 198
    const-string v1, "begin_date"

    iget-object v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mFromDate:J
    invoke-static {v2}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$400(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 199
    const-string v1, "end_date"

    iget-object v2, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #getter for: Lcom/android/mms/ui/AdvancedSearchActivity;->mToDate:J
    invoke-static {v2}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$500(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$5;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
