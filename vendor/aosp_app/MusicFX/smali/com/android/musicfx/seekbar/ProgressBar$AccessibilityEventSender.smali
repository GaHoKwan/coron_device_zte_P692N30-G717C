.class Lcom/android/musicfx/seekbar/ProgressBar$AccessibilityEventSender;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/seekbar/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityEventSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/musicfx/seekbar/ProgressBar;


# direct methods
.method private constructor <init>(Lcom/android/musicfx/seekbar/ProgressBar;)V
    .locals 0
    .parameter

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/android/musicfx/seekbar/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/musicfx/seekbar/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/musicfx/seekbar/ProgressBar;Lcom/android/musicfx/seekbar/ProgressBar$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1141
    invoke-direct {p0, p1}, Lcom/android/musicfx/seekbar/ProgressBar$AccessibilityEventSender;-><init>(Lcom/android/musicfx/seekbar/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/musicfx/seekbar/ProgressBar$AccessibilityEventSender;->this$0:Lcom/android/musicfx/seekbar/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1144
    return-void
.end method
