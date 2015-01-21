.class Lcom/android/calendar/EventInfoFragment$11;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->updateCustomAppButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    iput-object p2, p0, Lcom/android/calendar/EventInfoFragment$11;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$11;->val$intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_0
    return-void

    .line 1454
    :catch_0
    move-exception v0

    .line 1456
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    iget-object v2, p0, Lcom/android/calendar/EventInfoFragment$11;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/calendar/EventInfoFragment;->access$000(Lcom/android/calendar/EventInfoFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1000a0

    const/16 v4, 0x8

    #calls: Lcom/android/calendar/EventInfoFragment;->setVisibilityCommon(Landroid/view/View;II)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/calendar/EventInfoFragment;->access$2400(Lcom/android/calendar/EventInfoFragment;Landroid/view/View;II)V

    goto :goto_0
.end method
