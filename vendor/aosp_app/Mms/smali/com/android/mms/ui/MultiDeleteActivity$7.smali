.class Lcom/android/mms/ui/MultiDeleteActivity$7;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->prepareToForwardMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$item:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$7;->val$item:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$7;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$7;->val$item:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->forwardOneMms(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4600(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1730
    return-void
.end method
