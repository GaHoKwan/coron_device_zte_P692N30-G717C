.class Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;
.super Ljava/lang/Object;
.source "CallLogMultipleDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->showDeleteDialog()V
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
    .line 210
    iput-object p1, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    iget-object v0, v0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->mFragment:Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogMultipleDeleteFragment;->deleteSelectedCallItems()V

    .line 213
    iget-object v0, p0, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity$4;->this$0:Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;->updateSelectedItemsView(I)V

    .line 214
    return-void
.end method
