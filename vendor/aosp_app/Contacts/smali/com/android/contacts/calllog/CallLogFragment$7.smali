.class Lcom/android/contacts/calllog/CallLogFragment$7;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1966
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$7;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$7;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #calls: Lcom/android/contacts/calllog/CallLogFragment;->finishPhoneNumerSelectedActionModeIfShown()Z
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$4000(Lcom/android/contacts/calllog/CallLogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1973
    :goto_0
    return-void

    .line 1972
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$7;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
