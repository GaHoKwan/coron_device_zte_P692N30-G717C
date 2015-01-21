.class Lcom/android/contacts/calllog/CallLogFragment$9;
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
    .line 1985
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment$9;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1988
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment$9;->this$0:Lcom/android/contacts/calllog/CallLogFragment;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;

    iget-object v0, v0, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1989
    return-void
.end method
