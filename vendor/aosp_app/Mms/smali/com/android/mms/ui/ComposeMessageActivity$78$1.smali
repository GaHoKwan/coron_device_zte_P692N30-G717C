.class Lcom/android/mms/ui/ComposeMessageActivity$78$1;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity$78;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageActivity$78;

.field final synthetic val$textString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity$78;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9280
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$78$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$78;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$78$1;->val$textString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 9282
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$78$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$78;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$78$1;->this$1:Lcom/android/mms/ui/ComposeMessageActivity$78;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$78$1;->val$textString:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->insertText(Landroid/widget/EditText;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14900(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    .line 9283
    return-void
.end method
