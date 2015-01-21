.class Lcom/android/mms/ui/MultiSaveActivity$1;
.super Ljava/lang/Object;
.source "MultiSaveActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiSaveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiSaveActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiSaveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/mms/ui/MultiSaveActivity$1;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 143
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-eqz p2, :cond_0

    .line 144
    check-cast p2, Lcom/android/mms/ui/MultiSaveListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/MultiSaveListItem;->clickListItem()V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$1;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #getter for: Lcom/android/mms/ui/MultiSaveActivity;->mListAdapter:Lcom/android/mms/ui/MultiSaveListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$000(Lcom/android/mms/ui/MultiSaveActivity;)Lcom/android/mms/ui/MultiSaveListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/mms/ui/MultiSaveListAdapter;->changeSelectedState(I)V

    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveActivity$1;->this$0:Lcom/android/mms/ui/MultiSaveActivity;

    #calls: Lcom/android/mms/ui/MultiSaveActivity;->updateActionBarText()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiSaveActivity;->access$100(Lcom/android/mms/ui/MultiSaveActivity;)V

    .line 148
    :cond_0
    return-void
.end method
