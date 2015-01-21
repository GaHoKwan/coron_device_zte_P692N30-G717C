.class Lcom/android/mms/ui/CBMessageListActivity$5;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/CBMessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/CBMessageListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$5;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

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
    const/4 v5, 0x0

    .line 503
    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListActivity$5;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListAdapter:Lcom/android/mms/ui/CBMessageListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/CBMessageListActivity;->access$200(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 504
    .local v0, cursor:Landroid/database/Cursor;
    const-string v2, "CBMessageListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu cursor.getPosition() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-gez v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    const v2, 0x7f0b024d

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    move-object v1, p3

    .line 511
    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 512
    .local v1, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-ltz v2, :cond_0

    .line 513
    const v2, 0x7f0b023f

    invoke-interface {p1, v5, v5, v5, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method
