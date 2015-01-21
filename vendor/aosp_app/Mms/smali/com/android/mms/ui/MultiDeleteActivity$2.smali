.class Lcom/android/mms/ui/MultiDeleteActivity$2;
.super Ljava/lang/Object;
.source "MultiDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiDeleteActivity;->confirmMultiDeleteMsgDialog(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiDeleteActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity$2;->this$0:Lcom/android/mms/ui/MultiDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultiDeleteActivity$2;->val$listener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iput-object p3, p0, Lcom/android/mms/ui/MultiDeleteActivity$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity$2;->val$listener:Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity$2;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->setDeleteLockedMessage(Z)V

    .line 706
    return-void
.end method
