.class Lcom/android/email/activity/UIControllerBase$1;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$LocalSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/UIControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/UIControllerBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/UIControllerBase;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$1;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocalSearchFinished(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$1;->this$0:Lcom/android/email/activity/UIControllerBase;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->updateSearchCount(I)V

    .line 147
    return-void
.end method

.method public onMessageListContextChanged(Lcom/android/email/MessageListContext;)V
    .locals 2
    .parameter "newMessageListContext"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$1;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/UIControllerBase;->setListContext(Lcom/android/email/MessageListContext;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMessageListContextChanged replace to a new messageListContext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 156
    return-void
.end method
