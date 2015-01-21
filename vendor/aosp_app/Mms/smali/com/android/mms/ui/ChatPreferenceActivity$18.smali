.class Lcom/android/mms/ui/ChatPreferenceActivity$18;
.super Ljava/lang/Object;
.source "ChatPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ChatPreferenceActivity;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;

.field final synthetic val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ChatPreferenceActivity;Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$18;->this$0:Lcom/android/mms/ui/ChatPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ChatPreferenceActivity$18;->val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iput-object p3, p0, Lcom/android/mms/ui/ChatPreferenceActivity$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/mms/ui/ChatPreferenceActivity$18;->val$listener:Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    iget-object v1, p0, Lcom/android/mms/ui/ChatPreferenceActivity$18;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1291
    return-void
.end method
