.class Lcom/android/contacts/calllog/CallLogFragment$6;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/calllog/CallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1955
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$6;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 1958
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$6;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$4000(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1962
    :goto_0
    return v1

    .line 1961
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$6;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->access$4100(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/View;)V

    goto :goto_0
.end method
