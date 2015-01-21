.class Lcom/android/email/activity/UIControllerBase$2;
.super Ljava/lang/Object;
.source "UIControllerBase.java"

# interfaces
.implements Lcom/android/email/activity/MessageListFragment$RemoteSearchCallback;


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
    .line 164
    iput-object p1, p0, Lcom/android/email/activity/UIControllerBase$2;->this$0:Lcom/android/email/activity/UIControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteSearchFinished(I)V
    .locals 1
    .parameter "count"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/email/activity/UIControllerBase$2;->this$0:Lcom/android/email/activity/UIControllerBase;

    iget-object v0, v0, Lcom/android/email/activity/UIControllerBase;->mActionBarController:Lcom/android/email/activity/ActionBarController;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/ActionBarController;->updateSearchCount(I)V

    .line 168
    return-void
.end method
