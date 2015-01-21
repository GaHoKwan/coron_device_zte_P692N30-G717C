.class Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->getClickListenerOfActionBarOKButton()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v0, v0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c008d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$8;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    #calls: Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V
    invoke-static {v0}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->access$300(Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;)V

    goto :goto_0
.end method
