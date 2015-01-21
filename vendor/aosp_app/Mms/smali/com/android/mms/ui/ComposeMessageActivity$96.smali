.class Lcom/android/mms/ui/ComposeMessageActivity$96;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setEmoticon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11307
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 11310
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLatestText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11311
    .local v0, lastText:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLatestText:Landroid/text/Editable;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/Editable;

    move-result-object v3

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Landroid/text/Editable;I)I

    move-result v2

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEmoticonNumber:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18702(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 11312
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->isAddSmileySpans:Z
    invoke-static {v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 11313
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLatestText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mLatestText:Landroid/text/Editable;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12400(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11314
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$96;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setEmoticon(I)V
    invoke-static {v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12500(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 11316
    :cond_0
    return-void
.end method
