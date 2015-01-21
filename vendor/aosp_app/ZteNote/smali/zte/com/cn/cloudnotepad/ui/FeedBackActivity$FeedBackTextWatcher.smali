.class public Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;
.super Ljava/lang/Object;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FeedBackTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;


# direct methods
.method public constructor <init>(Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;->this$0:Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 158
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, feedbackString:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 160
    .local v1, length:I
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity$FeedBackTextWatcher;->this$0:Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;

    invoke-virtual {v2, v1}, Lzte/com/cn/cloudnotepad/ui/FeedBackActivity;->updateActivity(I)V

    .line 162
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 175
    return-void
.end method
