.class Lcom/android/mms/ui/ComposeMessageActivity$71;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 8905
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 8907
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getSimInfoList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 8908
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$100(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/mediatek/mms/ext/IMmsCompose;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsCompose;->isDualSendButtonEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8909
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$71;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setCTSendButtonType()Z

    .line 8911
    :cond_0
    return-void
.end method