.class Lcom/android/mms/ui/CBMessageListActivity$7;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 606
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$7;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 608
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 609
    packed-switch p2, :pswitch_data_0

    .line 622
    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 612
    :pswitch_0
    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListActivity$7;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mMsgListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/mms/ui/CBMessageListActivity;->access$500(Lcom/android/mms/ui/CBMessageListActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getSelectedItemId()J

    move-result-wide v0

    .line 613
    .local v0, id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/CBMessageListActivity$7;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    #getter for: Lcom/android/mms/ui/CBMessageListActivity;->mQueryHandler:Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/CBMessageListActivity;->access$600(Lcom/android/mms/ui/CBMessageListActivity;)Lcom/android/mms/ui/CBMessageListActivity$MessageListQueryHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/CBMessageListActivity$7;->this$0:Lcom/android/mms/ui/CBMessageListActivity;

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/CBMessageListActivity;->confirmDeleteMessage(JLandroid/content/AsyncQueryHandler;Landroid/content/Context;)V

    .line 616
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method
