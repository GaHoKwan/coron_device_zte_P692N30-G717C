.class Lcom/android/mms/ui/MmsPlayerActivity$4;
.super Ljava/lang/Object;
.source "MmsPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MmsPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPlayerActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPlayerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 707
    iput-object p1, p0, Lcom/android/mms/ui/MmsPlayerActivity$4;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 709
    new-instance v2, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;

    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$4;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;-><init>(Lcom/android/mms/ui/MmsPlayerActivity;Lcom/android/mms/ui/MmsPlayerActivity$1;)V

    .line 710
    .local v2, l:Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 712
    .local v1, itemId:I
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$4;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mDirMode:Z
    invoke-static {v3}, Lcom/android/mms/ui/MmsPlayerActivity;->access$600(Lcom/android/mms/ui/MmsPlayerActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 713
    if-nez v1, :cond_0

    .line 728
    :goto_0
    return-void

    .line 717
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 720
    :cond_1
    const-string v3, "MmsPlayerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem Id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$4;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    #getter for: Lcom/android/mms/ui/MmsPlayerActivity;->mListAdapter:Lcom/android/mms/ui/MmsPlayerActivityAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/MmsPlayerActivity;->access$700(Lcom/android/mms/ui/MmsPlayerActivity;)Lcom/android/mms/ui/MmsPlayerActivityAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/mms/ui/MmsPlayerActivityAdapter;->getItem(I)Lcom/android/mms/ui/MmsPlayerActivityItemData;

    move-result-object v0

    .line 722
    .local v0, data:Lcom/android/mms/ui/MmsPlayerActivityItemData;
    if-eqz v0, :cond_2

    .line 723
    iget-object v3, p0, Lcom/android/mms/ui/MmsPlayerActivity$4;->this$0:Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerActivityItemData;->getText()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/MmsPlayerActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;Ljava/lang/CharSequence;)V
    invoke-static {v3, p1, v2, v4}, Lcom/android/mms/ui/MmsPlayerActivity;->access$800(Lcom/android/mms/ui/MmsPlayerActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/MmsPlayerActivity$TextMenuClickListener;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 725
    :cond_2
    const-string v3, "MmsPlayerActivity"

    const-string v4, "getItem null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
