.class Lcom/android/mms/ui/FolderModeSmsViewer$2;
.super Ljava/lang/Object;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/FolderModeSmsViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/FolderModeSmsViewer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v4, 0x0

    .line 611
    const v1, 0x7f0b024d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 612
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Lcom/android/mms/ui/FolderModeSmsViewer$1;)V

    .line 613
    .local v0, l:Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #calls: Lcom/android/mms/ui/FolderModeSmsViewer;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V
    invoke-static {v1, p1, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$100(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/view/ContextMenu;Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V

    .line 614
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$200(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 615
    const/16 v1, 0x18

    const v2, 0x7f0b024c

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 617
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSimCount ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I
    invoke-static {v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$300(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$300(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v1

    if-lez v1, :cond_0

    .line 619
    const/16 v1, 0x1f

    const v2, 0x7f0b0035

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 623
    :cond_0
    const/16 v1, 0x22

    const v2, 0x7f0b00af

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 625
    const/16 v1, 0x11

    const v2, 0x7f0b023d

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 627
    const/16 v1, 0x12

    const v2, 0x7f0b023f

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 630
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$200(Lcom/android/mms/ui/FolderModeSmsViewer;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 631
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer$2;->this$0:Lcom/android/mms/ui/FolderModeSmsViewer;

    #getter for: Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z
    invoke-static {v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->access$400(Lcom/android/mms/ui/FolderModeSmsViewer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 632
    const/16 v1, 0x1d

    const v2, 0x7f0b02d7

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 635
    :cond_2
    const/16 v1, 0x1c

    const v2, 0x7f0b02d6

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_0
.end method
