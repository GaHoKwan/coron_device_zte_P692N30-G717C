.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$5;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->initLayoutView(Landroid/content/Context;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$5;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    .line 366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 373
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$5;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->stopPlay()V

    .line 381
    return-void
.end method
