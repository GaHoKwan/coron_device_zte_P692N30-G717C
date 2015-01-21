.class Lcom/android/calendar/CalendarViewAdapter$1;
.super Ljava/lang/Object;
.source "CalendarViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/CalendarViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/CalendarViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/calendar/CalendarViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    iget-object v1, p0, Lcom/android/calendar/CalendarViewAdapter$1;->this$0:Lcom/android/calendar/CalendarViewAdapter;

    #getter for: Lcom/android/calendar/CalendarViewAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/calendar/CalendarViewAdapter;->access$000(Lcom/android/calendar/CalendarViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 83
    return-void
.end method
