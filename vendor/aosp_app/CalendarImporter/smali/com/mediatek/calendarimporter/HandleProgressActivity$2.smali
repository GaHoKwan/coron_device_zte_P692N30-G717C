.class Lcom/mediatek/calendarimporter/HandleProgressActivity$2;
.super Ljava/lang/Object;
.source "HandleProgressActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/calendarimporter/HandleProgressActivity;->showAccountListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$302(Lcom/mediatek/calendarimporter/HandleProgressActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account_name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountName:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$300(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, select:Ljava/lang/String;
    const-string v1, "HandleProgressActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAccountListView() Select = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/calendarimporter/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #calls: Lcom/mediatek/calendarimporter/HandleProgressActivity;->addParseRequest()V
    invoke-static {v1}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$000(Lcom/mediatek/calendarimporter/HandleProgressActivity;)V

    .line 171
    iget-object v1, p0, Lcom/mediatek/calendarimporter/HandleProgressActivity$2;->this$0:Lcom/mediatek/calendarimporter/HandleProgressActivity;

    #getter for: Lcom/mediatek/calendarimporter/HandleProgressActivity;->mAccountList:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/mediatek/calendarimporter/HandleProgressActivity;->access$400(Lcom/mediatek/calendarimporter/HandleProgressActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 172
    return-void
.end method
