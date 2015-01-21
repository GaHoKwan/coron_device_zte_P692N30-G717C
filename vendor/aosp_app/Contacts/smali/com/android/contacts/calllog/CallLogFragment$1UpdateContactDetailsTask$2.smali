.class Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/contacts/BackScrollManager$ScrollableHeader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->onPostExecute([Lcom/android/contacts/PhoneCallDetails;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;


# direct methods
.method constructor <init>(Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1669
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaximumScrollableHeaderOffset()I
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeader:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$3200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoto:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$3300(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mHeader:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$3200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1685
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mPhoto:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$3300(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v1, v1, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mSeparator:Landroid/view/View;
    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogFragment;->access$3400(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public setOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 1673
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask$2;->this$1:Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    #getter for: Lcom/android/contacts/calllog/CallLogFragment;->mControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/contacts/calllog/CallLogFragment;->access$3000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;

    move-result-object v0

    neg-int v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 1674
    return-void
.end method
