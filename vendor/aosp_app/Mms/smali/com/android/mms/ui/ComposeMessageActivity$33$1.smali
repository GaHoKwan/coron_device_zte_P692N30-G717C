.class Lcom/android/mms/ui/ComposeMessageActivity$33$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$33;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$33;

.field final synthetic val$recipients:Lcom/android/mms/data/ContactList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$33;Lcom/android/mms/data/ContactList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4166
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$33$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$33;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$33$1;->val$recipients:Lcom/android/mms/data/ContactList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4168
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$33$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$33;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$33;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$33$1;->val$recipients:Lcom/android/mms/data/ContactList;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5500(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 4169
    return-void
.end method
