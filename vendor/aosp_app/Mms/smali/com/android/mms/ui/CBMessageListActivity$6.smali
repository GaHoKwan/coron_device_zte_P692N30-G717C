.class final Lcom/android/mms/ui/CBMessageListActivity$6;
.super Ljava/lang/Object;
.source "CBMessageListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/CBMessageListActivity;->confirmDeleteMessageDialog(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/mms/ui/CBMessageListActivity$6;->val$listener:Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;

    iput-object p2, p0, Lcom/android/mms/ui/CBMessageListActivity$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/mms/ui/CBMessageListActivity$6;->val$listener:Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/CBMessageListActivity$6;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/CBMessageListActivity$DeleteMessageListener;->setDeleteLockedMessage(Z)V

    .line 596
    return-void
.end method