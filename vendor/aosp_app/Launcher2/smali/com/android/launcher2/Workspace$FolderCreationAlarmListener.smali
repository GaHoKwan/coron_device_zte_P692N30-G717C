.class Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FolderCreationAlarmListener"
.end annotation


# instance fields
.field cellX:I

.field cellY:I

.field layout:Lcom/android/launcher2/CellLayout;

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;II)V
    .locals 0
    .parameter
    .parameter "layout"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 3139
    iput-object p1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3140
    iput-object p2, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    .line 3141
    iput p3, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellX:I

    .line 3142
    iput p4, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellY:I

    .line 3143
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 4
    .parameter "alarm"

    .prologue
    .line 3146
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    new-instance v1, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    iget-object v2, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher2/Launcher;Lcom/android/launcher2/FolderIcon;)V

    #setter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v0, v1}, Lcom/android/launcher2/Workspace;->access$702(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    .line 3149
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellX:I

    iget v2, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 3150
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher2/CellLayout;)V

    .line 3151
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 3152
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    iget-object v1, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    #getter for: Lcom/android/launcher2/Workspace;->mDragFolderRingAnimator:Lcom/android/launcher2/FolderIcon$FolderRingAnimator;
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/FolderIcon$FolderRingAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->showFolderAccept(Lcom/android/launcher2/FolderIcon$FolderRingAnimator;)V

    .line 3153
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->layout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 3154
    iget-object v0, p0, Lcom/android/launcher2/Workspace$FolderCreationAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    .line 3155
    return-void
.end method