.class Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;
.super Ljava/lang/Object;
.source "SoundRecorderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->playSoundRecord(Landroid/content/Context;Landroid/widget/LinearLayout;Lzte/com/cn/cloudnotepad/utils/ControlsUtils$CONTROL_DATA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iput-object p2, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;->val$context:Landroid/content/Context;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;->this$0:Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView$6;->val$context:Landroid/content/Context;

    #calls: Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->updatePlayDisplay(Landroid/content/Context;)V
    invoke-static {v0, v1}, Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;->access$7(Lzte/com/cn/cloudnotepad/ui/SoundRecorderView;Landroid/content/Context;)V

    .line 402
    return-void
.end method
