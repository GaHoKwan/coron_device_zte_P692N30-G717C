.class Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$1;
.super Ljava/lang/Object;
.source "ContactsGroupMultiPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;->onPreExecute(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

.field final synthetic val$target:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    iput-object p2, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$1;->val$target:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$1;->this$1:Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 189
    iget-object v0, p0, Lcom/mediatek/contacts/list/ContactsGroupMultiPickerFragment$MoveGroupTask$1;->val$target:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 190
    return-void
.end method
