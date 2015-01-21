.class final Lcom/android/mms/ui/SlideshowEditActivity$SlideshowEditorIdler;
.super Ljava/lang/Object;
.source "SlideshowEditActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideshowEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SlideshowEditorIdler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowEditActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideshowEditorIdler;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditActivity$SlideshowEditorIdler;->this$0:Lcom/android/mms/ui/SlideshowEditActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 671
    const/4 v0, 0x0

    return v0
.end method
