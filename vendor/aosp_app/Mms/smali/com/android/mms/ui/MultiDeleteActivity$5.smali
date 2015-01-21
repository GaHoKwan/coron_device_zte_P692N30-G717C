.class Lcom/android/mms/ui/MultiDeleteActivity$5;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1185
    const-string v0, "Mms/MultiDeleteActivity"

    const-string v1, "MessageListAdapter.OnDataSetChangedListener.onContentChanged"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/MultiDeleteActivity;->access$2800(Lcom/android/mms/ui/MultiDeleteActivity;)V

    .line 1187
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$1602(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 1188
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$5;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/MultiDeleteActivity;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$3302(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z

    .line 1182
    return-void
.end method
