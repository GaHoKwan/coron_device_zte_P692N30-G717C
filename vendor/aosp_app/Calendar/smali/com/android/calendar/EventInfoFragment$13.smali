.class Lcom/android/calendar/EventInfoFragment$13;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->setSNSData(Landroid/view/View;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;

.field final synthetic val$accountType:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2197
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$13;->this$0:Lcom/android/calendar/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment$13;->val$accountType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/calendar/EventInfoFragment$13;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2200
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$13;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3200(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$13;->val$accountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/calendar/EventInfoFragment$13;->val$userId:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getPostActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2203
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 2204
    const-string v1, "EventInfoFragment"

    const-string v2, "sns icon clicked, start to post."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$13;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$3300(Lcom/android/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2209
    :goto_0
    return-void

    .line 2207
    :cond_0
    const-string v1, "EventInfoFragment"

    const-string v2, "sns icon clicked, intent is null, can not post."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
