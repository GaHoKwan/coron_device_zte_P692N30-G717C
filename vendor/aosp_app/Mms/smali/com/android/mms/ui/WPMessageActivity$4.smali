.class Lcom/android/mms/ui/WPMessageActivity$4;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WPMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$4;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$4;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 948
    iget-object v0, p0, Lcom/android/mms/ui/WPMessageActivity$4;->this$0:Lcom/android/mms/ui/WPMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/WPMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/WPMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/WPMessageListAdapter;->notifyDataSetChanged()V

    .line 949
    return-void
.end method
