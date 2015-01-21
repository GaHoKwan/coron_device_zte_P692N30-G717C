.class Lcom/android/mms/ui/WPMessageActivity$3;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/WPMessageListAdapter$OnDataSetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/WPMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$3;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/WPMessageListAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$3;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #calls: Lcom/android/mms/ui/WPMessageActivity;->startMsgListQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$700(Lcom/android/mms/ui/WPMessageActivity;)V

    .line 804
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$3;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    #calls: Lcom/android/mms/ui/WPMessageActivity;->startUnreadQuery()V
    invoke-static {v0}, Lcom/android/mms/ui/WPMessageActivity;->access$800(Lcom/android/mms/ui/WPMessageActivity;)V

    .line 805
    return-void
.end method

.method public onDataSetChanged(Lcom/android/mms/ui/WPMessageListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$3;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/mms/ui/WPMessageActivity;->mPossiblePendingNotification:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/WPMessageActivity;->access$602(Lcom/android/mms/ui/WPMessageActivity;Z)Z

    .line 800
    return-void
.end method
