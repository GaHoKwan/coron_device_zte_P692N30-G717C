.class Lcom/android/mms/ui/MultiDeleteActivity$8$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$8;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1742
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$8$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1744
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$8$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$8;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$8;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$8$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$8;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$8;->val$item:Lcom/android/mms/ui/MessageItem;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->forwardOneMms(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4600(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 1745
    return-void
.end method