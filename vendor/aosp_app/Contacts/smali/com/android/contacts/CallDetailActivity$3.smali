.class Lcom/android/contacts/CallDetailActivity$3;
.super Ljava/lang/Object;
.source "CallDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/CallDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/CallDetailActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity$3;->this$0:Lcom/android/contacts/CallDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    .line 283
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$3;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/contacts/CallDetailActivity;->access$300(Lcom/android/contacts/CallDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity$3;->this$0:Lcom/android/contacts/CallDetailActivity;

    #calls: Lcom/android/contacts/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/contacts/CallDetailActivity;->access$400(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V

    goto :goto_0
.end method
