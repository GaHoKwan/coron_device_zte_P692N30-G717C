.class Lcom/android/mms/ui/ComposeMessageActivity$86;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/HeightChangedLinearLayout$LayoutSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMaxHeight:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 10044
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10045
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method public onLayoutSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 10049
    sub-int v0, p2, p4

    const/16 v1, 0x96

    if-le v0, v1, :cond_1

    .line 10050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSoftKeyBoardShow:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 10055
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->mMaxHeight:I

    if-le p2, v0, :cond_2

    move v0, p2

    :goto_1
    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->mMaxHeight:I

    .line 10056
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingImeChangedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 10057
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingImeChangedObject:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17300(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 10058
    const-string v0, "Mms/compose"

    const-string v2, "onLayoutSizeChanged(): object notified."

    invoke-static {v0, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10059
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10060
    if-eq p2, p4, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 10079
    :cond_0
    :goto_2
    return-void

    .line 10052
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsSoftKeyBoardShow:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17202(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    goto :goto_0

    .line 10055
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->mMaxHeight:I

    goto :goto_1

    .line 10059
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 10063
    :cond_3
    const-string v0, "Mms/compose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutSizeChanged(): mIsLandscape = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10064
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10065
    if-le p2, p4, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSharePanelOrEmoticonPanelShow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromShare:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12700(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowKeyBoardFromEmoticon:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12800(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 10067
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTextEditorHeightInFullScreen()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17400(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_2

    .line 10069
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$86;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$86$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$86$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$86;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method
