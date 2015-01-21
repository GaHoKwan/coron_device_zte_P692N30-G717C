.class Lcom/android/mms/ui/ComposeMessageActivity$87;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->updateTextEditorHeightInFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10086
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$87;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 10088
    const-string v0, "Mms/compose"

    const-string v1, "updateTextEditorHeightInFullScreen()"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10089
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$87;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateFullScreenTextEditorHeight()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$12900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10090
    return-void
.end method
