.class Lcom/android/mms/ui/AdvancedSearchActivity$2;
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
    .line 145
    iput-object p1, p0, Lcom/android/mms/ui/AdvancedSearchActivity$2;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v5, 0x0

    .line 148
    iget-object v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity$2;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #calls: Lcom/android/mms/ui/AdvancedSearchActivity;->getTodayDate()J
    invoke-static {v7}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$100(Lcom/android/mms/ui/AdvancedSearchActivity;)J

    move-result-wide v3

    .line 149
    .local v3, toDate:J
    iget-object v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity$2;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    #calls: Lcom/android/mms/ui/AdvancedSearchActivity;->getFromDate(J)J
    invoke-static {v7, v3, v4}, Lcom/android/mms/ui/AdvancedSearchActivity;->access$200(Lcom/android/mms/ui/AdvancedSearchActivity;J)J

    move-result-wide v0

    .line 150
    .local v0, fromDate:J
    const-string v7, "Mms/AdvancedSearchActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mCertainTimeText.onFocusChange(): fromDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", toDate = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/mms/ui/AdvancedSearchActivity$2;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    const-class v8, Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 153
    const-string v7, "advanced_query"

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 154
    const-string v7, "begin_date"

    cmp-long v8, v0, v5

    if-lez v8, :cond_0

    .end local v0           #fromDate:J
    :goto_0
    invoke-virtual {v2, v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 155
    const-string v5, "end_date"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 156
    iget-object v5, p0, Lcom/android/mms/ui/AdvancedSearchActivity$2;->this$0:Lcom/android/mms/ui/AdvancedSearchActivity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void

    .restart local v0       #fromDate:J
    :cond_0
    move-wide v0, v5

    .line 154
    goto :goto_0
.end method
