.class Lcom/android/mms/ui/ComposeMessageActivity$78;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addTextVCardAsync([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$contactsIds:[J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 9274
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->val$contactsIds:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 9277
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Lcom/android/mms/ui/EnhanceEditText;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4000(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/EnhanceEditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, ""

    .line 9278
    .local v1, textVCard:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/android/mms/ui/VCardAttachment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v3}, Lcom/android/mms/ui/VCardAttachment;-><init>(Landroid/content/Context;)V

    .line 9279
    .local v2, tvc:Lcom/android/mms/ui/VCardAttachment;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->val$contactsIds:[J

    invoke-virtual {v2, v3, v1}, Lcom/android/mms/ui/VCardAttachment;->getTextVCardString([JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9280
    .local v0, textString:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$78;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$78$1;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$78$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$78;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9286
    return-void

    .line 9277
    .end local v0           #textString:Ljava/lang/String;
    .end local v1           #textVCard:Ljava/lang/String;
    .end local v2           #tvc:Lcom/android/mms/ui/VCardAttachment;
    :cond_0
    const-string v1, "\n"

    goto :goto_0
.end method
