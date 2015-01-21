.class Lcom/android/calendar/EventInfoFragment$6;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/EventInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 840
    iput-object p1, p0, Lcom/android/calendar/EventInfoFragment$6;->this$0:Lcom/android/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/calendar/EventInfoFragment$6;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/calendar/EventInfoFragment;->access$3200(Lcom/android/calendar/EventInfoFragment;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/EventInfoFragment$6;->this$0:Lcom/android/calendar/EventInfoFragment;

    #getter for: Lcom/android/calendar/EventInfoFragment;->mEventId:J
    invoke-static {v1}, Lcom/android/calendar/EventInfoFragment;->access$1400(Lcom/android/calendar/EventInfoFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mediatek/calendar/MTKUtils;->sendShareEvent(Landroid/content/Context;J)V

    .line 844
    return-void
.end method
