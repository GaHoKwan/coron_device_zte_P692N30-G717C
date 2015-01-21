.class Lcom/android/mms/ui/ManageSimMessages$11;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages;->setUpActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ManageSimMessages;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0
    .parameter

    .prologue
    .line 1316
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1322
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$700(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 1323
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #calls: Lcom/android/mms/ui/ManageSimMessages;->checkDeleteMode()V
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1800(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 1324
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages$11;->this$0:Lcom/android/mms/ui/ManageSimMessages;

    #getter for: Lcom/android/mms/ui/ManageSimMessages;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v0}, Lcom/android/mms/ui/ManageSimMessages;->access$1400(Lcom/android/mms/ui/ManageSimMessages;)Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1328
    return-void
.end method
