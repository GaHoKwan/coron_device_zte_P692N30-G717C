.class Lcom/android/contacts/activities/ContactEditorActivity$1;
.super Landroid/os/Handler;
.source "ContactEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/activities/ContactEditorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/activities/ContactEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/activities/ContactEditorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 110
    const/4 v1, 0x0

    .line 111
    .local v1, content:Ljava/lang/String;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 112
    .local v2, contentId:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 114
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/activities/ContactEditorActivity$1;->this$0:Lcom/android/contacts/activities/ContactEditorActivity;

    invoke-virtual {v3, v1, v2}, Lcom/android/contacts/activities/ContactEditorActivity;->onShowToast(Ljava/lang/String;I)V

    .line 117
    return-void
.end method
