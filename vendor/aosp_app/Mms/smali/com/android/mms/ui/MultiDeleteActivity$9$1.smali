.class Lcom/android/mms/ui/MultiDeleteActivity$9$1;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity$9;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MultiDeleteActivity$9;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1761
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$9$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$9$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$9;

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity$9;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$9$1;->this$1:Lcom/android/mms/ui/MultiDeleteActivity$9;

    iget-object v1, v1, Lcom/android/mms/ui/MultiDeleteActivity$9;->val$finalSelectSms:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/ui/MultiDeleteActivity;->forwardMessage(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->access$4700(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/ArrayList;)V

    .line 1764
    return-void
.end method
