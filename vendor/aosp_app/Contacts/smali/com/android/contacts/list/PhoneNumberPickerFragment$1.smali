.class Lcom/android/contacts/list/PhoneNumberPickerFragment$1;
.super Landroid/os/Handler;
.source "PhoneNumberPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/list/PhoneNumberPickerFragment;->reloadDataIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/list/PhoneNumberPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 413
    invoke-static {}, Lcom/android/contacts/list/PhoneNumberPickerFragment;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start reloading data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/contacts/list/PhoneNumberPickerFragment$1;->this$0:Lcom/android/contacts/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 415
    return-void
.end method
